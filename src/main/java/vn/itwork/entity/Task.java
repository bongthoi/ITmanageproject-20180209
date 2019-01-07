package vn.itwork.entity;


public class Task {

	private String id;
	private String title;
	private String description;
	private String employee_id;
	private String first_visited_date;
	private int expect_time;
	private int spent_time;
	private int progress;
	private int task_status;
	private String project_id;
	private String create_user;
	private String modify_user;
	private String create_date;
	private String modify_date;
	private int isdelete;
	private int count_visisted;
	private int Estimated_h;
	private int Estimated_m;
	private int Spent_h;
	private int Spent_m;
	
	private String task_status_html;
	
	private String project_name;
	
	
	
	
	
	public String getProject_name() {
		return project_name;
	}
	public void setProject_name(String project_name) {
		this.project_name = project_name;
	}
	public String getTask_status_html() {
		return task_status_html;
	}
	public void setTask_status_html(String task_status_html) {
		this.task_status_html = task_status_html;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(String employee_id) {
		this.employee_id = employee_id;
	}
	
	public int getExpect_time() {
		return expect_time;
	}
	public void setExpect_time(int expect_time) {
		this.expect_time = expect_time;
	}
	public int getSpent_time() {
		return spent_time;
	}
	public void setSpent_time(int spent_time) {
		this.spent_time = spent_time;
	}
	public int getProgress() {
		return progress;
	}
	public void setProgress(int progress) {
		this.progress = progress;
	}
	public int getTask_status() {
		return task_status;
	}
	public void setTask_status(int task_status) {
		this.task_status = task_status;
	}
	public String getProject_id() {
		return project_id;
	}
	public void setProject_id(String project_id) {
		this.project_id = project_id;
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
	
	public int getIsdelete() {
		return isdelete;
	}
	public void setIsdelete(int isdelete) {
		this.isdelete = isdelete;
	}
	public int getCount_visisted() {
		return count_visisted;
	}
	public void setCount_visisted(int count_visisted) {
		this.count_visisted = count_visisted;
	}
	public int getEstimated_h() {
		return Estimated_h;
	}
	public void setEstimated_h(int estimated_h) {
		Estimated_h = estimated_h;
	}
	public int getEstimated_m() {
		return Estimated_m;
	}
	public void setEstimated_m(int estimated_m) {
		Estimated_m = estimated_m;
	}
	public int getSpent_h() {
		return Spent_h;
	}
	public void setSpent_h(int spent_h) {
		Spent_h = spent_h;
	}
	public int getSpent_m() {
		return Spent_m;
	}
	public void setSpent_m(int spent_m) {
		Spent_m = spent_m;
	}
	
	
	public String getFirst_visited_date() {
		return first_visited_date;
	}
	public void setFirst_visited_date(String first_visited_date) {
		this.first_visited_date = first_visited_date;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	public String getModify_date() {
		return modify_date;
	}
	public void setModify_date(String modify_date) {
		this.modify_date = modify_date;
	}
	@Override
	public String toString() {
		return "Task [id=" + id + ", title=" + title + ", description="
				+ description + ", employee_id=" + employee_id
				+ ", first_visited_date=" + first_visited_date
				+ ", expect_time=" + expect_time + ", spent_time=" + spent_time
				+ ", progress=" + progress + ", task_status=" + task_status
				+ ", project_id=" + project_id + ", create_user=" + create_user
				+ ", modify_user=" + modify_user + ", create_date="
				+ create_date + ", modify_date=" + modify_date + ", isdelete="
				+ isdelete + ", count_visisted=" + count_visisted
				+ ", Estimated_h=" + Estimated_h + ", Estimated_m="
				+ Estimated_m + ", Spent_h=" + Spent_h + ", Spent_m=" + Spent_m
				+ "]";
	}
	
	
	
	
	
	
}
