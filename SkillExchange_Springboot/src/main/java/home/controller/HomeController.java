package home.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import comment.bean.CommentBean;
import comment.service.CommentService;
import publishCheckPage.Model.PublishBean;
import publishPage.Service.iPublishPageService;

@Controller
@SessionAttributes(names = { "publish" }) // 可以撈前五筆使用者的心得分享
public class HomeController {

	@Autowired
	CommentService commentServiceIMPL;
	
	@Autowired
	iPublishPageService ipps;
	
	Date date1 = new Date();

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Model model) {
		List<CommentBean> comments = commentServiceIMPL.publishComment();
		model.addAttribute("publish", comments);

		// 取得現在時間
		long time1 = date1.getTime();

		List<PublishBean> publishBeans = ipps.allPublish();
		for (PublishBean publishBean : publishBeans) {

			// 計算日期差
			int days = 30 - (int) ((time1 - publishBean.getUpdateTime().getTime()) / (1000 * 3600 * 24));
			System.out.println(days);

			if (days <= 0) {
				int pubNo = publishBean.getPublishNo();
				ipps.timeout(pubNo);
			}
		}
		return "index";
	}

	@GetMapping(value = "/Promotion")
	public String Promotion(Model model) {
		return "promotion/catalogmulti";
	}
}
