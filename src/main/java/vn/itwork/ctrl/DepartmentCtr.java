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
import vn.itwork.helper.Pagination;
import vn.itwork.service.DepartmentService;

@Controller
public class DepartmentCtr {

	
	@Autowired
	@Qualifier("DepartmentServiceImpl")
	private DepartmentService DepartmentServiceImpl;
	
	final String activeSidebar="activeDepartment";
	 @RequestMapping(value = { "manage/department"}, method = RequestMethod.GET)
	 public ModelAndView index(@RequestParam(value="p", required = false,defaultValue="1") int currentpage){
			int total_recore=0;
		 	Pagination pa=null;
		 	total_recore=DepartmentServiceImpl.get_total_recore();
			pa=new Pagination(currentpage,total_recore);
		 	List<Department> departments=DepartmentServiceImpl.find( pa.getStart(), pa.getLimit());
		 	String findparam1="";
		 	
		 ModelAndView mav=new ModelAndView();
			mav.addObject("title_tag", "Department");
			mav.addObject("description_tag", "Department list items");
			mav.addObject("activeSidebar", activeSidebar);
			mav.addObject("findparam1",findparam1);
			mav.addObject("pag",pa);
			mav.addObject("departments",departments);
			mav.setViewName("addepartment");
			return mav;
	 }
}
