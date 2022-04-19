package com.github.spellhaven.ex;

public class MemberDto {
	
	// joinOK에서 받은 데이터를, DTO(Data Transfer Object)가 DAO(Data Access Object)에 보내 줄 테니 안심하라고.
	
	private String id;
	private String pw;
	private String name;
	private String email;
	private String address;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}

	
	
	

}
