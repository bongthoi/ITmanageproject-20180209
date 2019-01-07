package vn.itwork.service;

import java.util.List;

import vn.itwork.entity.Department;
import vn.itwork.entity.ResultExceute;

public interface DepartmentService {

	List<Department> get_all();

	int get_total_recore();

	List<Department> find(int start, int limit);

	ResultExceute insert_or_update_department(Department a, String sqltype);

	int activestatus(String ids, int status);
	
}
