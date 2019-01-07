package vn.itwork.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import vn.itwork.entity.UserRole;
import vn.itwork.service.UserRoleService;



@Repository("UserRoleImpl")
public class UserRoleImpl implements UserRoleService {

	
	@Autowired
	@Qualifier("templatejdbc")
	private  JdbcTemplate jdbcTemplateObject;
	
	@Override
	public List<UserRole> get_rolebyAdmin() {
		String sql="select * from tb_role where id<>'ROLE_ADMIN'";
		List<UserRole> m=jdbcTemplateObject.query(sql, new Object[] {}, 
												BeanPropertyRowMapper.newInstance( UserRole.class));
		return m;
	}

}
