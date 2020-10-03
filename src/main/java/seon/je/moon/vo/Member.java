/*
 * mb_num int AI PK 
mb_id varchar(45) 
mb_password varchar(45) 
mb_name varchar(45) 
mb_auth varchar(45) 
mb_del
 */
package seon.je.moon.vo;

public class Member {
	private int mb_num;
	private String mb_id;
	private String mb_password;
	private String mb_name;
	private String mb_auth;
	private String mb_del;
	public int getMb_num() {
		return mb_num;
	}
	public void setMb_num(int mb_num) {
		this.mb_num = mb_num;
	}
	public String getMb_id() {
		return mb_id;
	}
	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}
	public String getMb_password() {
		return mb_password;
	}
	public void setMb_password(String mb_password) {
		this.mb_password = mb_password;
	}
	public String getMb_name() {
		return mb_name;
	}
	public void setMb_name(String mb_name) {
		this.mb_name = mb_name;
	}
	public String getMb_auth() {
		return mb_auth;
	}
	public void setMb_auth(String mb_auth) {
		this.mb_auth = mb_auth;
	}
	public String getMb_del() {
		return mb_del;
	}
	public void setMb_del(String mb_del) {
		this.mb_del = mb_del;
	}
	@Override
	public String toString() {
		return "Member [mb_num=" + mb_num + ", mb_id=" + mb_id + ", mb_password=" + mb_password + ", mb_name=" + mb_name
				+ ", mb_auth=" + mb_auth + ", mb_del=" + mb_del + "]";
	}
	
	
	
}
