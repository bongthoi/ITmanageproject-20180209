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

import vn.itwork.entity.Project;
import vn.itwork.entity.ResultExceute;
import vn.itwork.entity.User;
import vn.itwork.service.ProjectService;
import vn.itwork.service.UserService;
import vn.itwork.serviceimpl.UserServiceImpl;


@RestController
public class ProjectAjax {


	@Autowired
	@Qualifier("ProjectServiceImpl")
	private ProjectService ProjectServiceImpl;
	
	@Autowired
	@Qualifier("UserServiceImpl")
	private UserService UserServiceImpl;
	
	@RequestMapping(value="management/ajax/Project/insert_or_update",method=RequestMethod.POST,produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResultExceute insert_employee(@ModelAttribute Project a,@RequestParam(value ="sqltype",required=true) String sqltype){
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 String username = auth.getName(); //get logged in username
		//System.out.println(sqltype);
			
			User manager =UserServiceImpl.getUser(username);
		return ProjectServiceImpl.insert_or_update(sqltype,a,username,manager.getDepartment());
	}
	@RequestMapping(value="management/ajax/Project/ins/em",method=RequestMethod.POST,produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResultExceute ins(@RequestParam(value ="username",required=true) String employee,
			@RequestParam(value ="project",required=true) String project,
			@RequestParam(value ="description",required=false) String description){
	
		
		return ProjectServiceImpl.ins_em(employee,project,description);
	}
	@RequestMapping(value="management/ajax/Project/delete/em",method=RequestMethod.POST,produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public String deleteem(@RequestParam(value ="username",required=true) String employee,
			@RequestParam(value ="project",required=true) String project){
		return String.valueOf(ProjectServiceImpl.delete_em(employee,project));
	}
}
