package vn.itwork.ctrl;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vn.itwork.entity.Department;
import vn.itwork.entity.ReportModel;
import vn.itwork.helper.ExtraHelpper;
import vn.itwork.service.DepartmentService;
import vn.itwork.service.ProjectService;
import vn.itwork.service.ReportService;

@Controller
public class ReviewCtr {
	@Autowired
	@Qualifier("ProjectServiceImpl")
	private ProjectService ProjectServiceImpl;

	@Autowired
	@Qualifier("ReportServiceImpl")
	private ReportService ReportServiceImpl;
	
	@Autowired
	@Qualifier("DepartmentServiceImpl")
	private DepartmentService DepartmentServiceImpl;
	final String activeSidebar="activeReport";
	 @RequestMapping(value = { "review/report"}, method = RequestMethod.GET)
	 public ModelAndView index(){
		 
		 List<Department> SelectDepartmemt =  DepartmentServiceImpl.get_all();
		 ModelAndView mav=new ModelAndView();
			mav.addObject("title_tag", "Report");
			mav.addObject("description_tag", "Report");
			mav.addObject("activeSidebar", activeSidebar);
			mav.addObject("SelectDepartmemt",SelectDepartmemt);
			mav.setViewName("adreport");
			return mav;
	 }
	 @RequestMapping(value = { "review/report/jsp/do_report1"}, method = RequestMethod.GET)
	 public ModelAndView report1(@RequestParam(value="f_date",required=true) String f_date,
			 					@RequestParam(value="t_date",required=true) String t_date,
			 					@RequestParam(value="department",required=true) String department,
			 					@RequestParam(value="people",required=true) String people){
		 List<ReportModel> a=ReportServiceImpl.do_report1(f_date, t_date,department,people);
		 Map<String, List<ReportModel>> map=ExtraHelpper.group_project_id(a);
		 ModelAndView mav=new ModelAndView();
			mav.addObject("map_reports",map);
			mav.addObject("employee",people);
			mav.setViewName("admin_result_report1");
			return mav;
	 }
	 @RequestMapping(value = { "review/report/jsp/do_report2"}, method = RequestMethod.GET)
	 public ModelAndView report2(@RequestParam(value="f_date",required=true) String f_date,
			 					@RequestParam(value="t_date",required=true) String t_date,
			 					@RequestParam(value="project",required=true) String project){
		 List<ReportModel> a=ReportServiceImpl.do_report2(f_date, t_date,project);
		 Map<String, List<ReportModel>> map=ExtraHelpper.group_project_id(a);
		 ModelAndView mav=new ModelAndView();
			mav.addObject("map_reports",map);
			mav.setViewName("admin_result_report2and3");
			return mav;
	 }
	 @RequestMapping(value = { "review/report/jsp/do_report3"}, method = RequestMethod.GET)
	 public ModelAndView report3(@RequestParam(value="f_date",required=true) String f_date,
			 					@RequestParam(value="t_date",required=true) String t_date,
			 					@RequestParam(value="department",required=true) String department){
		 List<ReportModel> a=ReportServiceImpl.do_report3(f_date, t_date,department);
		 Map<String, List<ReportModel>> map=ExtraHelpper.group_project_id(a);
		 ModelAndView mav=new ModelAndView();
			mav.addObject("map_reports",map);
			mav.setViewName("admin_result_report2and3");
			return mav;
	 }
	 /*
	  * 
	  *  List<ReportModel> a=ReportServiceImpl.do_report2("2017-04-27", "2017-04-29","pro-001");
	  *  	 Map<String, List<ReportModel>> map=ExtraHelpper.group_project_id(a);
	  *  	mav.addObject("map_reports",map);
	  * */
	 /*	mav.addObject("map_reports",map);
	  * mav.setViewName("adreport");
	  * 	 Map<String, List<ReportModel>> map=ExtraHelpper.group_project_id(a);
	  *  List<ReportModel> a=ReportServiceImpl.do_report3("2017-04-27", "2017-04-29");*/
}
