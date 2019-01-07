package vn.itwork.serviceimpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.SqlOutParameter;
import org.springframework.jdbc.core.SqlParameter;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.stereotype.Repository;

import vn.itwork.entity.ResultExceute;
import vn.itwork.entity.Task;
import vn.itwork.entity.User;
import vn.itwork.helper.ExtraHelpper;
import vn.itwork.service.TaskService;


@Repository("TaskServiceImpl")
public class TaskServiceImpl implements TaskService {

	
	@Autowired
	@Qualifier("templatejdbc")
	private  JdbcTemplate jdbcTemplateObject;
	
	@Override
	public ResultExceute insert_or_update(String sqltype, Task a,
			String username) {
		a.setExpect_time(ExtraHelpper.cacl_sum_minute(a.getEstimated_h(), a.getEstimated_m()));
		a.setSpent_time(ExtraHelpper.cacl_sum_minute(a.getSpent_h(),a.getSpent_m()));
		
		SimpleJdbcCall simpleJdbcCall = new SimpleJdbcCall(jdbcTemplateObject)
		.withProcedureName("sp_tb_task_add_edit");
		SqlParameter[] parameters = {
				new SqlParameter("p_sqltype",Types.VARCHAR),
				new SqlParameter("p_id",Types.INTEGER),
				new SqlParameter("p_title",Types.VARCHAR),
				new SqlParameter("p_description",Types.VARCHAR),
				new SqlParameter("p_employee_id",Types.VARCHAR),
				new SqlParameter("p_expect_time",Types.INTEGER),
				new SqlParameter("p_spent_time",Types.INTEGER),
				new SqlParameter("p_progress",Types.INTEGER),
				new SqlParameter("p_task_status", Types.INTEGER),
				new SqlParameter("p_project_id",Types.VARCHAR),
				new SqlParameter("p_username",Types.VARCHAR),
	            new SqlOutParameter("p_return_code", Types.INTEGER),
	            new SqlOutParameter("p_return_message", Types.VARCHAR),
	            new SqlOutParameter("p_fullerror", Types.VARCHAR)
	    };
		simpleJdbcCall.declareParameters(parameters);
		   SqlParameterSource in = new MapSqlParameterSource()
		   		.addValue("p_sqltype", sqltype)
		   	    .addValue("p_id",a.getId())
				.addValue("p_title",a.getTitle())
				.addValue("p_description",a.getDescription())
				.addValue("p_employee_id",a.getEmployee_id())
				.addValue("p_expect_time",a.getExpect_time())
				.addValue("p_spent_time",a.getSpent_time())
				.addValue("p_progress",a.getProgress())
				.addValue("p_task_status",a.getTask_status())
				.addValue("p_project_id",a.getProject_id())
				.addValue("p_username",username);

		   Map<String,Object> out= simpleJdbcCall.execute(in);
		   ResultExceute re=new ResultExceute();
		   re.setP_return_code(Integer.parseInt(out.get("p_return_code").toString()));
		   re.setP_return_message(out.get("p_return_message").toString());
		   re.setP_fullerror(out.get("p_fullerror").toString());
		   return re;
	}

	@Override
	public int count_search_task(String project, int taskstatus,
			String tasktitle) {
		//System.out.println(project +"____" +taskstatus+"_____"+tasktitle);
		String sql= new StringBuilder("")
		.append(" call sp_tb_task_search_count(?,?,?)")
		.toString();
		int total = jdbcTemplateObject.queryForObject(sql, new Object[] {project,taskstatus,tasktitle},  int.class);
		return total;
	}

	@Override
	public List<Task> search_task(String project, int taskstatus,
			String tasktitle, int start, int limit) {
		SimpleJdbcCall simpleJdbcCall = new SimpleJdbcCall(jdbcTemplateObject)
		.withProcedureName("sp_tb_task_search").returningResultSet("rs", 
						BeanPropertyRowMapper.newInstance(Task.class));
		SqlParameter[] parameters = {
				new SqlParameter("p_project",Types.VARCHAR),
				new SqlParameter("p_taskstatus",Types.INTEGER),
				new SqlParameter("p_tasktitle",Types.VARCHAR),
				new SqlParameter("p_start",Types.INTEGER),
				new SqlParameter("p_limit",Types.INTEGER),
	            
	          
	    };
		simpleJdbcCall.declareParameters(parameters);
		   SqlParameterSource in = new MapSqlParameterSource()
		   .addValue("p_project", project)
	   	    .addValue("p_taskstatus",taskstatus)
			.addValue("p_tasktitle",tasktitle)
			.addValue("p_start",start)
			.addValue("p_limit",limit);
		    Map<String, Object> out = simpleJdbcCall.execute(in);
		     // System.out.println(out.get("rs").toString());
		      List<Task> list=(List<Task>) out.get("rs");
		      return list;
	}

	@Override
	public Task getTaskById(String id) {
		SimpleJdbcCall simpleJdbcCall = new SimpleJdbcCall(jdbcTemplateObject)
		.withProcedureName("sp_tb_task_getbyid").returningResultSet("rs", 
						BeanPropertyRowMapper.newInstance(Task.class));
		SqlParameter[] parameters = {
				new SqlParameter("p_id",Types.VARCHAR)
	    };
		simpleJdbcCall.declareParameters(parameters);
		   SqlParameterSource in = new MapSqlParameterSource()
		   .addValue("p_id", id);
		    Map<String, Object> out = simpleJdbcCall.execute(in);
		     // System.out.println(out.get("rs").toString());
		      List<Task> list=(List<Task>) out.get("rs");
		      if(list.size()>0){
		    	  return list.get(0);
		      }else{
		    	  return new Task();
		      }
		    
	}

	@Override
	public ResultExceute update1(String task_id, int task_progress,
			int task_expect_time, String task_title, String project_id,
			String log, String username) {
		SimpleJdbcCall simpleJdbcCall = new SimpleJdbcCall(jdbcTemplateObject)
		.withProcedureName("sp_tb_task_update1");
		SqlParameter[] parameters = {
				new SqlParameter("p_task_id",Types.VARCHAR),
				new SqlParameter("p_task_progress",Types.INTEGER),
				new SqlParameter("p_task_expect_time",Types.INTEGER),
				new SqlParameter("p_log",Types.VARCHAR),
				new SqlParameter("p_project_id",Types.VARCHAR),
				new SqlParameter("p_title",Types.VARCHAR),
				new SqlParameter("p_ower",Types.VARCHAR),
	            new SqlOutParameter("p_return_code", Types.INTEGER),
	            new SqlOutParameter("p_return_message", Types.VARCHAR),
	            new SqlOutParameter("p_fullerror", Types.VARCHAR)
	    };
		simpleJdbcCall.declareParameters(parameters);
		   SqlParameterSource in = new MapSqlParameterSource()
		   		.addValue("p_task_id", task_id)
		   	    .addValue("p_task_progress",task_progress)
				.addValue("p_task_expect_time",task_expect_time)
				.addValue("p_log",log)
				.addValue("p_project_id",project_id)
				.addValue("p_title",task_title)
				.addValue("p_ower",username);

		   Map<String,Object> out= simpleJdbcCall.execute(in);
		   ResultExceute re=new ResultExceute();
		   re.setP_return_code(Integer.parseInt(out.get("p_return_code").toString()));
		   re.setP_return_message(out.get("p_return_message").toString());
		   re.setP_fullerror(out.get("p_fullerror").toString());
		   return re;
	}

	@Override
	public ResultExceute update2(Task a, String log, String username) {
		SimpleJdbcCall simpleJdbcCall = new SimpleJdbcCall(jdbcTemplateObject)
		.withProcedureName("sp_tb_task_update2");
		SqlParameter[] parameters = {
				new SqlParameter("p_task_id",Types.VARCHAR),
				new SqlParameter("p_task_progress",Types.INTEGER),
				new SqlParameter("p_task_expect_time",Types.INTEGER),
				new SqlParameter("p_log",Types.VARCHAR),
				new SqlParameter("p_project_id",Types.VARCHAR),
				new SqlParameter("p_title",Types.VARCHAR),
				new SqlParameter("p_description",Types.VARCHAR),
				new SqlParameter("p_employee",Types.VARCHAR),
				new SqlParameter("p_ower",Types.VARCHAR),
	            new SqlOutParameter("p_return_code", Types.INTEGER),
	            new SqlOutParameter("p_return_message", Types.VARCHAR),
	            new SqlOutParameter("p_fullerror", Types.VARCHAR)
	    };
		simpleJdbcCall.declareParameters(parameters);
		   SqlParameterSource in = new MapSqlParameterSource()
		   		.addValue("p_task_id", a.getId())
		   	    .addValue("p_task_progress",a.getProgress())
				.addValue("p_task_expect_time",a.getExpect_time())
				.addValue("p_log",log)
				.addValue("p_project_id",a.getProject_id())
				.addValue("p_title",a.getTitle())
				.addValue("p_description",a.getDescription())
				.addValue("p_employee",a.getEmployee_id())
				.addValue("p_ower",username);

		   Map<String,Object> out= simpleJdbcCall.execute(in);
		   ResultExceute re=new ResultExceute();
		   re.setP_return_code(Integer.parseInt(out.get("p_return_code").toString()));
		   re.setP_return_message(out.get("p_return_message").toString());
		   re.setP_fullerror(out.get("p_fullerror").toString());
		   return re;
	}

	@Override
	public ResultExceute update3(String task_id, int task_progress,
			int task_spent_time, String task_title, String project_id,
			String log, String username) {
		SimpleJdbcCall simpleJdbcCall = new SimpleJdbcCall(jdbcTemplateObject)
		.withProcedureName("sp_tb_task_update3");
		SqlParameter[] parameters = {
				new SqlParameter("p_task_id",Types.VARCHAR),
				new SqlParameter("p_task_progress",Types.INTEGER),
				new SqlParameter("p_spent_time",Types.INTEGER),
				new SqlParameter("p_log",Types.VARCHAR),
				new SqlParameter("p_project_id",Types.VARCHAR),
				new SqlParameter("p_title",Types.VARCHAR),
				new SqlParameter("p_ower",Types.VARCHAR),
	            new SqlOutParameter("p_return_code", Types.INTEGER),
	            new SqlOutParameter("p_return_message", Types.VARCHAR),
	            new SqlOutParameter("p_fullerror", Types.VARCHAR)
	    };
		simpleJdbcCall.declareParameters(parameters);
		   SqlParameterSource in = new MapSqlParameterSource()
		   		.addValue("p_task_id", task_id)
		   	    .addValue("p_task_progress",task_progress)
				.addValue("p_spent_time",task_spent_time)
				.addValue("p_log",log)
				.addValue("p_project_id",project_id)
				.addValue("p_title",task_title)
				.addValue("p_ower",username);

		   Map<String,Object> out= simpleJdbcCall.execute(in);
		   ResultExceute re=new ResultExceute();
		   re.setP_return_code(Integer.parseInt(out.get("p_return_code").toString()));
		   re.setP_return_message(out.get("p_return_message").toString());
		   re.setP_fullerror(out.get("p_fullerror").toString());
		   return re;
	}

	@Override
	public int count_search_task(String project, int taskstatus,
			String tasktitle, String employee) {
		String sql= new StringBuilder("")
		.append(" call sp_tb_task_search_countbyemployee(?,?,?,?)")
		.toString();
		int total = jdbcTemplateObject.queryForObject(sql, new Object[] {project,taskstatus,tasktitle,employee},  int.class);
		return total;
	}

	@Override
	public List<Task> search_task(String employee, String project,
			int taskstatus, String tasktitle, int start, int limit) {
		SimpleJdbcCall simpleJdbcCall = new SimpleJdbcCall(jdbcTemplateObject)
		.withProcedureName("sp_tb_task_searchbyemployee").returningResultSet("rs", 
						BeanPropertyRowMapper.newInstance(Task.class));
		SqlParameter[] parameters = {
				new SqlParameter("p_project",Types.VARCHAR),
				new SqlParameter("p_taskstatus",Types.INTEGER),
				new SqlParameter("p_tasktitle",Types.VARCHAR),
				new SqlParameter("p_employee",Types.VARCHAR),
				new SqlParameter("p_start",Types.INTEGER),
				new SqlParameter("p_limit",Types.INTEGER),
	    };
		simpleJdbcCall.declareParameters(parameters);
		   SqlParameterSource in = new MapSqlParameterSource()
		   .addValue("p_project", project)
	   	    .addValue("p_taskstatus",taskstatus)
			.addValue("p_tasktitle",tasktitle)
			.addValue("p_employee",employee)
			.addValue("p_start",start)
			.addValue("p_limit",limit);
		    Map<String, Object> out = simpleJdbcCall.execute(in);
		     // System.out.println(out.get("rs").toString());
		      List<Task> list=(List<Task>) out.get("rs");
		      return list;
	}

	

}
