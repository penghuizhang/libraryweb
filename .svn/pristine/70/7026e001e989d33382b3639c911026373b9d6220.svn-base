package com.library.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.library.entity.Book;
import com.library.service.BookService;
import com.library.util.PageUtil;

@Controller
@RequestMapping("book")
public class BookController {

	@Resource
	private BookService bookService;
	SimpleDateFormat sdf = new SimpleDateFormat("YYYYMMddHHmmss");
	private Logger log = LoggerFactory.getLogger(BookController.class);

	/**
	 * 查询
	 * 
	 * @param book
	 * @return
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping("selData.do")
	@ResponseBody
	public Map<String, Object> selData(PageUtil page, Book book,HttpServletRequest request,HttpServletResponse response) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String title = null;
		String author = null;
		Map<String, Object> map = new HashMap<>();
		page.setPageSize(10);// 设置每页显示数据条数
		
		
		if(book.getTitle()!=null){
		  title  = URLDecoder.decode(book.getTitle(),"UTF-8");
		}
		if(book.getAuthor()!=null){
			author = URLDecoder.decode(book.getAuthor(),"UTF-8");
		}
		
		//author = URLDecoder.decode(author,"UTF-8");
		
		book.setTitle(title);
		book.setAuthor(author);
		
		page.setTotolCount(bookService.selCountDataByPage(book));// 获取总条数
		System.out.println("book = "+book.getTitle());
		List<Book> list = this.bookService.selDataByPage(new Book(page.getResult()[0], page.getResult()[1], book));
		map.put("pageUtil", page);
		map.put("dataList", list);
		log.info("查询数据");
		return map;
	}

	/**
	 * 添加数据
	 * 
	 * @param book
	 * @return
	 */
	@RequestMapping("addData")
	@ResponseBody
	public int addData(Book book) {
		book.setId(sdf.format(new Date()));
		// System.out.println("添加book="+book.toString());
		// int result = bookService.insertSelective(book);
		int result1 = bookService.insertCategoryBookService(book);
		int result2 = bookService.insertBookService(book);
		int result = 1;
		if (result1 == result2 && result1 == 1) {
			return result;
		}
		log.debug("添加书籍");
		return result;
	}

	/**
	 * 获取数据信息
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping("getBook")
	@ResponseBody
	public Book getBook(String id) {
		log.debug("获取图书数据信息");
		// System.out.println("获取图书id="+id);
		return this.bookService.selectByPrimaryKey(id);
	}

	/**
	 * 修改数据
	 * 
	 * @param book
	 * @return
	 */
	@RequestMapping("uppData.do")
	@ResponseBody
	public int uppData(Book book) {
		int result = 0;
		// System.out.println("修改图书信息book="+book.toString());
		result = this.bookService.updateByPrimaryKeySelective(book);
		log.info("修改图书数据信息" + result);
		return result;
	}

	/**
	 * 删除数据
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping("delData")
	@ResponseBody
	public int delData(String id) {
		int result = 0;
		result = this.bookService.deleteSelective(id);
		log.debug("删除图书数据信息");
		return result;
	}

}
