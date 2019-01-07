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

import com.google.gson.Gson;

import vn.itwork.entity.Members;
import vn.itwork.entity.Project;
import vn.itwork.entity.User;
import vn.itwork.helper.Pagination;
import vn.itwork.service.ProjectService;
import vn.itwork.service.UserService;

@Controller
public class ProjectCtr {


	@Autowired
	@Qualifier("ProjectServiceImpl")
	private ProjectService ProjectServiceImpl;
	

	@Autowired
	@Qualifier("UserServiceImpl")
	private UserService UserServiceImpl;
	
	
	final String activeSidebar="activeProject";
	 @RequestMapping(value = { "management/project"}, method = RequestMethod.GET)
	 public ModelAndView index(@RequestParam(value="p", required = false,defaultValue="1") int currentpage
			 			,@RequestParam(value="status", required = false,defaultValue="1") int status){
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 String managerDepartment = auth.getName(); //get logged in username
			int total_recore=0;
		 	Pagination pa=null;
		 	total_recore=ProjectServiceImpl.get_total_recorebyManagerOwer(managerDepartment,status);
			pa=new Pagination(currentpage,total_recore);
		 	List<Project> Projects=ProjectServiceImpl.findprojectByOwer(managerDepartment, pa.getStart(), pa.getLimit(),status);
		 	String findparam1="status="+status+'&';
		 ModelAndView mav=new ModelAndView();
			mav.addObject("title_tag", "Project");
			mav.addObject("description_tag", "Project list items");
			mav.addObject("activeSidebar", activeSidebar);
			mav.addObject("findparam1",findparam1);
			mav.addObject("pag",pa);
			mav.addObject("Projects",Projects);
			mav.addObject("status",status);
			mav.setViewName("adproject");
			return mav;
	 }
	 @RequestMapping(value = { "management/project/add"}, method = RequestMethod.GET)
	 public ModelAndView addproject(){
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 String managerDepartment = auth.getName(); //get logged in username
		 User manager =UserServiceImpl.getUser(managerDepartment);
		 List<User> Users=UserServiceImpl.findEmployerbyDepartment(manager.getDepartment());
		 ModelAndView mav=new ModelAndView();
			mav.addObject("title_tag", " add new Project");
			mav.addObject("description_tag", "Project ");
			mav.addObject("type","A");
			mav.addObject("activeSidebar", activeSidebar);
			mav.addObject("Users",Users);
			mav.setViewName("adproject-add-edit");
			return mav;
	 }
	 @RequestMapping(value = { "management/project/edit/{id}"}, method = RequestMethod.GET)
	 public ModelAndView editproject(@PathVariable("id") String id){
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 String managerDepartment = auth.getName(); //get logged in username
		 User manager =UserServiceImpl.getUser(managerDepartment);
		 List<User> Users=UserServiceImpl.findEmployerbyDepartment(manager.getDepartment());
		 Project  a= ProjectServiceImpl.getProjectByIdAndOwer(managerDepartment,id);
		 List<Members> mem =ProjectServiceImpl.getMembers(managerDepartment,id);
		 ModelAndView mav=new ModelAndView();
			mav.addObject("title_tag", " Edit Project");
			mav.addObject("description_tag", "Project ");
			mav.addObject("activeSidebar", activeSidebar);
			mav.addObject("type","E");
			mav.addObject("Users",Users);
			mav.addObject("mem",new Gson().toJson(mem));
			mav.addObject("project",new Gson().toJson(a));
			mav.setViewName("adproject-add-edit");
			return mav;
	 }
	
	 @RequestMapping(value = { "publicinfo/project/detail/{id}"}, method = RequestMethod.GET)
	 public ModelAndView detail(@PathVariable("id") String id){
		 System.out.println(id);
		 Project  a= ProjectServiceImpl.getstatisticsById(id);
		 ModelAndView mav=new ModelAndView();
			mav.addObject("title_tag", "  Project Detail");
			mav.addObject("description_tag", "Project ");
			mav.addObject("activeSidebar", activeSidebar);
			mav.addObject("project",a);
			mav.setViewName("adproject-detail");
			return mav;
	 }
	 
	/*  @RequestMapping(value = { "publicinfo/project/detail/{id}"}, method = RequestMethod.GET)
	  @ResponseBody
	 public String detail(@PathVariable("id") String id){
	
		return id;
	 }*/
	 @RequestMapping(value = { "publicinfo/project/get_select_project"}, method = RequestMethod.GET)
	 public ModelAndView get_select_project(@RequestParam(value="department", required = true) String department){
		 List<Project> SelectProject =  ProjectServiceImpl.getALL(department);
		 ModelAndView mav=new ModelAndView();
			mav.addObject("SelectProject",SelectProject);
			mav.setViewName("admin_SelectProject");
			return mav;
	 }
	 @RequestMapping(value = { "publicinfo/project/get_select_people"}, method = RequestMethod.GET)
	 public ModelAndView get_select_people(@RequestParam(value="department", required = true) String department){
		 List<User> SelectPeople =  UserServiceImpl.getALLenableEmployee(department);
		 System.out.println(SelectPeople.size());
		 ModelAndView mav=new ModelAndView();
			mav.addObject("SelectPeople",SelectPeople);
			mav.setViewName("admin_SelectPeople");
			return mav;
	 }
	 
	 
}
