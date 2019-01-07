package vn.itwork.serviceimpl;

import java.sql.Types;
import java.util.ArrayList;
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

import vn.itwork.entity.Department;
import vn.itwork.entity.ResultExceute;
import vn.itwork.entity.User;
import vn.itwork.service.UserService;

@Repository("UserServiceImpl")
public class UserServiceImpl implements UserService {


	@Autowired
	@Qualifier("templatejdbc")
	private  JdbcTemplate jdbcTemplateObject;

	@Override
	public int get_total_recore(String username) {
		String sql= new StringBuilder("")
		.append("SELECT COUNT(*) FROM ")
		.append(User.TABLE +" tb2 ")
		.append(" where username like '%"+username+"%' and user_role<>'ROLE_ADMIN'")
		.toString();
		int total = jdbcTemplateObject.queryForObject(sql, new Object[] {},  int.class);
		return total;
	}

	@Override
	public List<User> find(String username, int start, int limit) {
		String sql=new StringBuilder("SELECT tb1.username,tb1.name,tb1.phone,tb1.department,tb1.positon,")
				.append("tb1.user_role,tb1.enabled,tb1.create_date,tb1.create_user,")
				.append("tb2.dept_name FROM ")
				.append(User.TABLE +" tb1 ," + Department.TABLE + " tb2 ")
				.append(" where tb1.username like '%"+username+"%' and tb1.user_role<>'ROLE_ADMIN'  and tb1.department = tb2.dept_id limit ?,? ")
		.toString();
			List<User> m=jdbcTemplateObject.query(sql, new Object[] {start,limit}, 
				BeanPropertyRowMapper.newInstance( User.class));
			return m;
	}

	@Override
	public ResultExceute insert_or_update_User(User a, String sqltype,String create_user) {
		
		SimpleJdbcCall simpleJdbcCall = new SimpleJdbcCall(jdbcTemplateObject)
		.withProcedureName("sp_tb_user_add_edit");
		SqlParameter[] parameters = {
				new SqlParameter("p_sqltype",Types.VARCHAR),
				new SqlParameter("p_user_name",Types.VARCHAR),
	            new SqlParameter("p_password",Types.VARCHAR),
	            new SqlParameter("p_name",Types.VARCHAR),
	            new SqlParameter("p_phone",Types.VARCHAR),
	            new SqlParameter("p_department",Types.VARCHAR),
	            new SqlParameter("p_positon",Types.VARCHAR),
	            new SqlParameter("p_user_role",Types.VARCHAR),
	            new SqlParameter("p_enabled",Types.TINYINT),
	            new SqlParameter("p_create_user",Types.VARCHAR),
	            
	            
	            new SqlOutParameter("p_return_code", Types.INTEGER),
	            new SqlOutParameter("p_return_message", Types.VARCHAR),
	            new SqlOutParameter("p_fullerror", Types.VARCHAR)
	    };
		simpleJdbcCall.declareParameters(parameters);
		   SqlParameterSource in = new MapSqlParameterSource()
		   		.addValue("p_sqltype", sqltype)
		   	     .addValue("p_user_name",a.getUsername())
	            .addValue("p_password",a.getPassword())
	            .addValue("p_name",a.getName())
	            .addValue("p_phone",a.getPhone())
	            .addValue("p_department",a.getDepartment())
	            .addValue("p_positon",a.getPositon())
	            .addValue("p_user_role",a.getUser_role())
	            .addValue("p_enabled",a.getEnabled())
	            .addValue("p_create_user",create_user);
		   		
		   Map<String,Object> out= simpleJdbcCall.execute(in);
		   ResultExceute re=new ResultExceute();
		   re.setP_return_code(Integer.parseInt(out.get("p_return_code").toString()));
		   re.setP_return_message(out.get("p_return_message").toString());
		   re.setP_fullerror(out.get("p_fullerror").toString());
		   return re;
	}

	@Override
	public int activestatus(String ids, int status) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public User getUser(String managerDepartment) {
		String sql="select *  FROM tb_user where username='"+managerDepartment+"';";
		 User  a= jdbcTemplateObject.queryForObject(sql, new Object[] {}, BeanPropertyRowMapper.newInstance( User.class));
		return a;
	}

	@Override
	public int get_total_recorebyManagerOwer(String findusername, String manager,
			String indepartment) {
		String sql=new StringBuilder("SELECT COUNT(*)")
		.append("FROM ")
		.append(User.TABLE +" tb1 ," + Department.TABLE + " tb2 ")
		.append(" where tb1.username like '%"+findusername+"%'  and tb1.department = tb2.dept_id")
		.append(" and tb1.department='"+indepartment+"' and user_role<>'ROLE_ADMIN' ").toString();
		int total = jdbcTemplateObject.queryForObject(sql, new Object[] {},  int.class);
		return total;
	}

	@Override
	public List<User> findEmployerbyDepartment(String findusername,
			String manager, String indepartment, int start, int limit) {
		String sql=new StringBuilder("SELECT tb1.username,tb1.name,tb1.phone,tb1.department,tb1.positon,")
		.append("tb1.user_role,tb1.enabled,tb1.create_date,tb1.create_user,")
		.append("tb2.dept_name FROM ")
		.append(User.TABLE +" tb1 ," + Department.TABLE + " tb2 ")
		.append(" where tb1.username like '%"+findusername+"%'  and tb1.department = tb2.dept_id")
		.append(" and tb1.department='"+indepartment+"' and user_role<>'ROLE_ADMIN' "
				+ " limit ?,? ").toString();
			List<User> m=jdbcTemplateObject.query(sql, new Object[] {start,limit}, 
				BeanPropertyRowMapper.newInstance( User.class));
			return m;
	}

	@Override
	public List<User> findEmployerbyDepartment(String department) {
		String sql=new StringBuilder("SELECT tb1.username,tb1.name,tb1.phone,tb1.department,tb1.positon,")
		.append("tb1.user_role,tb1.enabled,tb1.create_date,tb1.create_user,")
		.append("tb2.dept_name FROM ")
		.append(User.TABLE +" tb1 ," + Department.TABLE + " tb2 ")
		.append(" where  tb1.department = tb2.dept_id")
		.append(" and tb1.department='"+department+"' and user_role<>'ROLE_ADMIN' ").toString();
			List<User> m=jdbcTemplateObject.query(sql, new Object[] {}, 
				BeanPropertyRowMapper.newInstance( User.class));
			return m;
	}

	@Override
	public List<User> getallUserbyDepartment(String department) {
		String sql="select username,name from tb_user where department=? and user_role<>'ROLE_ADMIN' and enabled=1";
		List<User> m=jdbcTemplateObject.query(sql, new Object[] {department}, 
				BeanPropertyRowMapper.newInstance( User.class));
			return m;
	}

	@Override
	public List<User> findALLEmployerbyDepartmentAndstatistics(String department) {
		List<User> list=new ArrayList<User>();
		String sql="select username "
				+ " from tb_user where department='"+department+"' and user_role <>'ROLE_ADMIN' and enabled=1";
		List<Map<String, Object>> rows =jdbcTemplateObject.queryForList(sql);
		for (Map row : rows) {
			String username=(String) (row.get("username"));
			User user = new User();
			user=this.getUser_statistics(username);
			list.add(user);
		}

		return list;
	}

	@Override
	public User getUser_statistics(String username) {
		SimpleJdbcCall simpleJdbcCall = new SimpleJdbcCall(jdbcTemplateObject)
		.withProcedureName("sp_user_statistics").returningResultSet("rs", 
						BeanPropertyRowMapper.newInstance(User.class));
		SqlParameter[] parameters = {
	            new SqlParameter("p_id",Types.VARCHAR)
	          
	    };
		simpleJdbcCall.declareParameters(parameters);
		   SqlParameterSource in = new MapSqlParameterSource()
           .addValue("p_username", username);
		      Map<String, Object> out = simpleJdbcCall.execute(in);
		     // System.out.println(out.get("rs").toString());
		      List<User> list=(List<User>) out.get("rs");
		      return list.get(0);
	}
	@Override
	public List<User> getALLenableEmployee(String department) {
		String sql="select * from tb_user where enabled=1 and user_role='ROLE_EMPLOYEE' and department=?";
		List<User> m=jdbcTemplateObject.query(sql, new Object[] {department}, 
				BeanPropertyRowMapper.newInstance( User.class));
			return m;
	}
	
	
}
