package vn.itwork.entity;

import java.sql.Date;

public class User {
	
	public final static String TABLE="tb_user";
	private String username;
	private String password;
	private String name;
	private String phone;
	private String department;
	private String positon;
	private String user_role;
	private int enabled;
	private Date create_date;
	private String create_user;
	
	private String dept_name;


	private int projects;
	private int tasks;
	private int opened_tasks;
	private int closed_tasks;
	private int comments;
	
	private int total_time_spent;
	
	
	
	public int getTotal_time_spent() {
		return total_time_spent;
	}
	public void setTotal_time_spent(int total_time_spent) {
		this.total_time_spent = total_time_spent;
	}
	public int getTasks() {
		return tasks;
	}
	public void setTasks(int tasks) {
		this.tasks = tasks;
	}
	public int getProjects() {
		return projects;
	}
	public void setProjects(int projects) {
		this.projects = projects;
	}
	public int getOpened_tasks() {
		return opened_tasks;
	}
	public void setOpened_tasks(int opened_tasks) {
		this.opened_tasks = opened_tasks;
	}
	public int getClosed_tasks() {
		return closed_tasks;
	}
	public void setClosed_tasks(int closed_tasks) {
		this.closed_tasks = closed_tasks;
	}
	public int getComments() {
		return comments;
	}
	public void setComments(int comments) {
		this.comments = comments;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getPositon() {
		return positon;
	}
	public void setPositon(String positon) {
		this.positon = positon;
	}
	public String getUser_role() {
		return user_role;
	}
	public void setUser_role(String user_role) {
		this.user_role = user_role;
	}
	public int getEnabled() {
		return enabled;
	}
	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}
	public Date getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}
	public String getCreate_user() {
		return create_user;
	}
	public void setCreate_user(String create_user) {
		this.create_user = create_user;
	}
	public String getDept_name() {
		return dept_name;
	}
	public void setDept_name(String dept_name) {
		this.dept_name = dept_name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password
				+ ", name=" + name + ", phone=" + phone + ", department="
				+ department + ", positon=" + positon + ", user_role="
				+ user_role + ", enabled=" + enabled + ", create_date="
				+ create_date + ", create_user=" + create_user + ", dept_name="
				+ dept_name + "]";
	}
	
	
	

}
