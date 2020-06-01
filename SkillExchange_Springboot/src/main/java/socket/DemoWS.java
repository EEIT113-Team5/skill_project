package socket;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import javax.annotation.PostConstruct;
import javax.websocket.CloseReason;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import net.sf.json.JSONObject;
import skillClass.dao.SkillDao;
import skillClass.model.Chat;



@Component
@ServerEndpoint("/DemoWS/{sendUser}")
public class DemoWS {

	

//	ApplicationContext appCtx = SpringUtils.getApplicationContext();
//	public  SkillService Scc = SpringUtils.getBean(SkillService.class);
	
	private static final Set<Session> connectedSessions = Collections.synchronizedSet(new HashSet<>());
	// 用户在線數
	private static int onLineCount = 0;
	// 當前的websocket对象
	private static ConcurrentHashMap<String, DemoWS> webSocketMap = new ConcurrentHashMap<>();
	// 当前会话,属于websocket的session
	private Session session;
	// 聊天信息

	// 從client送來
	private String sendUser="";// 當前用戶訊息
	private String toUser;// 接收人
	private Integer sendNo;// 發出訊息會員編號
	private Integer receiveNo;// 接收訊息會員編號
	private String message;// 聊天信息
	private String pic;//聊天圖片
//	private String history;//歷史訊息
	@Autowired
	private SkillDao Dao; 
    public static DemoWS DemoWS;
    
    @PostConstruct
    public void init() {
    	DemoWS = this;
    }
	@OnOpen
	public void onOpen(@PathParam("sendUser") String sendUser, Session userSession) throws IOException {
		connectedSessions.add(userSession); // client連線時將連線session放入set內儲存
		String text = String.format("Session ID = %s, 當前session = %s, 使用者User= %s, connected;", userSession.getId(),userSession.hashCode(), sendUser );
		this.sendUser = sendUser;
		this.session = userSession;
		addOnlineCount();
		List<Chat> history = DemoWS.Dao.LogQuery(sendUser);
		
		if(CollectionUtils.isEmpty(history)) {
			this.session.getAsyncRemote().sendText("沒有歷史紀錄");
//		this.session.getAsyncRemote().sendText(hmsg);
		}
		else {	
			
				System.out.println("歷史訊息處理中");
				 StringBuilder hmsg = new StringBuilder();
				for (int i=0;i<history.size();i++) {
					hmsg.append(history.get(i).getChatLog());															 
					};
					System.out.println(hmsg);
					String hmsg2=hmsg.toString();
				this.session.getAsyncRemote().sendText(hmsg2);							
		}
		
		System.out.println("有新連接加入！當前在線人數為" + getOnlineCount());
		System.out.println(text);
		webSocketMap.put(sendUser, this);// 當前用户的websocket
		// 刷新在線人數
//		for (DemoWS Demows : webSocketMap.values()) {
//			// 使用if判断是要统计人数还是发送消息
//			//如何隔離不同房間
//			if (Demows.session.isOpen()) {
//			    
//				Demows.sendMessage("null", "count", getOnlineCount() + "");
//			}
//		}

		
	}

	@OnMessage
	public void onMessage(Session userSession, String jsonMsg) {
		// 收到訊息時 message
		// 在此可以做分流比如說room number
		JSONObject jsonOject = JSONObject.fromObject(jsonMsg);
		sendNo = Integer.parseInt(jsonOject.getString("sendUserNo"));
		receiveNo = Integer.parseInt(jsonOject.getString("toUserNo"));
		sendUser = jsonOject.getString("sendUser");
		toUser = jsonOject.getString("toUser");
		pic = jsonOject.getString("pic");
		message = jsonOject.getString("message");
		DemoWS user = webSocketMap.get(toUser);
	
		try {
			String img = null;			
			img = pic;
			LocalDateTime currentTime = LocalDateTime.now();		
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy'年'MM'月'dd'日' a HH:mm");		   
			String msg = "<div class='d-flex justify-content-end mb-4'><div class='timetip'><div class='msg_cotainer'>" + message
					+ "<span class='timetiplefttext'>"+dtf.format(currentTime)+"</span></div></div></div>";
			String msg1 = "<div class='d-flex justify-content-start mb-4'><div class='img_cont_msg'><img src=" + img
					+ " class='rounded-circle user_img_msg'></div><div class='timetip'><div class='msg_cotainer'>" + message
					+ "<span class='timetiptext'>"+dtf.format(currentTime)+"</span></div></div></div>";
//		    System.out.println(msg);

			if (user != null) {
				if (user.session.isOpen()) {
					System.out.println("session.isOpen:"+sendNo);
					user.sendMessage(img, "send", message);
					
				} 
			} else {

//				System.out.println("信息存到數據庫");
			};
			
			System.out.println("保存訊息到資料庫");
			userSession.getAsyncRemote().sendText(msg);
			DemoWS.Dao.LogUpdate(sendNo,receiveNo,sendUser,toUser,msg1,currentTime);
			
			
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("Session ID =" + userSession.getId() + " , Message received:" + message);
	}

	@OnClose
	public void onClose(Session userSession, CloseReason reason) {
		connectedSessions.remove(userSession);
		String text = String.format("session ID = %s, disconnected; close code = %d; reason phrase = %s",
				userSession.getId(), reason.getCloseCode().getCode(), reason.getReasonPhrase());
		subOnlineCount();
//		for (DemoWS Demows : webSocketMap.values()) {
//			// 使用if判断是要统计人数还是发送消息
//			try {
//				if (Demows.session.isOpen()) {
//					Demows.sendMessage("null", "count", getOnlineCount() + "");
//				}
//			} catch (IOException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//		}
		System.out.println(text);
	}

	@OnError
	public void onError(Session userSession, Throwable e) {
		System.out.println("Error: " + e.toString());
	}

	public void sendMessage(String img, String type, String message) throws IOException {
		if (type.equals("count")) {

			this.session.getAsyncRemote().sendText("count:" + message);// 在jsp判断是否包含count

		} else {
			LocalDateTime currentTime = LocalDateTime.now();		
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy'年'MM'月'dd'日' a HH:mm");	
			String msg1 = "<div class='d-flex justify-content-start mb-4'><div class='img_cont_msg'><img src=" + img
					+ " class='rounded-circle user_img_msg'></div><div class='timetip'><div class='msg_cotainer'>" + message
					+ "<span class='timetiptext'>"+dtf.format(currentTime)+"</span></div></div></div>";
			System.out.println("sendmess:");
//			DemoWS.Dao.LogUpdate(sendNo,receiveNo,sendUser,toUser,msg1,currentTime);			
			this.session.getAsyncRemote().sendText(msg1);// 提供阻塞式的消息发送方式

			// this.session.getAsyncRemote().sendText(message);//提供非阻塞式的消息传输方式。
		}

	}

	// 获得当前在线人数
	public static synchronized int getOnlineCount() {
		return onLineCount;
	}

	// 新用户
	public static synchronized void addOnlineCount() {
		DemoWS.onLineCount++;
	}

	// 移除退出用户
	public static synchronized void subOnlineCount() {
		DemoWS.onLineCount--;
	}
	  



}
