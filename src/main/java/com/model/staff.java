package com.model;
import javax.persistence.*;

@Entity
@Table(name = "login")
public class staff {
@Id		private int eid;
	private String username;
	private String password;
	public String getUsername() {
		return username;
	}
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	}


