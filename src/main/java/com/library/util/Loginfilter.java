package com.library.util;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;
//import javax.servlet.http.HttpSession;

import com.library.entity.Admin;;

public class Loginfilter implements Filter {

	public FilterConfig config;

	@Override
	public void destroy() {
		this.config = null;
	}

	public static boolean isContains(String container, String[] regx) {
		boolean result = false;

		for (int i = 0; i < regx.length; i++) {
			if (container.indexOf(regx[i]) != -1) {
				return true;
			}
		}
		return result;
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest hrequest = (HttpServletRequest) request;
		HttpServletResponseWrapper wrapper = new HttpServletResponseWrapper((HttpServletResponse) response);

		String loginStrings = config.getInitParameter("loginStrings"); // <!--登录登陆页面-->
		String includeStrings = config.getInitParameter("includeStrings"); // <!--过滤资源后缀参数-->
		String redirectPath = hrequest.getContextPath() + config.getInitParameter("redirectPath");// <!--没有登陆转向页面-->
		String disabletestfilter = config.getInitParameter("disabletestfilter");// <!--过滤器是否有效-->

		if (disabletestfilter.toUpperCase().equals("Y")) { // <!--过滤无效-->
			chain.doFilter(request, response);
			System.out.println("过滤器无效!");
			return;
		}

		String[] logonList = loginStrings.split(";");
		String[] includeList = includeStrings.split(";");

		if (!Loginfilter.isContains(hrequest.getRequestURI(), includeList)) {// <!--只对指定过滤参数后缀进行过滤-->
			chain.doFilter(request, response);
			return;
		}

		if (Loginfilter.isContains(hrequest.getRequestURI(), logonList)) {// <!--对登录页面不进行过滤-->
			chain.doFilter(request, response);
			return;
		}

		Admin user = (Admin) hrequest.getSession().getAttribute("loginUser");// <!--判断用户是否登录-->
		if (user == null) {
			wrapper.sendRedirect(redirectPath);
			return;
		} else {
			chain.doFilter(request, response);
			return;
		}
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		config = filterConfig;
	}

}
