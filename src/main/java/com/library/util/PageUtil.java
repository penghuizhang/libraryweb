package com.library.util;

/**
 * 分页的帮助类
 * 
 * @author admin
 *
 */
public class PageUtil {

	private int pageCount; // 总页数

	private int pageSize; // 设置每页的条数

	private int pageUp;// 上一页

	private int pageNext;// 下一页

	private int totolCount;// 总条数

	private int pageIndex;// 本页

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageUp() {
		return pageUp;
	}

	public void setPageUp(int pageUp) {
		this.pageUp = pageUp;
	}

	public int getPageNext() {
		return pageNext;
	}

	public void setPageNext(int pageNext) {
		this.pageNext = pageNext;
	}

	public int getTotolCount() {
		return totolCount;
	}

	public void setTotolCount(int totolCount) {
		this.totolCount = totolCount;
		// 获取总页数
		this.pageCount = totolCount % pageSize == 0 ? totolCount / pageSize : totolCount / pageSize + 1;
		//System.err.println("总页数:  " + pageCount);
	}

	public int getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
		// 获取当前页
		if (pageIndex <= 1) {
			this.pageUp = 1;
		} else {
			this.pageUp = pageIndex - 1;
		}
		if (pageIndex >= pageCount) {
			this.pageNext = pageCount;
		} else {
			this.pageNext = pageIndex + 1;
		}
	}

	// 把分页的参数放进去
	public int[] getResult() {
		int[] pages = { ((pageIndex - 1) * pageSize), pageSize };
		return pages;
	}
}
