package members.Controller;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import members.Model.CheckMailBean;
import members.Model.MemberBean;
import members.Model.MemberDao;
import members.Service.CheckMailService;
import members.Service.RegisterService;

@Controller
//@WebServlet("/register.do")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	HttpSession httpSession;
	@Autowired
	RegisterService service;
	@Autowired
	CheckMailService mailService;
	@Autowired
	MemberDao memberDao;
	
	@GetMapping(value = "/goUse")
	public String goUse(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		httpSession = request.getSession();
		
		//收到驗證碼
		request.setCharacterEncoding("UTF-8");
		String captcha = request.getParameter("numer");
		String seq = request.getParameter("op");
		
		Integer checkMailNo = Integer.parseInt(seq);
		
		//利用驗證碼去資料庫查找相同驗證碼
		CheckMailBean checkMailBean = mailService.selectCheckMailBeanByCaptcha(captcha, checkMailNo);
		
		// boolean statusIsN = mailService.checkCaptcha(captcha);
		boolean statusIsN = false;
		if (checkMailBean != null) {
			if ("N".equals(checkMailBean.getCheckStatus())) {
				statusIsN = true;
			}
			// statusIsN = "N".equals(checkBean.getCheckStatus());
		}
			
		// 檢核資料庫有此驗證CheckStatus
		// 1.可能驗證過了
		// 2.可能很久都沒驗證
		// if(狀態N)到member資料表更新狀態else(狀態Y)回滾錯誤訊息或跳已驗證過
		Map<String, String> msgOK = new HashMap<String, String>();
		httpSession.setAttribute("MsgOK", msgOK);
		
		if (checkMailBean == null) {
			msgOK.put("message", "無此資料");
		} else if(statusIsN) {
			try {
				mailService.updateStatus(captcha, checkMailNo);
				memberDao.updateStatus(checkMailBean.getMemberMail());
				msgOK.put("message", "驗證成功");
			} catch (Exception e) {
				e.printStackTrace();
				msgOK.put("message", "驗證失敗");
			}
		} else {
			msgOK.put("message", "已驗證");
		}
		
		return "index";
	}

	@GetMapping(value = "/registerInit")
	public String registerInit(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		return "members/register";
	}

	@PostMapping(value = "/registerCheck")
	public String registerCheck(HttpServletRequest request, 
			HttpServletResponse response, Model model,
			@RequestParam(value="memberPic",required=false) MultipartFile file
			) throws ServletException, IOException {
		
		//設定收到的請求編碼UTF-8
		request.setCharacterEncoding("UTF-8");
		
		//設一個session物件(容器)放收到的請求Session
		httpSession = request.getSession();
		 
		// 準備存放錯誤訊息的Map物件
		Map<String, String> errorMsg = new HashMap<String, String>();
		Map<String, String> oKmsg = new HashMap<String, String>();
		 
		// 顯示錯誤訊息
		request.setAttribute("errorMsg", errorMsg);
		httpSession.setAttribute("OKMsg", oKmsg);
		
		// 讀取使用者所輸入，由瀏覽器送來的 memberAcc 欄位內的資料，注意大小寫
		String memberAcc = request.getParameter("memberAcc");
		
		// 讀取使用者所輸入，由瀏覽器送來的 memberPwd 欄位內的資料，注意大小寫
		String memberPwd = request.getParameter("memberPwd");
		
		// 讀取使用者所輸入，由瀏覽器送來的 memberPwd 欄位內的資料，注意大小寫
		String checkpwd = request.getParameter("checkpwd");
		
		// 讀取使用者所輸入，由瀏覽器送來的 memberName 欄位內的資料
		String memberName = request.getParameter("memberName");
		
		// 讀取使用者所輸入，由瀏覽器送來的 memberNic 欄位內的資料
		String memberNic = request.getParameter("memberNic");
		
		// 讀取使用者所輸入，由瀏覽器送來的 memberSex 欄位內的資料
		String memberSex = request.getParameter("memberSex");
		
		// 讀取使用者所輸入，由瀏覽器送來的 memberBirth 欄位內的資料
		String memberBirth = request.getParameter("memberBirth");
		
		// 讀取使用者所輸入，由瀏覽器送來的 memberPhone 欄位內的資料
		String memberPhone = request.getParameter("memberPhone");
		
		// 讀取使用者所輸入，由瀏覽器送來的 memberMail 欄位內的資料
		String memberMail = request.getParameter("memberMail");
		
		// 讀取使用者所輸入，由瀏覽器送來的 memberAddr 欄位內的資料
		String memberAddr = request.getParameter("memberAddr");
		
		// 讀取使用者所輸入，由瀏覽器送來的 memberCountry 欄位內的資料
		String memberCountry = request.getParameter("memberCountry");
		
		// 讀取使用者所輸入，由瀏覽器送來的 memberInSkill 欄位內的資料
		String memberInSkill = request.getParameter("memberInSkill");
		
		// 讀取使用者所輸入，由瀏覽器送來的 infoSource 欄位內的資料
		String infoSource = request.getParameter("infoSource");
		
		// 讀取使用者所輸入，由瀏覽器送來的 memberPic 欄位內的資料
		// String memberPic = request.getParameter("memberPic");
		
		//進行必要的資料轉換
		java.sql.Date dateB = null;
		if (memberBirth != null && memberBirth.trim().length() > 0 ) {
			try {
				dateB = java.sql.Date.valueOf(memberBirth);
			} catch (Exception e) {
				errorMsg.put("memberBirth", "(生日格式錯誤，請重新輸入)");
			}
		}
		
		//圖片處理
//		String name = UUID.randomUUID().toString().replaceAll("-", "");
		String imageName = file.getOriginalFilename();
		String ext = FilenameUtils.getExtension(file.getOriginalFilename());
		
		//上傳路徑
		String filePath = request.getSession().getServletContext().getRealPath("images/");
		System.out.println(filePath);
		
		//重新命名
		file.transferTo(new File(filePath+imageName+"."+ext));
		String memberPic = "images/"+imageName+"."+ext;
		
		//檢查使用者輸入資料
		if (memberAcc == null || memberAcc.trim().length() == 0) {
			errorMsg.put("memberAcc", "(帳號欄必須輸入)");
		}
		if (memberPwd == null || memberPwd.trim().length() == 0) {
			errorMsg.put("memberPwd", "(密碼欄必須輸入)");
		}
		if (checkpwd == null || checkpwd.trim().length() == 0 || !checkpwd.equals(memberPwd)) {
			errorMsg.put("checkpwd", "(確認密碼欄必須輸入)");
		}
		if (memberName == null || memberName.trim().length() == 0) {
			errorMsg.put("memberName", "(姓名欄必須輸入)");
		}
		if (memberNic == null || memberNic.trim().length() == 0) {
			errorMsg.put("memberNic", "(會員暱稱必須輸入)");
		}
		if (memberMail == null || memberMail.trim().length() == 0) {
			errorMsg.put("memberMail", "(信箱欄必須輸入)");
		}
		if (memberSex == null || memberSex.trim().length() == 0) {
			errorMsg.put("memberSex", "(性別欄必須輸入)");
		}
		if (memberAddr == null || memberAddr.trim().length() == 0) {
			errorMsg.put("memberAddr", "(地址欄必須輸入)");
		}
		if (memberPhone == null || memberPhone.trim().length() == 0) {
			errorMsg.put("memberPhone", "(電話欄必須輸入)");
		}
		if (!errorMsg.isEmpty()) {
//			RequestDispatcher rd = request.getRequestDispatcher("/register.jsp");
//			rd.forward(request, response);

			return "members/register";
		}
		try {
			// MemberBean mbean = service.checkEmail(memberMail);
			boolean emailRegistered = service.emailIsRegistered(memberMail);
			
//			檢核資料庫有無此帳號email重複
			// if(mbean != null) {
			if(emailRegistered) {
//todo email已被註冊alert
//				RequestDispatcher rd = request.getRequestDispatcher("/register.jsp");
//				rd.forward(request, response);
				return "members/register";
			}
			
			MemberBean mbean = new MemberBean(null, memberAcc, memberPwd, 
												"0",0, 
												memberName, memberNic, memberSex, 
											   dateB, memberPhone, memberCountry, 
											   memberAddr, memberMail, memberPic, 
											   null, null, 
											   null, memberInSkill, null, infoSource);
			
			MemberBean result = service.saveMember(mbean);
			
//			檢核有無新增成功
			if(result == null) {
//				RequestDispatcher rd = request.getRequestDispatcher("/register.jsp");
//				rd.forward(request, response);
				return "members/register";
			}
			
//			// 1 
//			CheckMailBean checkBean = new CheckMailBean (null, memberMail, "", "0", null, null);
//			checkBean = mailService.generateCaptcha(checkBean);
//			checkBean.getCaptcha();
			
			// 2
			//取得驗證碼 
			String newCaptcha = mailService.getNewCaptcha();
			//驗證碼發送日期
			java.sql.Timestamp sendTime = new Timestamp(System.currentTimeMillis());
			//驗證碼期限
			Calendar cal = Calendar.getInstance();
			cal.setTime(sendTime);
			cal.add(Calendar.DAY_OF_WEEK, 1);
			java.sql.Timestamp dateLine = new Timestamp(cal.getTime().getTime()); 
			/* or 
			 dateLine.setTime(cal.getTime().getTime()); 
			 */
			//把驗證碼塞到Bean
			CheckMailBean checkBean = new CheckMailBean (null, memberMail, newCaptcha, "N", sendTime, dateLine);
			//儲存到資料庫
			mailService.saveCheckMail(checkBean);
			//寄發驗證碼
			mailService.sendCaptchaMail(checkBean);
			 
		} catch(SQLException e) {
			e.printStackTrace();
			
		} catch (ParseException e) {
			e.printStackTrace();
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		oKmsg.put("registermessage", "加入會員成功! 請到信箱收驗證信，驗證帳號 ");
		return "members/login";
//		response.sendRedirect(request.getContextPath()+"/index.jsp");
	}

}
		
		
		
		
/*		
		MemberDao mem = new MemberDao(null, memberAcc, memberPwd, "Y", 0, memberName, 
				memberNic, memberSex, date, memberPhone, "", memberAddr, memberMail, null, null, 
				null, null, null, 0, null);
		
		// 呼叫MemberDao的saveMember方法
		RegisterService registerService = new RegisterService();
		int n = registerService.saveMember(mem);
		if (n == 1) {
			response.sendRedirect(request.getContextPath()+"/index.jsp");
			return;
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("/register.jsp");
			rd.forward(request, response);
			errorMsg.put("RegisterErrorMsg", "新增錯誤");
			return;
		}
	}
	
}

*/