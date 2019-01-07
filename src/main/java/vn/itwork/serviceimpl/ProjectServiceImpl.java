package vn.itwork.serviceimpl;

import java.sql.Types;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.SqlOutParameter;
import org.springframework.jdbc.core.SqlParameter;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.stereotype.Repository;

import vn.itwork.entity.Members;
import vn.itwork.entity.Project;
import vn.itwork.entity.ResultExceute;
import vn.itwork.entity.User;
import vn.itwork.service.ProjectService;

@Repository("ProjectServiceImpl")
public class ProjectServiceImpl implements ProjectService  {

	@Autowired
	@Qualifier("templatejdbc")
	private  JdbcTemplate jdbcTemplateObject;

	@Override
	public int get_total_recorebyManagerOwer(String managerDepartment,int status) {
		String sql= new StringBuilder("")
		.append("SELECT COUNT(*) FROM ")
		.append(" tb_project")
		.append(" where manager_user = ?  and project_status=?")
		.toString();
		int total = jdbcTemplateObject.queryForObject(sql, new Object[] {managerDepartment,status},  int.class);
		return total;
	}

	@Override
	public List<Project> findprojectByOwer(String managerDepartment, int start,
			int limit,int status) {
		String sql=new StringBuilder("SELECT tb1.id,tb1.name,tb1.description,tb1.start_date,")
			.append("tb1.end_date,tb1.manager_user,tb1.project_status,tb1.time_spent,tb1.expect_time,")
		        .append("tb1.create_date,tb1.modify_date,tb1.create_user,tb1.modify_user,")
		        .append("tb2.name as project_status_name FROM ")
		.append(" tb_project tb1 ,tb_project_status tb2 ")
		.append(" where tb1.manager_user = ?  and tb1.project_status = tb2.id and tb1.project_status=? limit ?,? ").toString();
			List<Project> m=jdbcTemplateObject.query(sql, new Object[] {managerDepartment,status,start,limit}, 
								BeanPropertyRowMapper.newInstance( Project.class));
	return m;
	}

	@Override
	public ResultExceute insert_or_update(String sqltype, Project a,
			String username,String dept_id) {
	
		SimpleJdbcCall simpleJdbcCall = new SimpleJdbcCall(jdbcTemplateObject)
		.withProcedureName("sp_tb_project_add_edit");
		SqlParameter[] parameters = {
				new SqlParameter("p_sqltype",Types.VARCHAR),
				new SqlParameter("p_id",Types.VARCHAR),
	            new SqlParameter("p_name",Types.VARCHAR),
	            new SqlParameter("p_description",Types.VARCHAR),
	            new SqlParameter("p_start_date",Types.VARCHAR),
	            new SqlParameter("p_end_date",Types.VARCHAR),
	            new SqlParameter("p_manager_user",Types.VARCHAR),
	            new SqlParameter("p_department",Types.VARCHAR),
	            new SqlOutParameter("p_return_code", Types.INTEGER),
	            new SqlOutParameter("p_return_message", Types.VARCHAR),
	            new SqlOutParameter("p_fullerror", Types.VARCHAR)
	    };
		simpleJdbcCall.declareParameters(parameters);
		   SqlParameterSource in = new MapSqlParameterSource()
		   		.addValue("p_sqltype", sqltype)
		   	     .addValue("p_id",a.getId())
		   	     .addValue("p_name", a.getName())
	            .addValue("p_description",a.getDescription())
	            .addValue("p_start_date",a.getStart_date())
	            .addValue("p_manager_user",username)
	            .addValue("p_end_date",a.getEnd_date())
	             .addValue("p_department",dept_id);
		   	

		   Map<String,Object> out= simpleJdbcCall.execute(in);
		   ResultExceute re=new ResultExceute();
		   re.setP_return_code(Integer.parseInt(out.get("p_return_code").toString()));
		   re.setP_return_message(out.get("p_return_message").toString());
		   re.setP_fullerror(out.get("p_fullerror").toString());
		   return re;
	}

	@Override
	public Project getProjectByIdAndOwer(String managerDepartment, String id) {
		String sql=new StringBuilder("SELECT id, name, description, DATE_FORMAT(start_date,'%Y-%m-%d') as start_date,DATE_FORMAT(expect_date,'%Y-%m-%d') as expect_date, end_date, manager_user, ")
		.append ("project_status, total_time, create_date, modify_date, create_user, modify_user ")
	.append(" FROM tb_project tb1  ")
	.append(" where tb1.manager_user = ?  and  tb1.id=?").toString();
		Project m=jdbcTemplateObject.queryForObject(sql, new Object[] {managerDepartment,id}, BeanPropertyRowMapper.newInstance( Project.class));
		
		return m;
	}

	@Override
	public List<Members> getMembers(String managerDepartment, String id) {
		String sql=new StringBuilder("SELECT * FROM ")
	.append(" tb_employees_project tb1 ")
	.append(" where create_user=? and  project_id= ?").toString();
	List<Members> m=jdbcTemplateObject.query(sql, new Object[] {managerDepartment,id}, 
							BeanPropertyRowMapper.newInstance( Members.class));
			return m;
	}

	@Override
	public List<Project> getAllprojectActive(String managerDepartment) {
		String sql="select id,name,description from tb_project where project_status=1 and manager_user=?";
		List<Project> m=jdbcTemplateObject.query(sql, new Object[] {managerDepartment}, 
				BeanPropertyRowMapper.newInstance( Project.class));
		return m;
	}

	@Override
	public List<Project> getProjectActive2(String employee) {
		String sql="select tb1.id,tb1.name from tb_project tb1 ,tb_employees_project tb2 where tb1.project_status=1 and tb1.id=tb2.project_id and tb2.user_id=? ";
		List<Project> m=jdbcTemplateObject.query(sql, new Object[] {employee}, 
				BeanPropertyRowMapper.newInstance( Project.class));
		return m;
	}

	@Override
	public List<Project> getProjectNotin(String employee) {
		String sql="select tb1.id,tb1.name from tb_project tb1  where tb1.project_status=1 "
				+ " and tb1.id not in (select tb2.project_id from tb_employees_project tb2  where tb2.user_id=? ) ";
		List<Project> m=jdbcTemplateObject.query(sql, new Object[] {employee}, 
				BeanPropertyRowMapper.newInstance( Project.class));
		return m;
	}

	@Override
	public ResultExceute ins_em(String employee, String project,
			String description) {
		SimpleJdbcCall simpleJdbcCall = new SimpleJdbcCall(jdbcTemplateObject)
		.withProcedureName("sp_tb_project_add_em");
		SqlParameter[] parameters = {
				new SqlParameter("p_employee",Types.VARCHAR),
				new SqlParameter("p_project",Types.VARCHAR),
	            new SqlParameter("p_description",Types.VARCHAR),
	        
	            new SqlOutParameter("p_return_code", Types.INTEGER),
	            new SqlOutParameter("p_return_message", Types.VARCHAR),
	            new SqlOutParameter("p_fullerror", Types.VARCHAR)
	    };
		simpleJdbcCall.declareParameters(parameters);
		   SqlParameterSource in = new MapSqlParameterSource()
		   		.addValue("p_employee", employee)
		   	     .addValue("p_project",project)
		   	     .addValue("p_description",description);
		   Map<String,Object> out= simpleJdbcCall.execute(in);
		   ResultExceute re=new ResultExceute();
		   re.setP_return_code(Integer.parseInt(out.get("p_return_code").toString()));
		   re.setP_return_message(out.get("p_return_message").toString());
		   re.setP_fullerror(out.get("p_fullerror").toString());
		   return re;
	}

	@Override
	public List<Project> getProjectin(String employee) {
		String sql="select tb1.id,tb1.name,tb2.description from tb_project tb1,tb_employees_project tb2   where tb1.project_status=1 "
				+ " and tb1.id=tb2.project_id  and tb2.user_id=?  ";
		List<Project> m=jdbcTemplateObject.query(sql, new Object[] {employee}, 
				BeanPropertyRowMapper.newInstance( Project.class));
		return m;
	}

	@Override
	public int delete_em(String employee, String project) {
		String sql = "Delete from tb_employees_project "
				+ " WHERE user_id =? and  project_id=?";
		int result=jdbcTemplateObject.update(sql,new Object[] {
				employee,project
		});
		return result;
	}

	@Override
	public void dailyUpdate() {
		SimpleJdbcCall simpleJdbcCall = new SimpleJdbcCall(jdbcTemplateObject)
		.withProcedureName("sp_tb_project_daily_update");
		 simpleJdbcCall.execute();
	}

	@Override
	public Project getstatisticsById(String id) {
		SimpleJdbcCall simpleJdbcCall = new SimpleJdbcCall(jdbcTemplateObject)
		.withProcedureName("sp_project_statstics").returningResultSet("rs", 
						BeanPropertyRowMapper.newInstance(Project.class));
		SqlParameter[] parameters = {
	            new SqlParameter("p_project_id",Types.VARCHAR)
	          
	    };
		simpleJdbcCall.declareParameters(parameters);
		   SqlParameterSource in = new MapSqlParameterSource()
           .addValue("p_project_id", id);
		      Map<String, Object> out = simpleJdbcCall.execute(in);
		     // System.out.println(out.get("rs").toString());
		      List<Project> list=(List<Project>) out.get("rs");
		      if(list.size()>0){
		    	  return list.get(0);
		      }
		      else{
		    	  return new Project();
		      }
	}

	@Override
	public List<Project> getALLActive() {
		String sql="select id,name from tb_project  ";
		List<Project> m=jdbcTemplateObject.query(sql, new Object[] {}, 
				BeanPropertyRowMapper.newInstance( Project.class));
		return m;
	}

	@Override
	public List<Project> getALL(String department) {
		String sql="select id,name from tb_project where dept_id=? ";
		List<Project> m=jdbcTemplateObject.query(sql, new Object[] {department}, 
				BeanPropertyRowMapper.newInstance( Project.class));
		return m;
	}
	
	
}
