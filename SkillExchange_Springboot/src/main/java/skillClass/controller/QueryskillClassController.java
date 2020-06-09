package skillClass.controller;


import java.sql.Timestamp;
import java.time.Duration;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import members.Model.MemberBean;
import myCollection.model.CollectionBean;
import myCollection.service.MyCollectionService;
import skillClass.model.Chat;
import skillClass.model.ChatRequest;
import skillClass.model.Publish;
import skillClass.model.Skill2;
import skillClass.service.SkillService;



//@RequestMapping("/")
@Controller
public class QueryskillClassController {
	
	ServletContext context;
	
	@Autowired
	public void setContext(ServletContext context) {
		this.context = context;
	}

	SkillService service;	
	MyCollectionService service2;
	
	@Autowired
	public void setService(SkillService service) {
		this.service = service;
	}
	@Autowired
	public void setService2(MyCollectionService service2) {
		this.service2 = service2;
	}
	
	@GetMapping("/query")
	public String skill(Model model,@RequestParam("class") String skillType) {
		
		if (skillType.equals("all")) {		
			model.addAttribute("allSkills",service.allskill());
		}
		else {	
			String TypeCN=("技能"+skillType);
			service.ClassCTRUpdate(TypeCN);
		model.addAttribute("allSkills",service.QuerySkills(skillType));				
		}
	
		return "skillClass/skill";
		
	}
	
	@GetMapping("/query2")
	public String skill(Model model,@RequestParam("class") String skillType,@SessionAttribute("memberBean") MemberBean member) {	
		Integer memberRegNo = member.getMemberRegNo();
		Map<Long, String> collectionGroupsMap = service2.queryCollectionGroups(memberRegNo);
		Map<Integer, List<CollectionBean>> collectionsMap = service2.queryCollections(memberRegNo);
		model.addAttribute("collectionsMap", collectionsMap);
		model.addAttribute("collectionGroupsMap", collectionGroupsMap);
		
		if (skillType.equals("all")) {
			model.addAttribute("allSkills",service.allskill());
		}
		else {
			String TypeCN=("技能"+skillType);
			service.ClassCTRUpdate(TypeCN);
			model.addAttribute("allSkills",service.QuerySkills(skillType));				
		}
		return "skillClass/skill";
		
	}
	
	@GetMapping("publish")
	public String skillDetail(Model model, @RequestParam("num") Integer PublishNo,  @RequestParam("hostid") Integer hostid,
			@SessionAttribute("memberBean") MemberBean member,@RequestParam("status") Integer status) {
		Integer memberRegNo = member.getMemberRegNo();	
		Map<Long, String> collectionGroupsMap = service2.queryCollectionGroups(memberRegNo);	
		Map<Integer, List<CollectionBean>> collectionsMap = service2.queryCollections(memberRegNo);	
		model.addAttribute("collectionsMap", collectionsMap);	
		model.addAttribute("collectionGroupsMap", collectionGroupsMap);
		model.addAttribute("status", status);
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy'年'MM'月'dd'日' a HH:mm");
		List<Publish> skill = service.detailQuery(PublishNo);
		//對話框
		List<ChatRequest> sr = service.selectChatReq(hostid, PublishNo);
		model.addAttribute("reqchat", sr);
		//對話框
		for (Publish ski : skill) {
			String Format = dtf.format(ski.getUpdateTime());
			model.addAttribute("time1", Format);
		}
		service.CTRUpdate(PublishNo);
		model.addAttribute("allSkills", service.detailQuery(PublishNo));
		return "skillClass/skillDetail";
	}
	
	// 對話框用
	@GetMapping(value = "InsertchatReq", produces = { "application/json" })
	public ResponseEntity<ChatRequest> InsertchatReq(Model model, @RequestParam("sendUser") Integer sendUser,
			@RequestParam("sendTo") Integer sendTo, @RequestParam("skillId") Integer skillId) {
		java.sql.Timestamp dateTime = new Timestamp(System.currentTimeMillis());
		ChatRequest chatRequest = new ChatRequest(skillId, sendUser, sendTo, dateTime);
		System.out.println("hello我在這!!");
		ChatRequest result = service.InsertChatReq(chatRequest);
		ResponseEntity<ChatRequest> re = new ResponseEntity<>(result, HttpStatus.OK);
		return re;
	}
	// 後台點擊數比例圖用
	@GetMapping(value = "GetBackendCTR", produces = { "application/json" })
	public ResponseEntity<List<Skill2>> GetBackendCTR(Model model) {
		List<Skill2> list = service.GetBackendCTR();
		ResponseEntity<List<Skill2>> re = new ResponseEntity<>(list, HttpStatus.OK);
		System.out.println(re);
		return re;
	}
	
	@GetMapping(value = "MessageTime", produces = { "application/json" })
	public ResponseEntity<Long> MessageInterval(Model model,@RequestParam("sendUser") String sendUser,
			@RequestParam("sendTo") String sendTo) {
		
		List<Chat> list = service.LogQuery(sendUser, sendTo);
		long msgtime = 301;
		LocalDateTime time1 = LocalDateTime.now(); 
		if (CollectionUtils.isNotEmpty(list)) {
		LocalDateTime time2 = list.get(0).getLogTime();
		Duration duration = Duration.between(time2,time1);
		msgtime = duration.getSeconds();
		}
			
		ResponseEntity<Long> re = new ResponseEntity<>(msgtime, HttpStatus.OK);
		System.out.println("聊天list:"+re);
		return re;
	}
//	@RequestMapping("/index")
//	public String home() {
//		return "/index";
//	}
}
