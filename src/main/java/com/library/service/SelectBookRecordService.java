package com.library.service;

import java.util.List;

import com.library.entity.Selectbookrecord;

/** 
 *@author  kylin
 * @date 创建时间：2017年6月14日 下午8:42:26 
 * @version 1.0 
 * @parameter  
 * @since  
 * @return  
 */
public interface SelectBookRecordService {

	    // 根据ID查询
	 	Selectbookrecord selectByPrimaryKey(String id);

	 	//添加
	    int insertSelective(Selectbookrecord record);

	    //修改
	    int updateByPrimaryKeySelective(Selectbookrecord record);
	    
	    // 删除
	 	int deleteSelective(String id);
	 	
	 	//获取所有管理员
		List<Selectbookrecord> selData();
		
		// 查询
	 	int selCountDataByPage(Selectbookrecord record);

	 	List<Selectbookrecord> selDataByPage(Selectbookrecord record);
}
