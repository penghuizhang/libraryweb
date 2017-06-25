package com.library.dao;

import java.util.List;

import com.library.entity.User;

/** 
 *@author  kylin
 * @date 创建时间：2017年6月15日 下午4:31:28 
 * @version 1.0 
 * @parameter  
 * @since  
 * @return  
 */
public interface UserMapper {
	

    int deleteByPrimaryKey(String uid);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(String uid);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    int selCountDataByPage(User user);
    
    List<User> selDataByPage(User user);
}
