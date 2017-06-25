package com.library.service;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.library.dao.AdminMapper;
import com.library.entity.Admin;

@Service
public class AdminImpl implements AdminService {

	@Resource
	private AdminMapper adminMapper;

	@Override
	public int deleteByPrimaryKey(Integer adminid) {
		return this.adminMapper.deleteByPrimaryKey(adminid);
	}

	@Override
	public int insertSelective(Admin record) {
		return this.adminMapper.insertSelective(record);
	}

	@Override
	public Admin selectByPrimaryKey(Integer adminid) {
		return this.adminMapper.selectByPrimaryKey(adminid);
	}

	@Override
	public int updateByPrimaryKeySelective(Admin record) {
		return this.adminMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int selCountByPage(Admin admin) {
		return this.adminMapper.selCountByPage(admin);
	}

	@Override
	public List<Admin> selData(Admin admin) {
		return this.adminMapper.selData(admin);
	}

	@Override
	public Admin login(String adminname) {
		return this.adminMapper.login(adminname);
	}

	@Override
	public List<Admin> selMyself(Admin admin) {
		return this.adminMapper.selMyself(admin);
	}

}
