
package members.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import members.Model.MemberBean;
import members.Service.LoginService;
import members.Service.RegisterService;
import members.Service.UpdateService;

@Controller
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	HttpSession httpSession;
	@Autowired
	LoginService ls;
	
	@Autowired
	UpdateService us;
	
	@Autowired
	RegisterService rs;
	
	@GetMapping(value = "/reviseMember")
	public String showDataForm(HttpServletRequest request, 
			HttpServletResponse response, Model model)throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");

		httpSession = request.getSession();
		
		MemberBean member = (MemberBean)httpSession.getAttribute("memberBean");
		model.addAttribute(member);
		
		return "members/update";
	}
	
	
//	@PostMapping(value = "/reviseMember")
//	public void updateMember(HttpServletRequest request, 
//			HttpServletResponse response, Model model,
//			@RequestParam(value="memberPic",required=false) MultipartFile file
//			) throws ServletException, IOException {
//
//		request.setCharacterEncoding("UTF-8");
//		Map<String, String> errorMsg = new HashMap<String, String>();
//		Map<String, String> OKmsg = new HashMap<String, String>();
//
//		httpSession = request.getSession();
//		request.setAttribute("MsgMap", errorMsg);
//		httpSession.setAttribute("MsgOK", OKmsg);
//		
//		String memberAcc = request.getParameter("memberAcc");
//		String memberName = request.getParameter("memberName");
//		String memberNic = request.getParameter("memberNic");
//		String memberPwd = request.getParameter("memberPwd");
//		String checkpwd = request.getParameter("checkpwd");
//		String memberPhone = request.getParameter("memberPhone");
//		String memberMail = request.getParameter("memberMail");
//		String memberAddr = request.getParameter("memberAddr");
//		
//		String imageName = file.getOriginalFilename();
//		String ext = FilenameUtils.getExtension(file.getOriginalFilename());
//		
//		//上傳路徑
//		String filePath = request.getSession().getServletContext().getRealPath("images/");
//		System.out.println(filePath);
//		
//		//重新命名
//		file.transferTo(new File(filePath+imageName+"."+ext));
//		String memberPic = "images/"+imageName+"."+ext;
//		
//		try {
//			
//			boolean accIstrue = us.accIstrue(memberAcc);
//			
//			if(accIstrue) {
//				return;
//			}
//			
//		}catch(Exception e) {
//			e.printStackTrace();
//			
//		}
//		
//		
//	}


}
