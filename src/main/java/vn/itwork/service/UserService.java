package vn.itwork.service;

import java.util.List;

import vn.itwork.entity.ResultExceute;
import vn.itwork.entity.User;

public interface UserService {

	int get_total_recore(String username);

	List<User> find(String username, int start, int limit);

	ResultExceute insert_or_update_User(User a, String sqltype,String create_user);

	int activestatus(String ids, int status);

	User getUser(String managerDepartment);

	int get_total_recorebyManagerOwer(String username, String username2,
			String department);

	List<User> findEmployerbyDepartment(String username, String username2,
			String department, int start, int limit);

	List<User> findEmployerbyDepartment(String department);

	List<User> getallUserbyDepartment(String department);

	List<User> findALLEmployerbyDepartmentAndstatistics(String department);
	
	User getUser_statistics(String username);

	List<User> getALLenableEmployee(String department);



}
