package com.library.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.library.entity.Selectbookrecord;
import com.library.service.SelectBookRecordService;
import com.library.util.PageUtil;

/** 
 *@author  kylin
 * @date 创建时间：2017年6月14日 下午8:47:13 
 * @version 1.0 
 * @parameter  
 * @since  
 * @return  
 */
@Controller
@RequestMapping("record")
public class RecordController {

	@Resource
	private SelectBookRecordService recordService;
	private Logger log =  LoggerFactory.getLogger(RecordController.class);
	
	@RequestMapping("selData")
	@ResponseBody
	public Map<String, Object> selData(PageUtil page, Selectbookrecord selectbookrecord) {
		
		String uname = null;
		if(selectbookrecord.getUname()!=null){
			try {
				uname = URLDecoder.decode(selectbookrecord.getUname(),"UTF-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		selectbookrecord.setUname(uname);
		
		
		System.err.println(selectbookrecord.toString());
		Map<String, Object> map = new HashMap<>();
		page.setPageSize(10);// 设置每页显示数据条数
		page.setTotolCount(recordService.selCountDataByPage(selectbookrecord));// 获取总条数
		List<Selectbookrecord> list = this.recordService.selDataByPage(new Selectbookrecord(page.getResult()[0], page.getResult()[1], selectbookrecord));
		map.put("pageUtil", page);
		map.put("dataList", list);
		log.info("查询借阅图书数据");
		return map;
	}
	
	@RequestMapping("uppData.do")
	@ResponseBody
	public int uppData(Selectbookrecord selectbookrecord){
		int result = 0;
		result = this.recordService.updateByPrimaryKeySelective(selectbookrecord);
		log.debug("更新信息");
		return result;
	}
	
	/**
	 * 获取用户单条借阅记录
	 * @param id
	 * @return
	 */
	@RequestMapping("getRecord.do")
	public Selectbookrecord getSelectbookrecord(String borrowRecordid){
		log.debug("获取个人信息记录");
		System.out.println("id == "+borrowRecordid);
		return this.recordService.selectByPrimaryKey(borrowRecordid);
	}
	
	
	
}
