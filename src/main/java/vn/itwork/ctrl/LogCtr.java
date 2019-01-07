package vn.itwork.ctrl;

import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vn.itwork.entity.Activity;
import vn.itwork.helper.Pagination;
import vn.itwork.helper.UrlHellper;
import vn.itwork.service.LogService;
import vn.itwork.service.UserService;


@Controller
public class LogCtr {

	@Autowired
	@Qualifier("LogServiceImpl")
	private LogService LogServiceImpl;
	 @RequestMapping(value = { "publicinfo/log/getbyuser"}, method = RequestMethod.GET)
	 public ModelAndView getlogbyuer(@RequestParam("username") String username,
			 @RequestParam(value="page", required = false,defaultValue="1") int currentpage,
			 HttpServletRequest request) throws URISyntaxException{
		 int total_record=0;
		 int limit=6;
		 total_record=LogServiceImpl.get_totalbyuer(username);
		 Map<String,String> mapparam= new HashMap<String, String>();	
			Map<String,String> mapparam2= new HashMap<String, String>();	
			mapparam.put("page","replace_numberpage");
			mapparam.put("username",username);
			//mappparam2
			mapparam2.put("username", username);
			
			String link_full=UrlHellper.get_url(request,mapparam);
			String link_first=UrlHellper.get_url(request,mapparam2);
		 Pagination pagg=new Pagination(currentpage,total_record,limit,link_full,link_first);
		 List<Activity> activitys=LogServiceImpl.get_byusername(username,pagg.getStart(),pagg.getLimit());
		 ModelAndView mav=new ModelAndView();
			mav.setViewName("admin_loguer");
			mav.addObject("activitys",activitys);
			mav.addObject("pag_html",pagg.html_sm_activity());
			return mav;
	 }
	 
	 @RequestMapping(value = { "publicinfo/log/getbytask"}, method = RequestMethod.GET)
	 public ModelAndView getbytask(@RequestParam("taskid") String taskid,
			 @RequestParam(value="page", required = false,defaultValue="1") int currentpage,
			 HttpServletRequest request) throws URISyntaxException{
		 int total_record=0;
		 int limit=6;
		 total_record=LogServiceImpl.get_totalbytask(taskid);
		 Map<String,String> mapparam= new HashMap<String, String>();	
			Map<String,String> mapparam2= new HashMap<String, String>();	
			mapparam.put("page","replace_numberpage");
			mapparam.put("taskid",taskid);
			//mappparam2
			mapparam2.put("taskid", taskid);
			
			String link_full=UrlHellper.get_url(request,mapparam);
			String link_first=UrlHellper.get_url(request,mapparam2);
		 Pagination pagg=new Pagination(currentpage,total_record,limit,link_full,link_first);
		 List<Activity> activitys=LogServiceImpl.get_getbytask(taskid,pagg.getStart(),pagg.getLimit());
		 ModelAndView mav=new ModelAndView();
			mav.setViewName("admin_loguer");
			mav.addObject("activitys",activitys);
			mav.addObject("pag_html",pagg.html_sm_activity());
			return mav;
	 }
}
