package com.library.service;

import java.util.List;

import com.library.entity.Book;

public interface BookService {
	// 添加
	int insertSelective(Book record);
	//添加到book数据表中
	int insertBookService(Book record);
	//添加到category——book表中
	int insertCategoryBookService(Book record);
	

	// 根据ID查询
	Book selectByPrimaryKey(String id);

	// 修改
	int updateByPrimaryKeySelective(Book record);

	// 删除
	int deleteSelective(String id);

	// 查询
	int selCountDataByPage(Book record);

	List<Book> selDataByPage(Book book);
}
