package vn.itwork.ctrl;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="login")
public class Login {
	
	 @RequestMapping(value = { "/",""}, method = RequestMethod.GET)
	    public ModelAndView dashboard(@RequestParam(value = "error", required = false) String error,
	    		@RequestParam(value = "logout", required = false) String logout) {
		 ModelAndView mav=new ModelAndView();
		mav.setViewName("admin.login");
		mav.addObject("title_tag", "Welcom to dashboard");
		mav.addObject("description_tag", "Welcom to dashboard");
			if (error != null) {
			 mav.addObject("error", "Invalid username and password!");
			}
			  if (logout != null) {
				  mav.addObject("msg", "You've been logged out successfully.");
			  }
		
	        return mav;
	    }
	 
	 
}
