package vn.itwork.entity;

import java.sql.Date;



public class Project {

	private String id;
	private String name;
	private String description;
	private String start_date;
	private String end_date;
	private String manager_user;
	private int project_status;
	private float time_spent;
	private Date create_date;
	private Date modify_date;
	private String create_user;
	private String modify_user;
	private float expect_time;
	private String project_status_name;
	
	private int contributors;
	private int itemcompletion;
	private int total_spent;
	
	
	
	
	public int getContributors() {
		return contributors;
	}
	public void setContributors(int contributors) {
		this.contributors = contributors;
	}
	public int getItemcompletion() {
		return itemcompletion;
	}
	public void setItemcompletion(int itemcompletion) {
		this.itemcompletion = itemcompletion;
	}
	public int getTotal_spent() {
		return total_spent;
	}
	public void setTotal_spent(int total_spent) {
		this.total_spent = total_spent;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}

	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
	public String getManager_user() {
		return manager_user;
	}
	public void setManager_user(String manager_user) {
		this.manager_user = manager_user;
	}
	public int getProject_status() {
		return project_status;
	}
	public void setProject_status(int project_status) {
		this.project_status = project_status;
	}
	
	public Date getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}
	public Date getModify_date() {
		return modify_date;
	}
	public void setModify_date(Date modify_date) {
		this.modify_date = modify_date;
	}
	public String getCreate_user() {
		return create_user;
	}
	public void setCreate_user(String create_user) {
		this.create_user = create_user;
	}
	public String getModify_user() {
		return modify_user;
	}
	public void setModify_user(String modify_user) {
		this.modify_user = modify_user;
	}
	public String getProject_status_name() {
		return project_status_name;
	}
	public void setProject_status_name(String project_status_name) {
		this.project_status_name = project_status_name;
	}
	public float getTime_spent() {
		return time_spent;
	}
	public void setTime_spent(float time_spent) {
		this.time_spent = time_spent;
	}
	public float getExpect_time() {
		return expect_time;
	}
	public void setExpect_time(float expect_time) {
		this.expect_time = expect_time;
	}
	
	
	
	
}
