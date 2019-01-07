package vn.itwork.serviceimpl;

import java.sql.Types;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.SqlParameter;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.stereotype.Repository;

import vn.itwork.entity.ReportModel;
import vn.itwork.service.ReportService;

@Repository("ReportServiceImpl")
public class ReportServiceImpl  implements ReportService{


	@Autowired
	@Qualifier("templatejdbc")
	private  JdbcTemplate jdbcTemplateObject;
	
	@Override
	public List<ReportModel> do_report3(String fdate, String tdate,String dept_id) {
		SimpleJdbcCall simpleJdbcCall = new SimpleJdbcCall(jdbcTemplateObject)
		.withProcedureName("sp_report_from3").returningResultSet("rs", 
						BeanPropertyRowMapper.newInstance(ReportModel.class));
		SqlParameter[] parameters = {
				new SqlParameter("p_fromdate",Types.DATE),
				new SqlParameter("p_todate",Types.DATE),
				new SqlParameter("p_dept_id",Types.VARCHAR)
			   
	    };
		simpleJdbcCall.declareParameters(parameters);
		   SqlParameterSource in = new MapSqlParameterSource()
		   .addValue("p_fromdate", fdate)
	   	    .addValue("p_todate",tdate)
	   	    .addValue("p_dept_id",dept_id);
		    Map<String, Object> out = simpleJdbcCall.execute(in);
		     // System.out.println(out.get("rs").toString());
		      List<ReportModel> list=(List<ReportModel>) out.get("rs");
		      return list;
	}
	@Override
	public List<ReportModel> do_report2(String fdate, String tdate,
			String project_id) {
		SimpleJdbcCall simpleJdbcCall = new SimpleJdbcCall(jdbcTemplateObject)
		.withProcedureName("sp_report_from2").returningResultSet("rs", 
						BeanPropertyRowMapper.newInstance(ReportModel.class));
		SqlParameter[] parameters = {
				new SqlParameter("p_fromdate",Types.DATE),
				new SqlParameter("p_todate",Types.DATE),
				new SqlParameter("p_projectid",Types.VARCHAR),
			   
	    };
		simpleJdbcCall.declareParameters(parameters);
		   SqlParameterSource in = new MapSqlParameterSource()
		   .addValue("p_fromdate", fdate)
	   	    .addValue("p_todate",tdate)
	   	     .addValue("p_projectid",project_id);
		    Map<String, Object> out = simpleJdbcCall.execute(in);
		     // System.out.println(out.get("rs").toString());
		      List<ReportModel> list=(List<ReportModel>) out.get("rs");
		      return list;
	}
	@Override
	public List<ReportModel> do_report1(String fdate, String tdate,
			String dept_id,String people) {
		SimpleJdbcCall simpleJdbcCall = new SimpleJdbcCall(jdbcTemplateObject)
		.withProcedureName("sp_report_from1").returningResultSet("rs", 
						BeanPropertyRowMapper.newInstance(ReportModel.class));
		SqlParameter[] parameters = {
				new SqlParameter("p_fromdate",Types.DATE),
				new SqlParameter("p_todate",Types.DATE),
				new SqlParameter("p_dept_id",Types.VARCHAR),
				new SqlParameter("p_employee",Types.VARCHAR)
			   
	    };
		simpleJdbcCall.declareParameters(parameters);
		   SqlParameterSource in = new MapSqlParameterSource()
		   .addValue("p_fromdate", fdate)
	   	    .addValue("p_todate",tdate)
	   	    .addValue("p_dept_id",dept_id)
	   	    .addValue("p_employee", people);
		    Map<String, Object> out = simpleJdbcCall.execute(in);
		     // System.out.println(out.get("rs").toString());
		      List<ReportModel> list=(List<ReportModel>) out.get("rs");
		      return list;
	}
	

}
