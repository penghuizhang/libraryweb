package com.library.dao;


import java.util.List;

import com.library.entity.Selectbookrecord;

public interface SelectBookRecordMapper {



    int insert(Selectbookrecord record);

    // 根据ID查询
 	Selectbookrecord selectByPrimaryKey(String id);

 	//添加
    int insertSelective(Selectbookrecord record);

    //修改
    int updateByPrimaryKeySelective(Selectbookrecord record);
    
    // 删除
 	int deleteSelective(String id);
 	
 	
 	
 	//获取所有信息
 	List<Selectbookrecord> selData();
 	
 	// 查询
 	int selCountDataByPage(Selectbookrecord record);

 	List<Selectbookrecord> selDataByPage(Selectbookrecord record);
}