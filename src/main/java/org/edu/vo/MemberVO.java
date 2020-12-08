package org.edu.vo;

import java.util.Date;

/**
 * 회원정보관리용 클래스
 * @author 뚫어봐 2020-12-04 생성
 *
 */

public class MemberVO {
	//멤버변수 선언
	private String user_id;//private: 이 클래스 안에서만 사용가능(보안)
	private String user_pw;
	private String user_name;
	private String email;
	private Integer point; //int(not null)기본형 -> 참조형은 Integer(null가능) 클래스 변수
	//값을 보내거나 받을때 int가 null이면 에러나지만 Integer은 에러가 안남.
	private boolean enabled;
	private String levels;
	private Date reg_date; //Date클래스형 변수를 사용할때 java.util패키리를 import한다.
	private Date update_date;
	
	//get,set 메소드가 필요한 이유는 member_list(write,update).jsp<-메소드>컨트롤러<->메소드->DB 
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Integer getPoint() {
		return point;
	}
	public void setPoint(Integer point) {
		this.point = point;
	}
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	public String getLevels() {
		return levels;
	}
	public void setLevels(String levels) {
		this.levels = levels;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public Date getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(Date update_date) {
		this.update_date = update_date;
	}
	@Override
	public String toString() {
		return "디버그 MemberVO [user_id=" + user_id +", user_pw=" + user_pw + ", user_name=" + user_name
				+ ", point=" + point + ", enabledd=" + enabled + ", levels=" + levels + ", reg_date=" + reg_date
				+ ", update_date=" + update_date + "]";
	}
}
