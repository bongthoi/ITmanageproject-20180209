package vn.itwork.ajax;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;






import vn.itwork.entity.ResultExceute;
import vn.itwork.entity.User;
import vn.itwork.service.UserService;


@RestController
public class UserAjax {

	

	@Autowired
	@Qualifier("UserServiceImpl")
	private UserService UserServiceImpl;
	
	@RequestMapping(value="manage/ajax/User/insert_or_update",method=RequestMethod.POST,produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResultExceute insert_employee(@ModelAttribute User a,@RequestParam(value ="sqltype",required=true) String sqltype){
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 String username = auth.getName(); //get logged in username
		
		return (UserServiceImpl.insert_or_update_User(a,sqltype,username));
	}
	@RequestMapping(value="/manage/ajax/User/active",method=RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	public String postactive(@RequestParam(value="ids",required=true) String ids,
						@RequestParam(value="status",required=true) int status){
		return String.valueOf(UserServiceImpl.activestatus(ids,status));
	}
}
