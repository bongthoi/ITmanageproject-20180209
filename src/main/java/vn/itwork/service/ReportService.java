package vn.itwork.service;

import java.util.List;

import vn.itwork.entity.ReportModel;

public interface ReportService {

	List<ReportModel> do_report3(String fdate,String tdate,String dept_id);

	List<ReportModel> do_report2(String fdate, String tdate, String project_id);

	List<ReportModel> do_report1(String string, String string2, String string3, String people);
	
}
