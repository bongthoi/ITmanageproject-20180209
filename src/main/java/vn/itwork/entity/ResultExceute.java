package vn.itwork.entity;

public class ResultExceute {

	private int p_return_code;
	private String p_return_message;
	private String p_fullerror;
	public int getP_return_code() {
		return p_return_code;
	}
	public void setP_return_code(int p_return_code) {
		this.p_return_code = p_return_code;
	}
	public String getP_return_message() {
		return p_return_message;
	}
	public void setP_return_message(String p_return_message) {
		this.p_return_message = p_return_message;
	}
	public String getP_fullerror() {
		return p_fullerror;
	}
	public void setP_fullerror(String p_fullerror) {
		this.p_fullerror = p_fullerror;
	}
	@Override
	public String toString() {
		return "ResultExceute [p_return_code=" + p_return_code
				+ ", p_return_message=" + p_return_message + ", p_fullerror="
				+ p_fullerror + "]";
	}
	
	
	
}
