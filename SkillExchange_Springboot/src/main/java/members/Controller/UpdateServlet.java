
package members.Controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import members.Model.MemberBean;
import members.Service.UpdateService;

@Controller
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	HttpSession httpSession;

	@Autowired
	UpdateService updateService;
	
	@GetMapping(value = "/reviseMember")
	public String showDataForm(HttpServletRequest request, 
			HttpServletResponse response, Model model)throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");

		httpSession = request.getSession();
		
		MemberBean member = (MemberBean)httpSession.getAttribute("memberBean");
		
		Integer memberRegNo = member.getMemberRegNo();
		MemberBean reloadBean = updateService.getByRegNo(memberRegNo);
		
		model.addAttribute(reloadBean);
		
		return "members/updateMember";
	}

	@PostMapping(value = "/modifyMember")
	public String modify(@ModelAttribute("MemberBean")MemberBean mbean,
							Model model, HttpServletRequest request) throws Exception {
		
		request.setCharacterEncoding("UTF-8");
		httpSession = request.getSession();
//	卉加	
		Map<String, String> errorMsg = new HashMap<String, String>();
		Map<String, String> oKmsg = new HashMap<String, String>();
		
		httpSession = request.getSession();
		request.setAttribute("ErrorMsg", errorMsg);
		httpSession.setAttribute("OKMsg", oKmsg);
//		卉加			
		int updateNum = updateService.updatePart(mbean);
		
		if (updateNum != 0) {
			reloadMemberBean(mbean);
			oKmsg.put("updatemessage", "修改成功");
		}
		
		return "index" ;
	}
	
	private void reloadMemberBean(MemberBean mbean) {
		Integer memberRegNo = mbean.getMemberRegNo();
		MemberBean reloadBean = updateService.getByRegNo(memberRegNo);
		httpSession.setAttribute("memberBean", reloadBean);
	}

}
