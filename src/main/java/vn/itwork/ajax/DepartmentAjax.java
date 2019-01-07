package vn.itwork.ajax;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import vn.itwork.entity.Department;
import vn.itwork.entity.ResultExceute;
import vn.itwork.service.DepartmentService;


@RestController
public class DepartmentAjax {
	
	@Autowired
	@Qualifier("DepartmentServiceImpl")
	private DepartmentService DepartmentServiceImpl;
	
	@RequestMapping(value="manage/ajax/department/insert_or_update",method=RequestMethod.POST,produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResultExceute insert_employee(@ModelAttribute Department a,@RequestParam(value ="sqltype",required=true) String sqltype){
		return (DepartmentServiceImpl.insert_or_update_department(a,sqltype));
	}
	@RequestMapping(value="/manage/ajax/department/active",method=RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE+";charset=UTF-8")
	public String postactive(@RequestParam(value="ids",required=true) String ids,
						@RequestParam(value="status",required=true) int status){
		return String.valueOf(DepartmentServiceImpl.activestatus(ids,status));
	}

}
