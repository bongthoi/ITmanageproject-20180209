package vn.itwork.service;

import java.util.List;

import vn.itwork.entity.Activity;


public interface LogService {

	public int get_totalbyuer(String username) ;

	public List<Activity> get_byusername(String username, int start, int limit);

	public int get_totalbytask(String taskid);

	public List<Activity> get_getbytask(String taskid, int start, int limit);
	
	

}
