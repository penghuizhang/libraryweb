package com.library.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.library.entity.User;
import com.library.service.UserService;
import com.library.util.PageUtil;

/**
 * @author kylin
 * @date 创建时间：2017年6月15日 下午4:38:16
 * @version 1.0
 * @parameter 用户视图控制器
 * @since
 * @return
 */
@Controller
@RequestMapping("user")
public class UserController {

	@Resource
	private UserService userService;
	private Logger log = LoggerFactory.getLogger(UserController.class);

	@RequestMapping("selData")
	@ResponseBody
	public Map<String, Object> selData(PageUtil page, User user) {
		
		
		String uname=null;
		if(user.getUname()!=null){
			try {
				uname  = URLDecoder.decode(user.getUname(),"UTF-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		user.setUname(uname);
		System.out.println(user.getUname());
		Map<String, Object> map = new HashMap<>();
		page.setPageSize(10);// 设置每页显示数据条数
		page.setTotolCount(userService.selCountDataByPage(user));// 获取总条数
		System.err.println(page.getTotolCount());
		List<User> list = this.userService.selDataByPage(new User(page.getResult()[0], page.getResult()[1], user));
		map.put("pageUtil", page);
		map.put("dataList", list);
		log.info("查询数据");
		return map;
	}
}
