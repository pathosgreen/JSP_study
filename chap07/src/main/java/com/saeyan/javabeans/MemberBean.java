package com.saeyan.javabeans;

public class MemberBean {
	// 필드
	private String name;
	private String userid;
	
	// 생성자
	// 매개변수가 없는 생성자
	public MemberBean() {}
	// name,userid 매개변수가 있는 생성자
	public MemberBean(String name, String userid) {
		this.name = name;
		this.userid = userid;
	}
	// get,set
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	// toString
	@Override
	public String toString() {
		return "MemberBean[name="+name+", userid="+userid+"]";
	}
}
