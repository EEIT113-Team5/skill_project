package skillClass.controller;


import java.sql.Timestamp;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

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
import skillClass.model.ChatRequest;
import skillClass.model.Publish;
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
			model.addAttribute("allSkills",service.QuerySkills(skillType));				
		}
		return "skillClass/skill";
		
	}
	
	@GetMapping("publish")
	public String skillDetail(Model model, @RequestParam("num") Integer PublishNo,  @RequestParam("hostid") Integer hostid,
			@SessionAttribute("memberBean") MemberBean member) {
		Integer memberRegNo = member.getMemberRegNo();	
		Map<Long, String> collectionGroupsMap = service2.queryCollectionGroups(memberRegNo);	
		Map<Integer, List<CollectionBean>> collectionsMap = service2.queryCollections(memberRegNo);	
		model.addAttribute("collectionsMap", collectionsMap);	
		model.addAttribute("collectionGroupsMap", collectionGroupsMap);
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
		System.out.println(" getCustomers...01-15");
		System.out.println(PublishNo);
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
	

//	@RequestMapping("/index")
//	public String home() {
//		return "/index";
//	}
}
