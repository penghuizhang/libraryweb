package com.library.entity;

public class Admin {

	private int begin;

	private int end;

	private String adminid;

	private String adminname;

	private String adminaccount;

	private String adminpwd;

	private String adminphone;

	private String adminqx;

	public int getBegin() {
		return begin;
	}

	public void setBegin(int begin) {
		this.begin = begin;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public String getAdminphone() {
		return adminphone;
	}

	public void setAdminphone(String adminphone) {
		this.adminphone = adminphone;
	}

	public String getAdminid() {
		return adminid;
	}

	public void setAdminid(String adminid) {
		this.adminid = adminid;
	}

	public String getAdminname() {
		return adminname;
	}

	public void setAdminname(String adminname) {
		this.adminname = adminname == null ? null : adminname.trim();
	}

	public String getAdminaccount() {
		return adminaccount;
	}

	public void setAdminaccount(String adminaccount) {
		this.adminaccount = adminaccount == null ? null : adminaccount.trim();
	}

	public String getAdminpwd() {
		return adminpwd;
	}

	public void setAdminpwd(String adminpwd) {
		this.adminpwd = adminpwd == null ? null : adminpwd.trim();
	}

	public String getAdminqx() {
		return adminqx;
	}

	public void setAdminqx(String adminqx) {
		this.adminqx = adminqx;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Admin [adminid=" + adminid + ", adminname=" + adminname + ", adminaccount=" + adminaccount
				+ ", adminpwd=" + adminpwd + ", adminphone=" + adminphone + "]";
	}

	public Admin(int begin, int end, Admin admin) {
		super();
		this.begin = begin;
		this.end = end;
		this.adminaccount = admin.adminaccount;
		this.adminname = admin.adminname;
		this.adminqx = admin.adminqx;

	}

	public Admin() {
		super();
	}

}