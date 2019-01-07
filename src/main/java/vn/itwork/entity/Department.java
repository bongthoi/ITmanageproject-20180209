package vn.itwork.entity;


/**
 * @author qui-r90270
 *table tb_department
 */
public class Department {
	public static final String TABLE="tb_department";
	private int order;
	private String dept_id;
	private String dept_name;
	private String dept_des;
	private String dept_manager_user;
	private int dept_visible;
	public int getOrder() {
		return order;
	}
	public void setOrder(int order) {
		this.order = order;
	}
	public String getDept_id() {
		return dept_id;
	}
	public void setDept_id(String dept_id) {
		this.dept_id = dept_id;
	}
	public String getDept_name() {
		return dept_name;
	}
	public void setDept_name(String dept_name) {
		this.dept_name = dept_name;
	}
	public String getDept_des() {
		return dept_des;
	}
	public void setDept_des(String dept_des) {
		this.dept_des = dept_des;
	}
	
	public int getDept_visible() {
		return dept_visible;
	}
	public void setDept_visible(int dept_visible) {
		this.dept_visible = dept_visible;
	}
	public String getDept_manager_user() {
		return dept_manager_user;
	}
	public void setDept_manager_user(String dept_manager_user) {
		this.dept_manager_user = dept_manager_user;
	}
	
	
}
