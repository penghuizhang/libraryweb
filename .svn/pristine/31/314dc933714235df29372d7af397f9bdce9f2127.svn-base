package com.library.controller;

import java.io.IOException;
import java.util.Enumeration;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.library.entity.Admin;
import com.library.service.AdminService;

@Controller
@RequestMapping("login")
public class LoginController {

	@Resource
	private AdminService adminService;

	/**
	 * 用户登录
	 * 
	 * @param request
	 * @param response
	 * @param userInfo
	 * @return
	 */
	@RequestMapping("login")
	@ResponseBody
	public int login(HttpServletRequest request, HttpServletResponse response, Admin admin) {
		Admin user = adminService.login(admin.getAdminname());
		if (user != null) {
			if (user.getAdminpwd().equals(admin.getAdminpwd())) {
				request.getSession(false);
				HttpSession session = request.getSession();
				session.setAttribute("loginUser", user);// 把查询 出的用户信息放到session中
				return 1;
			}
		}
		return 0;
	}

	/**
	 * 退出
	 * 
	 * @param request
	 * @param response
	 */
	@RequestMapping("exit.do")
	@ResponseBody
	@SuppressWarnings("rawtypes")
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			Enumeration em = request.getSession().getAttributeNames();
			while (em.hasMoreElements()) {
				request.getSession().removeAttribute(em.nextElement().toString());
				response.sendRedirect("/");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
