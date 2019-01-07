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

import vn.itwork.entity.Department;
import vn.itwork.entity.ResultExceute;
import vn.itwork.service.DepartmentService;

@Repository("DepartmentServiceImpl")
public class DepartmentServiceImpl  implements DepartmentService{

	@Autowired
	@Qualifier("templatejdbc")
	private  JdbcTemplate jdbcTemplateObject;

	@Override
	public List<Department> get_all() {
		String sql=new StringBuilder("Select * from " + Department.TABLE).toString();
		List<Department> m=jdbcTemplateObject.query(sql, new Object[] {}, BeanPropertyRowMapper.newInstance( Department.class));
		return m;
	}

	@Override
	public int get_total_recore() {
		String sql= new StringBuilder("")
		.append("SELECT COUNT(*) FROM ")
		.append(Department.TABLE +" tb2 ")
		.toString();
		int total = jdbcTemplateObject.queryForObject(sql, new Object[] {},  int.class);
		return total;
	}

	@Override
	public List<Department> find(int start, int limit) {
		String sql=new StringBuilder("SELECT * FROM ")
					.append(Department.TABLE +" tb2 ")
					.append("ORDER BY tb2.order ASC limit ?,? ")
					.toString();
		List<Department> m=jdbcTemplateObject.query(sql, new Object[] {start,limit}, 
				BeanPropertyRowMapper.newInstance( Department.class));
			return m;
	}

	@Override
	public ResultExceute insert_or_update_department(Department a,
			String sqltype) {
		SimpleJdbcCall simpleJdbcCall = new SimpleJdbcCall(jdbcTemplateObject)
		.withProcedureName("sp_tb_department_add_edit");
		SqlParameter[] parameters = {
				new SqlParameter("p_sqltype",Types.VARCHAR),
				new SqlParameter("p_dept_id",Types.VARCHAR),
	            new SqlParameter("p_dept_name",Types.VARCHAR),
	            new SqlParameter("p_dept_des",Types.VARCHAR),
	            new SqlParameter("p_dept_manager",Types.VARCHAR),
	            new SqlOutParameter("p_return_code", Types.INTEGER),
	            new SqlOutParameter("p_return_message", Types.VARCHAR),
	            new SqlOutParameter("p_fullerror", Types.VARCHAR)
	    };
		simpleJdbcCall.declareParameters(parameters);
		   SqlParameterSource in = new MapSqlParameterSource()
		   		.addValue("p_sqltype", sqltype)
		   		.addValue("p_dept_id",a.getDept_id())
	            .addValue("p_dept_name",a.getDept_name())
	            .addValue("p_dept_des",a.getDept_des())
				.addValue("p_dept_manager",a.getDept_manager_user());
		   Map<String,Object> out= simpleJdbcCall.execute(in);
		   ResultExceute re=new ResultExceute();
		   re.setP_return_code(Integer.parseInt(out.get("p_return_code").toString()));
		   re.setP_return_message(out.get("p_return_message").toString());
		   re.setP_fullerror(out.get("p_fullerror").toString());
		   return re;
	}
	@Override
	public int activestatus(String ids, int status) {
		String sql = "UPDATE tb_department SET "
				+ " dept_visible="+status
				+ " WHERE dept_id in ("+ids+")";
		
		int result=jdbcTemplateObject.update(sql);
		return result;
	}
}
