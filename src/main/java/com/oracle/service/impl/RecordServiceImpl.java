package com.oracle.service.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.dao.RecordMapper;
import com.oracle.po.Record;
import com.oracle.service.RecordService;

import javax.annotation.Resource;

@Service("recordService")
public class RecordServiceImpl implements RecordService {
	@Resource
	private RecordMapper recordMapper;

	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return recordMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Record record) {
		// TODO Auto-generated method stub
		return recordMapper.insert(record);
	}

	@Override
	public int insertSelective(Record record) {
		// TODO Auto-generated method stub
		return recordMapper.insertSelective(record);
	}

	@Override
	public Record selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return recordMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Record record) {
		// TODO Auto-generated method stub
		return recordMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Record record) {
		// TODO Auto-generated method stub
		return recordMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Record> selectByName(String name) {
		// TODO Auto-generated method stub
		return recordMapper.selectByName(name);
	}

}
