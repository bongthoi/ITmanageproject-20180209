package vn.itwork.ctrl;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ErrorPage {
	
	@RequestMapping(value="/404")
	@ResponseStatus(HttpStatus.NOT_FOUND)
	public ModelAndView handleIOException404(){
		 ModelAndView mav=new ModelAndView();
		 	//System.out.println("not foundsss");
			mav.setViewName("error.template");
			mav.addObject("title_tag", " 404 Page not found!");
			mav.addObject("description_tag", "404 Page not found!");
			mav.addObject("_errorcode", "404");
			mav.addObject("_messagecode", "Page not found!");
		    return mav;
	}
	@RequestMapping(value="/403")
	@ResponseStatus(HttpStatus.FORBIDDEN)
	public ModelAndView handleIOException403(){
		 ModelAndView mav=new ModelAndView();
		 	//System.out.println("403");
			mav.setViewName("error.template");
			mav.addObject("title_tag", "403 Access denied!");
			mav.addObject("description_tag", "403 Access denied!");
			mav.addObject("_errorcode", "403");
			mav.addObject("_messagecode", "Access denied!");
		    return mav;
	}
	@RequestMapping(value="/code404")
	@ResponseStatus(HttpStatus.NOT_FOUND)
	public ModelAndView handleIOExceptioncode404(){
		 ModelAndView mav=new ModelAndView();
		 	//System.out.println("403");
			mav.setViewName("error.template");
			mav.addObject("title_tag", "custom code404 Can't  find item");
			mav.addObject("description_tag", "custom code404 Can't  find item!");
			mav.addObject("_errorcode", "custom code404");
			mav.addObject("_messagecode", "Can't  find item!");
		    return mav;
	}
}
