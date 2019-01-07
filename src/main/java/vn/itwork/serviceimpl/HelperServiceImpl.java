package vn.itwork.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import vn.itwork.entity.ItemStatus;
import vn.itwork.service.HelperService;


@Repository("HelperServiceImpl")
public class HelperServiceImpl implements HelperService {


	@Autowired
	@Qualifier("templatejdbc")
	private  JdbcTemplate jdbcTemplateObject;

	@Override
	public List<ItemStatus> get_status_from_table(String table_name) {
		String sql="select * from "+table_name ;
		List<ItemStatus> m=jdbcTemplateObject.query(sql, new Object[] {}, 
												BeanPropertyRowMapper.newInstance( ItemStatus.class));
		return m;
	}

}
