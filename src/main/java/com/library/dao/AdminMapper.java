package com.library.dao;

import java.util.List;

import com.library.entity.Admin;

public interface AdminMapper {

	// 查询
	int selCountByPage(Admin admin);

	// 获取所有管理员
	List<Admin> selData(Admin admin);

	// 删除
	int deleteByPrimaryKey(Integer adminid);

	// 添加
	int insertSelective(Admin record);

	// 根据ID查询
	Admin selectByPrimaryKey(Integer adminid);

	// 修改
	int updateByPrimaryKeySelective(Admin record);

	Admin login(String adminname);

	// 查询自己
	List<Admin> selMyself(Admin admin);

}