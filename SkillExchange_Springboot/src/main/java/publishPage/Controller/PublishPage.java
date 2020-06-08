package publishPage.Controller;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;

import members.Model.MemberBean;
import publishCheckPage.Model.PublishBean;
import publishPage.Model.publishAreaBean;
import publishPage.Model.publishCityBean;
import publishPage.Model.publishSelectBean;
import publishPage.Service.iPublishPageService;

@Controller
@SessionAttributes(names= {"publishbean","prePicName"})
public class PublishPage {
	
	@Autowired
	iPublishPageService ipps;
	
	@PostMapping(value = "/publishPage")
	public String publishPage(
			@RequestParam(value="publishPic",required=false) MultipartFile file,
			HttpServletRequest request,
			@RequestParam("publishTitle") String publishTitle,
//			@RequestParam("publishPic") String publishPic,
			@RequestParam("publishDetail") String publishDetail,
			@RequestParam("ownSkill") String ownSkill,
			@RequestParam("wantSkill") String wantSkill,
			@RequestParam("publishArea") String publishArea,
			@RequestParam("City") String City,
			@RequestParam("district") String district,
			@RequestParam("road") String road,
			@RequestParam("publishPlace") String publishPlace,
			@RequestParam("publishMark") String publishMark,
			@RequestParam("skillType") String skillType,
			@RequestParam("skillType2") String skillType2,
			@SessionAttribute("memberBean") MemberBean mBean,
			Model model
			) throws IllegalStateException, IOException{
		Date date = new Date();
		Timestamp updateTime = new java.sql.Timestamp(date.getTime());
		int memberRegNo = mBean.getMemberRegNo();  
		
//		//當下時間
//		long time = date.getTime();
//		
//		//圖片處理
////		String name = UUID.randomUUID().toString().replaceAll("-", "");
//		String imageName = file.getOriginalFilename();
//		String ext = FilenameUtils.getExtension(file.getOriginalFilename());
//		//上傳路徑
//		String filePath = request.getSession().getServletContext().getRealPath("images/");
//		System.out.println(filePath);
//		
//		//重新命名
//		file.transferTo(new File(filePath+time+imageName+"."+ext));
//		
//		String picNameString = "images/"+time+imageName+"."+ext;
//		model.addAttribute("prePicName",picNameString);
		String imageName = file.getOriginalFilename();
		PublishBean pBean = new PublishBean();
		if (imageName == "" || imageName == null) {
			
			String string = (String)model.getAttribute("prePicName");
			System.out.println(string);
			
			pBean = new PublishBean(publishTitle,memberRegNo,publishDetail,publishArea,City,
					district,road,publishPlace,string,ownSkill,wantSkill,updateTime,publishMark,skillType,skillType2,1);
			model.addAttribute("picNameString",string);
			
		}else {
			//當下時間
			long time = date.getTime();
			
			//圖片處理
//			String name = UUID.randomUUID().toString().replaceAll("-", "");
			
			String ext = FilenameUtils.getExtension(file.getOriginalFilename());
			//上傳路徑
			String filePath = request.getSession().getServletContext().getRealPath("images/");
			System.out.println(filePath);
			
			//重新命名
			file.transferTo(new File(filePath+time+imageName+"."+ext));
			
			String picNameString = "images/"+time+imageName+"."+ext;
			model.addAttribute("prePicName",picNameString);
			
			pBean = new PublishBean(publishTitle,memberRegNo,publishDetail,publishArea,City,
					district,road,publishPlace,picNameString,ownSkill,wantSkill,updateTime,publishMark,skillType,skillType2,1);			
			model.addAttribute("picNameString",picNameString);
		}
		model.addAttribute("publishbean",pBean);
		model.addAttribute("publishTitle", publishTitle);
		model.addAttribute("publishPic", imageName);
		model.addAttribute("publishDetail", publishDetail);
		model.addAttribute("ownSkill", ownSkill);
		model.addAttribute("wantSkill", wantSkill);
		model.addAttribute("publishArea", publishArea);
		model.addAttribute("City", City);
		model.addAttribute("district", district);
		model.addAttribute("road", road);
		model.addAttribute("publishPlace", publishPlace);
		model.addAttribute("publishMark", publishMark);
		model.addAttribute("skillType", skillType);
		model.addAttribute("skillType2",skillType2);
		
//		model.addAttribute("picNameString",picNameString);
//		System.out.println(picNameString);
		
		List<publishSelectBean> list = ipps.Skill();
		model.addAttribute("skill", list);
		//判斷是否為空值
		request.setCharacterEncoding("UTF-8");
		
		// 準備存放錯誤訊息的Map物件
		Map<String, String> error = new HashMap<String, String>();
		 
		// 顯示錯誤訊息
		request.setAttribute("error", error);
		if (publishTitle == null || publishTitle.trim().length() == 0) {
			error.put("publishTitle", "(標題必須輸入)");
		}
		if (publishDetail == null || publishDetail.trim().length() == 0) {
			error.put("publishDetail", "(內容必須輸入)");
		}
		if (skillType2 == null || skillType2.trim().length() == 0) {
			error.put("skillType2", "(技能類型必須輸入)");
		}
		if (ownSkill == null || ownSkill.trim().length() == 0) {
			error.put("ownSkill", "(技能必須輸入)");
		}
		if (skillType == null || skillType.trim().length() == 0) {
			error.put("skillType", "(技能類型必須輸入)");
		}
		if (wantSkill == null || wantSkill.trim().length() == 0) {
			error.put("wantSkill", "(技能必須輸入)");
		}
		if (City == null || City.trim().length() == 0) {
			error.put("City", "(刊登城市必須輸入)");
		}
		if (publishPlace == null || publishPlace.trim().length() == 0) {
			error.put("publishPlace", "(希望地點必須輸入)");
		}
		if (!error.isEmpty()) {
			return "publish/PublishPage";
		}
		
		
		return "publish/PublishCheckPage";
	}
	
	@PostMapping(value = "/publishPrev")
	public String publishPrev(
			@SessionAttribute("publishbean") PublishBean pBean,
			Model model) {
		
		model.addAttribute("publishTitle", pBean.getPublishTitle());
		model.addAttribute("publishPic", pBean.getPublishPic());
		model.addAttribute("publishDetail", pBean.getPublishDetail());
		model.addAttribute("ownSkill", pBean.getOwnSkill());
		model.addAttribute("wantSkill", pBean.getWantSkill());
		model.addAttribute("publishArea", pBean.getPublishArea());
		model.addAttribute("City", pBean.getCity());
		model.addAttribute("district", pBean.getDistrict());
		model.addAttribute("road", pBean.getRoad());
		model.addAttribute("publishPlace", pBean.getPublishPlace());
		model.addAttribute("publishMark", pBean.getPublishMark());
		model.addAttribute("skillType", pBean.getSkillType());
		model.addAttribute("skillType2",pBean.getSkillType2());
		model.addAttribute("publishPic",pBean.getPublishPic());
		

		
		List<publishSelectBean> list = ipps.Skill();
		List<publishAreaBean> area = ipps.Area();
		List<publishCityBean> city = ipps.City();
		
		model.addAttribute("skill", list);
		model.addAttribute("area", area);
		model.addAttribute("city", city);
		
		
		return "publish/PublishRrev";
	}
	
	@GetMapping(value = "/PublishMgmt")
	public String allPublish(Model model) {
		
		List<PublishBean> allList = ipps.allPublish();
		
		for (PublishBean publishBean : allList) {
			System.out.println(publishBean.getStatus());
		}
		
		Gson gson = new Gson();
		String allString = gson.toJson(allList);
		model.addAttribute("allString",allString);
		
		model.addAttribute("allList",allList);
		
		return "publish/PublishMgmt";
	}
}
