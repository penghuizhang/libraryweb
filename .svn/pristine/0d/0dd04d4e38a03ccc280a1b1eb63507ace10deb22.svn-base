package com.library.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.library.dao.SelectBookRecordMapper;
import com.library.entity.Selectbookrecord;

/** 
 *@author  kylin
 * @date 创建时间：2017年6月14日 下午8:43:20 
 * @version 1.0 
 * @parameter  
 * @since  
 * @return  
 */
@Service
public class SelectBookRecordImpl implements SelectBookRecordService{


	@Resource
	private SelectBookRecordMapper recordMapper;
	
	@Override
	public Selectbookrecord selectByPrimaryKey(String id) {
		return this.recordMapper.selectByPrimaryKey(id);
	}

	
	@Override
	public int insertSelective(Selectbookrecord record) {
		return this.recordMapper.insertSelective(record);
	}

	
	@Override
	public int updateByPrimaryKeySelective(Selectbookrecord record) {
		
		return this.recordMapper.updateByPrimaryKeySelective(record);
	}

	
	@Override
	public int deleteSelective(String id) {
		
		return this.recordMapper.deleteSelective(id);
	}

	



	@Override
	public List<Selectbookrecord> selData() {
		return this.recordMapper.selData();
	}

	@Override
	public int selCountDataByPage(Selectbookrecord record) {
		return this.recordMapper.selCountDataByPage(record);
	}

	@Override
	public List<Selectbookrecord> selDataByPage(Selectbookrecord record) {
		return this.recordMapper.selDataByPage(record);
	}

}
