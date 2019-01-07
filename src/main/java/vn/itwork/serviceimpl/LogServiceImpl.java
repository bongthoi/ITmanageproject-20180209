package vn.itwork.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import vn.itwork.entity.Activity;
import vn.itwork.service.LogService;

@Repository("LogServiceImpl")
public class LogServiceImpl implements LogService{

	@Autowired
	@Qualifier("templatejdbc")
	private  JdbcTemplate jdbcTemplateObject;

	@Override
	public int get_totalbyuer(String username) {
		String sql="select count(*) from tb_recent_activity where ower=?";
		int total = jdbcTemplateObject.queryForObject(sql, new Object[] {username},  int.class);
		return total;
	}

	@Override
	public List<Activity> get_byusername(String username, int start, int limit) {
		String sql="select tb1.id, tb1.project_id, tb1.task_id, tb1.task_title, tb1.ower, tb1.action, tb1.activity_detail, tb1.create_date,"
				+ " tb2.name as action_name from tb_recent_activity tb1,tb_activity_action tb2 where tb1.ower=? and tb1.action=tb2.id"
				+ " order by tb1.id desc limit ?,?";
		List<Activity> a=jdbcTemplateObject.query(sql, new Object[] {username,start,limit}, 
				BeanPropertyRowMapper.newInstance( Activity.class));
		return a;
	}

	@Override
	public int get_totalbytask(String taskid) {
		String sql="select count(*) from tb_recent_activity where task_id=?";
		int total = jdbcTemplateObject.queryForObject(sql, new Object[] {taskid},  int.class);
		return total;
	}

	@Override
	public List<Activity> get_getbytask(String taskid, int start, int limit) {
		String sql="select tb1.id, tb1.project_id, tb1.task_id, tb1.task_title, tb1.ower, tb1.action, tb1.activity_detail, tb1.create_date,"
				+ " tb2.name as action_name from tb_recent_activity tb1,tb_activity_action tb2 where tb1.task_id=? and tb1.action=tb2.id"
				+ " order by tb1.id desc limit ?,?";
		List<Activity> a=jdbcTemplateObject.query(sql, new Object[] {taskid,start,limit}, 
				BeanPropertyRowMapper.newInstance( Activity.class));
		return a;
	}

}
