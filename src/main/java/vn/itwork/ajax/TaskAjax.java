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
import vn.itwork.entity.Task;
import vn.itwork.service.TaskService;



@RestController
public class TaskAjax {

	@Autowired
	@Qualifier("TaskServiceImpl")
	private TaskService TaskServiceImpl;
	

	@RequestMapping(value="management/ajax/Task/insert_or_update",method=RequestMethod.POST,produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResultExceute insert_employee(@ModelAttribute Task a,@RequestParam(value ="sqltype",required=true) String sqltype){
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 String username = auth.getName(); //get logged in username
		//System.out.println(sqltype);
		return TaskServiceImpl.insert_or_update(sqltype,a,username);
	}

	
	@RequestMapping(value="publicinfo/ajax/Task/update1",method=RequestMethod.POST,produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResultExceute update1(@RequestParam(value="task_id",required=true) String task_id,
			@RequestParam(value="task_progress",required=true) int task_progress,
			@RequestParam(value="task_expect_time",required=true) int task_expect_time,
			@RequestParam(value="task_title",required=true) String task_title,
			@RequestParam(value="project_id",required=true) String project_id,
			@RequestParam(value="log",required=false,defaultValue="") String log){
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 String username = auth.getName(); //get logged in username
		//System.out.println(log);
		//return null;
		return TaskServiceImpl.update1(task_id,task_progress,task_expect_time,task_title,project_id,log,username);
	}
	@RequestMapping(value="publicinfo/ajax/Task/update3",method=RequestMethod.POST,produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResultExceute update3(@RequestParam(value="task_id",required=true) String task_id,
			@RequestParam(value="task_progress",required=true) int task_progress,
			@RequestParam(value="task_spent_time",required=true) int task_spent_time,
			@RequestParam(value="task_title",required=true) String task_title,
			@RequestParam(value="project_id",required=true) String project_id,
			@RequestParam(value="log",required=false,defaultValue="") String log){
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 String username = auth.getName(); //get logged in username
		//System.out.println(log);
		//return null;
		return TaskServiceImpl.update3(task_id,task_progress,task_spent_time,task_title,project_id,log,username);
	}
	@RequestMapping(value="management/ajax/Task/update2",method=RequestMethod.POST,produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResultExceute update2(@RequestParam(value="task_id",required=true) String task_id,
			@RequestParam(value="task_progress",required=true) int task_progress,
			@RequestParam(value="task_expect_time",required=true) int task_expect_time,
			@RequestParam(value="task_title",required=true) String task_title,
			@RequestParam(value="project_id",required=true) String project_id,
			@RequestParam(value="task_employee",required=true) String task_employee,
			@RequestParam(value="task_description",required=true) String task_description,
			@RequestParam(value="log",required=false,defaultValue="") String log){
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 String username = auth.getName(); //get logged in username
		 Task a=new Task();
		 a.setId(task_id);
		 a.setProgress(task_progress);
		 a.setExpect_time(task_expect_time);
		 a.setTitle(task_title);
		 a.setProject_id(project_id);
		 a.setEmployee_id(task_employee);
		 a.setDescription(task_description);
		//System.out.println(log);
		//return null;
		return TaskServiceImpl.update2(a,log,username);
	}
}
