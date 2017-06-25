package com.library.intercepter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.library.entity.Admin;
import com.library.service.AdminService;

/** 
 *@author  kylin
 * @date 创建时间：2017年6月15日 下午10:20:20 
 * @version 1.0 
 * @parameter  
 * @since  
 * @return  
 */
public class LoginIntercepter implements HandlerInterceptor{

	@Resource
    private AdminService adminService;
	
	private Admin admin;
	
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		System.out.println("1.preHandle");
		 
	
		
		HttpSession session = request.getSession();
		

		/**
		 * 这个地方有问题，这个adminname和adminpwd获取不到，所以不知道怎么写这部分，要不你把你们的权限什么的给我坐上也可以
		 * 因为我感觉权限这部分比较重要点吧，无论什么系统，总不能让任何用户都去进行创建删除新的管理员吧
		 */
		String adminname = request.getAttribute("adminname").toString();
		String adminpwd = request.getAttribute("adminpwd").toString();
		
    	Admin user = adminService.login(adminname);
		if (user != null) {
			if (adminpwd.equals(admin.getAdminpwd())) {
				session.setAttribute("loginUser", user);// 把查询出的用户信息放到session中
				return true;
			}
		}else{
			request.getRequestDispatcher("/pages/login.jsp").forward(request, response);
		}
		
		return false;
	}

	
	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("2.postHandle");
		
	}

	
	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		System.out.println("3.afterCompletion");
		
	}

}
