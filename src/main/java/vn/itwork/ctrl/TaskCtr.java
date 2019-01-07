package vn.itwork.ctrl;

import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.websocket.server.PathParam;

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

import vn.itwork.entity.ItemStatus;
import vn.itwork.entity.Project;
import vn.itwork.entity.Task;
import vn.itwork.entity.User;
import vn.itwork.helper.Pagination;
import vn.itwork.helper.UrlHellper;
import vn.itwork.service.HelperService;
import vn.itwork.service.ProjectService;
import vn.itwork.service.TaskService;
import vn.itwork.service.UserService;



@Controller
public class TaskCtr {

	@Autowired
	@Qualifier("ProjectServiceImpl")
	private ProjectService ProjectServiceImpl;
	

	@Autowired
	@Qualifier("UserServiceImpl")
	private UserService UserServiceImpl;
	
	@Autowired
	@Qualifier("TaskServiceImpl")
	private TaskService TaskServiceImpl;
	
	@Autowired
	@Qualifier("HelperServiceImpl")
	private HelperService HelperServiceImpl;
	
	final String activeSidebar="activeTask";
	
	 @RequestMapping(value = { "management/task"}, method = RequestMethod.GET)
	 public ModelAndView index(@RequestParam(value="page", required = false,defaultValue="1") int currentpage,
			 				@RequestParam(value="project", required = false,defaultValue="") String project,
			 				@RequestParam(value="taskstatus", required = false,defaultValue="0") int taskstatus,
			 				@RequestParam(value="tasktitle", required = false,defaultValue="") String tasktitle,
			 				HttpServletRequest request) throws URISyntaxException{
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 String managerDepartment = auth.getName(); //get logged in username
		 List<Project> Projects=ProjectServiceImpl.getAllprojectActive(managerDepartment);
		 if(Projects.size()>0){
			 int total_record=0;
			 int limit=20;
			 List<Task> tasks=null;
			 if(project.equals("")){
				 project=Projects.get(0).getId();
			 }
			 
			 Map<String,String> mapparam= new HashMap<String, String>();	
				Map<String,String> mapparam2= new HashMap<String, String>();	
				mapparam.put("page","replace_numberpage");
				mapparam.put("project",project);
				mapparam.put("taskstatus",String.valueOf(taskstatus));
				mapparam.put("tasktitle",String.valueOf(tasktitle));
				//mappparam2
				mapparam2.put("project", project);
				
				String link_full=UrlHellper.get_url(request,mapparam);
				String link_first=UrlHellper.get_url(request,mapparam2);
			total_record=TaskServiceImpl.count_search_task(project,taskstatus,tasktitle);
			 Pagination pagg=new Pagination(currentpage,total_record,limit,link_full,link_first);
			 tasks=TaskServiceImpl.search_task(project,taskstatus,tasktitle,pagg.getStart(),pagg.getLimit());
			 String html_pagg=pagg.html_sm_pullright();
			/* System.out.println(tasks.size());
			 System.out.println(html_pagg);*/
			 ModelAndView mav=new ModelAndView();
				mav.addObject("title_tag", "Task item");
				mav.addObject("description_tag", "Task item");
				mav.addObject("activeSidebar", activeSidebar);
				mav.addObject("Projects",Projects);
				mav.addObject("tasks",tasks);
				mav.addObject("pagging",html_pagg);
				mav.addObject("activeproject",project);
				mav.addObject("activetaskstatus",String.valueOf(taskstatus));
				mav.addObject("activetasktitle",tasktitle);
				mav.setViewName("adtask");
				return mav;
		 }
		
		else{
				return new ErrorPage().handleIOException404();
		}
	 }
	 

	 @RequestMapping(value = { "publicinfo/task"}, method = RequestMethod.GET)
	 public ModelAndView index2(@RequestParam(value="page", required = false,defaultValue="1") int currentpage,
			 				@RequestParam(value="project", required = false,defaultValue="") String project,
			 				@RequestParam(value="taskstatus", required = false,defaultValue="0") int taskstatus,
			 				@RequestParam(value="tasktitle", required = false,defaultValue="") String tasktitle,
			 				HttpServletRequest request) throws URISyntaxException{
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 String employee = auth.getName(); //get logged in username
		 List<Project> Projects=ProjectServiceImpl.getProjectActive2(employee);
		 if(Projects.size()>0){
			 int total_record=0;
			 int limit=20;
			 List<Task> tasks=null;
			 if(project.equals("")){
				 project=Projects.get(0).getId();
			 }
			 
			 Map<String,String> mapparam= new HashMap<String, String>();	
				Map<String,String> mapparam2= new HashMap<String, String>();	
				mapparam.put("page","replace_numberpage");
				mapparam.put("project",project);
				mapparam.put("taskstatus",String.valueOf(taskstatus));
				mapparam.put("tasktitle",String.valueOf(tasktitle));
				//mappparam2
				mapparam2.put("project", project);
				
				String link_full=UrlHellper.get_url(request,mapparam);
				String link_first=UrlHellper.get_url(request,mapparam2);
			total_record=TaskServiceImpl.count_search_task(project,taskstatus,tasktitle,employee);
			 Pagination pagg=new Pagination(currentpage,total_record,limit,link_full,link_first);
			 tasks=TaskServiceImpl.search_task(employee,project,taskstatus,tasktitle,pagg.getStart(),pagg.getLimit());
			 String html_pagg=pagg.html_sm_pullright();
			 ModelAndView mav=new ModelAndView();
				mav.addObject("title_tag", "Task item");
				mav.addObject("description_tag", "Task item");
				mav.addObject("activeSidebar", activeSidebar);
				mav.addObject("Projects",Projects);
				mav.addObject("tasks",tasks);
				mav.addObject("pagging",html_pagg);
				mav.addObject("activeproject",project);
				mav.addObject("activetaskstatus",String.valueOf(taskstatus));
				mav.addObject("activetasktitle",tasktitle);
				mav.setViewName("adtask");
				return mav;
		 }
		
		else{
				return new ErrorPage().handleIOException404();
		}
	 }
	 @RequestMapping(value = { "publicinfo/task/view/{id}"}, method = RequestMethod.GET)
	 public ModelAndView viewtask(@PathVariable("id") String id){
		 Task a= TaskServiceImpl.getTaskById(id);
	
		 ModelAndView mav=new ModelAndView();
			mav.addObject("title_tag", "Task item");
			mav.addObject("description_tag", "Task item");
			mav.addObject("activeSidebar", activeSidebar);
			mav.addObject("task",a);
			mav.setViewName("adtaskview");
		return mav;
		 
	 }
	 @RequestMapping(value = { "management/task/edit/{id}"}, method = RequestMethod.GET)
	 public ModelAndView edittask(@PathVariable("id") String id){
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 String managerDepartment = auth.getName(); //get logged in username
		 User manager =UserServiceImpl.getUser(managerDepartment);
		 Task a= TaskServiceImpl.getTaskById(id);
		 List<ItemStatus> lstatus= HelperServiceImpl.get_status_from_table("tb_task_status");
		 List<User> Users=UserServiceImpl.getallUserbyDepartment(manager.getDepartment());
		 ModelAndView mav=new ModelAndView();
			mav.addObject("title_tag", "Task item edit");
			mav.addObject("description_tag", "Task item edit");
			mav.addObject("activeSidebar", activeSidebar);
			mav.addObject("Users",Users);
			mav.addObject("lstatus",lstatus);
			mav.addObject("task",a);
			mav.setViewName("adtaskedit");
		return mav;
		 
	 }
	 @RequestMapping(value = { "management/task/create-task"}, method = RequestMethod.GET)
	 public ModelAndView createtask(){
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 String managerDepartment = auth.getName(); //get logged in username
		 User manager =UserServiceImpl.getUser(managerDepartment);
		 List<Project> Projects=ProjectServiceImpl.getAllprojectActive(managerDepartment);
		 List<User> Users=UserServiceImpl.getallUserbyDepartment(manager.getDepartment());
		 ModelAndView mav=new ModelAndView();
			mav.addObject("title_tag", "Create Task");
			mav.addObject("description_tag", "Create Task");
			mav.addObject("activeSidebar", activeSidebar);
			mav.addObject("Users",Users);
			mav.addObject("Projects",Projects);
			mav.setViewName("adtask-create");
			return mav;
	 }
}
