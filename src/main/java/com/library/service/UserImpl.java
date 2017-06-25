package com.library.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.library.dao.UserMapper;
import com.library.entity.User;

/** 
 *@author  kylin
 * @date 创建时间：2017年6月15日 下午4:33:34 
 * @version 1.0 
 * @parameter  
 * @since  
 * @return  
 */
@Service
public class UserImpl implements UserService{

	@Resource
	private UserMapper usermapper;
	
	@Override
	public int deleteByPrimaryKey(String uid) {
		return this.usermapper.deleteByPrimaryKey(uid);
	}

	@Override
	public int insert(User record) {
		return this.usermapper.insert(record);
	}

	
	@Override
	public int insertSelective(User record) {
		return this.usermapper.insertSelective(record);
	}

	@Override
	public User selectByPrimaryKey(String uid) {
		return this.usermapper.selectByPrimaryKey(uid);
	}


	@Override
	public int updateByPrimaryKeySelective(User record) {
		return this.usermapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(User record) {
		return this.usermapper.updateByPrimaryKey(record);
	}

	@Override
	public int selCountDataByPage(User user) {
		return this.usermapper.selCountDataByPage(user);
	}

	
	@Override
	public List<User> selDataByPage(User user) {
		
		return this.usermapper.selDataByPage(user);
	}

}
