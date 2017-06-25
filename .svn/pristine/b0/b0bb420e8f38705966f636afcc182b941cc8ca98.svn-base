package com.library.entity;

import java.util.Date;

/**
 * @author admin
 *
 */
public class Selectbookrecord {
	// 分页
	private int begin;

	private int end;

	private String uname;
	private Date borrowtime;
	private String title;
	private String adminname;
	private String borrowRecordid;

	public String getBorrowRecordid() {
		return borrowRecordid;
	}

	public void setBorrowRecordid(String borrowRecordid) {
		this.borrowRecordid = borrowRecordid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname == null ? null : uname.trim();
	}

	public Date getBorrowtime() {
		return borrowtime;
	}

	public void setBorrowtime(Date borrowtime) {
		this.borrowtime = borrowtime;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title == null ? null : title.trim();
	}

	public String getAdminname() {
		return adminname;
	}

	public void setAdminname(String adminname) {
		this.adminname = adminname == null ? null : adminname.trim();
	}

	/**
	 * @return the begin
	 */
	public int getBegin() {
		return begin;
	}

	/**
	 * @param begin
	 *            the begin to set
	 */
	public void setBegin(int begin) {
		this.begin = begin;
	}

	/**
	 * @return the end
	 */
	public int getEnd() {
		return end;
	}

	/**
	 * @param end
	 *            the end to set
	 */
	public void setEnd(int end) {
		this.end = end;
	}

	/**
	 * 
	 */
	public Selectbookrecord() {
		// TODO Auto-generated constructor stub
	}

	public Selectbookrecord(int begin, int end, Selectbookrecord selectbookrecord) {
		super();
		this.begin = begin;
		this.end = end;
		this.uname = selectbookrecord.uname;
		this.borrowtime = selectbookrecord.borrowtime;
		this.title = selectbookrecord.title;
	}

	@Override
	public String toString() {
		return "Selectbookrecord [begin=" + begin + ", end=" + end + ", uname=" + uname + ", borrowtime=" + borrowtime
				+ ", title=" + title + ", adminname=" + adminname + ", borrowRecordid=" + borrowRecordid + "]";
	}

}