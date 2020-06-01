package messageAnn.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import members.Model.MemberBean;
import messageAnn.model.messageAnnBean;
import messageAnn.service.imessageAnnService;
import myPublish.Model.MyPublishBean;

@Controller
public class messageAnnController {

	@Autowired
	imessageAnnService imsgs;
	
	@GetMapping(value = "/MessageAnn")
	public messageAnnBean messageSave(@RequestParam("message") String message,Model model){
		
		System.out.println("我我我我:"+message);
		
		Date date = new Date();
		java.sql.Date annTime = new java.sql.Date(date.getTime());
		
		messageAnnBean msgBean = new messageAnnBean(message,annTime);
		imsgs.saveMessage(msgBean);
		
		return msgBean;
	}
//	@GetMapping(value = "/OutputLineChart", produces= {"application/json"} )
//	public ResponseEntity<List<LChartBean>> OutputLineChart(@RequestParam String yearmonths, Model model) {
//		List<LChartBean> list = commentServiceIMPL.getLineChart(yearmonths);
//		ResponseEntity<List<LChartBean>> re  = new ResponseEntity<>(list, HttpStatus.OK);
//		return re;
//	}
	
	@RequestMapping(value = "/CallMessageAnn", produces= {"application/json"},method = RequestMethod.GET)
	public ResponseEntity<List<messageAnnBean>> callMessage(Model model){
		
		List<messageAnnBean> messList = imsgs.callMessage();
		
		System.out.println("HEBE");
		
		System.out.println("222:"+messList.get(0).getAnntime());
		ResponseEntity<List<messageAnnBean>> re  = new ResponseEntity<>(messList, HttpStatus.OK);
  		return re;

	}
	
	@GetMapping(value = "/msgAnnImfor")
	public String myPublishImfor(@RequestParam("msgid") String msgid,
			Model model){
		
		//公告內容
		int msid = Integer.parseInt(msgid);
		List<messageAnnBean> msgAnnImfor;
		msgAnnImfor = imsgs.msgAnnImfor(msid);
		
		String[] msgList = msgAnnImfor.get(0).getMessage().split("&&&");
		
		model.addAttribute("msgtitle",msgList[1]);
		model.addAttribute("msgdetail",msgList[0]);
			
			return "messageAnn/messageAnnImfor";			
		}
	
	
}
