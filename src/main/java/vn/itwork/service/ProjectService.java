package vn.itwork.service;

import java.util.List;

import vn.itwork.entity.Members;
import vn.itwork.entity.Project;
import vn.itwork.entity.ResultExceute;

public interface ProjectService {

	int get_total_recorebyManagerOwer(String managerDepartment,int status);

	List<Project> findprojectByOwer(String managerDepartment, int start,
			int limit,int status);

	ResultExceute insert_or_update(String sqltype, Project a, String username,String dept_id);

	Project getProjectByIdAndOwer(String managerDepartment, String id);

	List<Members> getMembers(String managerDepartment, String id);

	List<Project> getAllprojectActive(String managerDepartment);
	
	List<Project> getALLActive();
	
	List<Project> getProjectActive2(String employee);

	List<Project> getProjectNotin(String username);

	ResultExceute ins_em(String employee, String project, String description);

	List<Project> getProjectin(String username);
	

	int delete_em(String employee, String project);

	void dailyUpdate();

	Project getstatisticsById(String id);

	List<Project> getALL(String department);

}
