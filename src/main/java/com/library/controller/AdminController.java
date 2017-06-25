package com.library.controller;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.library.entity.Admin;
import com.library.service.AdminService;
import com.library.util.PageUtil;

@Controller
@RequestMapping("admin")
public class AdminController {

	@Resource
	private AdminService adminService;
	SimpleDateFormat sdf = new SimpleDateFormat("YYYYMMddHHmmss");
	private Logger log = LoggerFactory.getLogger(AdminController.class);

	/**
	 * 分页查询数据
	 * 
	 * @param page
	 * @param admin
	 * @return
	 */
	@RequestMapping("selData")
	@ResponseBody
	public Map<String, Object> showData(PageUtil page, Admin admin) {
		Map<String, Object> map = new HashMap<>();
		System.err.println(admin.getAdminqx() + admin.getAdminaccount());
		List<Admin> dataList;
		page.setPageSize(10);
		page.setTotolCount(adminService.selCountByPage(admin));
		if (!"super".equals(admin.getAdminqx()) && admin.getAdminqx() != null) {
			dataList = this.adminService.selMyself(new Admin(page.getResult()[0], page.getResult()[1], admin));
			System.err.println("普通管理员");
		} else {
			dataList = this.adminService.selData(new Admin(page.getResult()[0], page.getResult()[1], admin));
		}
		map.put("dataList", dataList);
		map.put("pageUtil", page);
		log.info("查询管理员");
		return map;
	}

	/**
	 * 获取管理员信息
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping("getAdmin.do")
	@ResponseBody
	public Admin getAdmin(Integer adminid) {
		log.debug("获取管理员数据信息");
		// System.out.println("获取图书id="+id);
		return this.adminService.selectByPrimaryKey(adminid);
	}

	/**
	 * 更新管理员信息
	 * 
	 * @param admin
	 * @return
	 */
	@RequestMapping("uppData.do")
	@ResponseBody
	public int uppData(Admin admin) {
		System.out.println("admin infor = " + admin.toString());
		int result = 0;
		result = this.adminService.updateByPrimaryKeySelective(admin);
		log.debug("根据主键查询管理员信息" + result);
		return result;
	}

	/**
	 * 添加数据
	 * adminname:adminname,
					adminpwd : passwd,
					adminaccount : adminaccount,
					adminphone : adminphone
	 * @param book
	 * @return
	 */
	@RequestMapping("addData.do")
	@ResponseBody
	public int addData(String adminname, String  adminpwd, String adminaccount, String adminphone,Admin admin) {
//		Admin admin = new Admin();
//		admin.setAdminaccount(adminaccount);
//		admin.setAdminname(adminname);
//		admin.setAdminphone(adminphone);
//		admin.setAdminpwd(adminpwd);
		System.out.println("添加admin=" + admin.toString());
		int result = adminService.insertSelective(admin);
		log.debug("添加管理员");
		
		
		return result;
	}

	/**
	 * 删除管理员信息
	 * 
	 * @param adminid
	 * @return
	 */
	@RequestMapping("delData.do")
	@ResponseBody
	public int delData(Integer adminid) {
		System.out.println("adminid = " + adminid);
		int result = 0;
		result = this.adminService.deleteByPrimaryKey(adminid);
		log.debug("删除管理员信息");
		return result;
	}

}
