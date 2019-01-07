package vn.itwork.ctrl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vn.itwork.entity.Department;
import vn.itwork.entity.User;
import vn.itwork.entity.UserRole;
import vn.itwork.helper.Pagination;
import vn.itwork.service.DepartmentService;
import vn.itwork.service.UserRoleService;
import vn.itwork.service.UserService;
import vn.itwork.serviceimpl.DepartmentServiceImpl;

@Controller
public class UserCtr {

	@Autowired
	@Qualifier("UserServiceImpl")
	private UserService UserServiceImpl;
	
	@Autowired
	@Qualifier("DepartmentServiceImpl")
	private DepartmentService DepartmentServiceImpl;
	
	
	@Autowired
	@Qualifier("UserRoleImpl")
	private UserRoleService UserRoleImpl;
	final String activeSidebar="activeUser";
	 @RequestMapping(value = { "manage/User"}, method = RequestMethod.GET)
	 public ModelAndView index(@RequestParam(value="p", required = false,defaultValue="1") int currentpage
			 					,@RequestParam(value="username", required = false,defaultValue="") String username){
			int total_recore=0;
		 	Pagination pa=null;
		 	total_recore=UserServiceImpl.get_total_recore(username);
			pa=new Pagination(currentpage,total_recore);
		 	List<User> Users=UserServiceImpl.find(username, pa.getStart(), pa.getLimit());
		 	String findparam1="username="+username+"&";
		 	List<Department> departments=DepartmentServiceImpl.get_all();
			List<UserRole> UserRoles=UserRoleImpl.get_rolebyAdmin();
		 ModelAndView mav=new ModelAndView();
			mav.addObject("title_tag", "User ");
			mav.addObject("description_tag", "User list items");
			mav.addObject("activeSidebar", activeSidebar);
			mav.addObject("findparam1",findparam1);
			mav.addObject("pag",pa);
			mav.addObject("UserRoles",UserRoles);
			mav.addObject("departments",departments);
			mav.addObject("Users",Users);
			mav.setViewName("addUser");
			return mav;
	 }
}

