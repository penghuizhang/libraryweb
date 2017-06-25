package com.library.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.library.dao.BookMapper;
import com.library.entity.Book;

@Service
public class BookImpl implements BookService {

	@Resource
	private BookMapper bookMapper;

	@Override
	public int insertSelective(Book record) {

		System.out.println("serive" + record.getAuthor());
		return this.bookMapper.insertSelective(record);
	}

	@Override
	public Book selectByPrimaryKey(String id) {
		return this.bookMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Book record) {
		return this.bookMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int selCountDataByPage(Book record) {
		return this.bookMapper.selCountDataByPage(record);
	}

	@Override
	public List<Book> selDataByPage(Book record) {
		return this.bookMapper.selDataByPage(record);
	}

	@Override
	public int deleteSelective(String id) {
		return this.bookMapper.deleteSelective(id);
	}

	
	@Override
	public int insertBookService(Book record) {
		return this.bookMapper.insertBookService(record);
	}


	@Override
	public int insertCategoryBookService(Book record) {
		return this.bookMapper.insertCategoryBookService(record);
	}

}
