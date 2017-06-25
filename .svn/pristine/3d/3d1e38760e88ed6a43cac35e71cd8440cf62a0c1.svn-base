package com.library.service;

import java.util.List;

import com.library.entity.User;

/** 
 *@author  kylin
 * @date 创建时间：2017年6月15日 下午4:30:32 
 * @version 1.0 
 * @parameter  
 * @since  
 * @return  
 */
public interface UserService {
	
	int deleteByPrimaryKey(String uid);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(String uid);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

	/**
	 * @param user
	 * @return
	 */
	int selCountDataByPage(User user);

	/**
	 * @param user
	 * @return
	 */
	List<User> selDataByPage(User user);
}