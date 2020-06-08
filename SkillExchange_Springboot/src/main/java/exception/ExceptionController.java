package exception;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;



@ControllerAdvice
public class ExceptionController {
	@ExceptionHandler(Exception.class)
	public String processException() {
		return "errorpage";
	}
//	@ExceptionHandler(value = Exception.class)
//	public ModelAndView exception(Exception ex,WebRequest request){
//		ModelAndView modelAndView = new ModelAndView();
//		modelAndView.addObject("errorSomething","somerror");
//		modelAndView.setViewName("error");
//		return modelAndView;
//	}
	//如果我們要讓所有的@RequestMapping擁有此鍵值
//	@ModelAttribute
//	public void addAttribute(Model md){
//		md.addAttribute("message","你可以設定一些錯誤訊息");
//	}	
}
