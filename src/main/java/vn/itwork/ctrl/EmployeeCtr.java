package vn.itwork.ctrl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vn.itwork.entity.Department;
import vn.itwork.entity.Project;
import vn.itwork.entity.User;
import vn.itwork.helper.Pagination;
import vn.itwork.service.DepartmentService;
import vn.itwork.service.ProjectService;
import vn.itwork.service.UserService;
import vn.itwork.serviceimpl.DepartmentServiceImpl;
import vn.itwork.serviceimpl.UserServiceImpl;



@Controller
public class EmployeeCtr {


	@Autowired
	@Qualifier("ProjectServiceImpl")
	private ProjectService ProjectServiceImpl;
	
	@Autowired
	@Qualifier("UserServiceImpl")
	private UserService UserServiceImpl;
	
	final String activeSidebar="activeEmployee";
	 @RequestMapping(value = { "management/employee"}, method = RequestMethod.GET)
	 public ModelAndView index(@RequestParam(value="p", required = false,defaultValue="1") int currentpage
				,@RequestParam(value="username", required = false,defaultValue="") String username){
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 String managerDepartment = auth.getName(); //get logged in username
		 User manager =UserServiceImpl.getUser(managerDepartment);
			//int total_recore=0;
		 	//Pagination pa=null;
		 	//total_recore=UserServiceImpl.get_total_recorebyManagerOwer(username,manager.getUsername(),manager.getDepartment());
			//pa=new Pagination(currentpage,total_recore);
		 	//List<User> Users=UserServiceImpl.findEmployerbyDepartment(username,manager.getUsername(),manager.getDepartment(), pa.getStart(), pa.getLimit());
		 	//String findparam1="username="+username+"&";
		 List<User> Users=UserServiceImpl.findALLEmployerbyDepartmentAndstatistics(manager.getDepartment());
		 ModelAndView mav=new ModelAndView();
			mav.addObject("title_tag", "Employee");
			mav.addObject("description_tag", "Employee list items");
			mav.addObject("activeSidebar", activeSidebar);
			//mav.addObject("findparam1",findparam1);
			//mav.addObject("pag",pa);
			mav.addObject("Users",Users);
			mav.setViewName("ademployee");
			return mav;
	 }
	 
	 @RequestMapping(value = { "management/employee/detail"}, method = RequestMethod.GET)
	 public ModelAndView detail(@RequestParam("username") String username){
		
		 User a= UserServiceImpl.getUser_statistics(username);
		 List<Project> b =ProjectServiceImpl.getProjectin(username);
		 ModelAndView mav=new ModelAndView();
			mav.addObject("title_tag", "Employee Detail");
			mav.addObject("description_tag", "Employee Detail");
			mav.addObject("activeSidebar", activeSidebar);
			mav.addObject("User", a);
			mav.addObject("Projects", b);
			mav.setViewName("ademployee-detail");
			return mav;
	 }
	 @RequestMapping(value = { "management/employee/get/tr"}, method = RequestMethod.GET)
	 public ModelAndView gettr(@RequestParam("username") String username){
		
		List<Project> a =ProjectServiceImpl.getProjectNotin(username);
		
		 ModelAndView mav=new ModelAndView();
			mav.addObject("Projects", a);
			mav.setViewName("admin_tr1");
			return mav;
	 }
}
