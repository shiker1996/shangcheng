package com.oracle.service;

import java.util.List;

import com.oracle.po.Record;

public interface RecordService {

	public int deleteByPrimaryKey(Integer id);

	public int insert(Record record);

	public int insertSelective(Record record);

	public Record selectByPrimaryKey(Integer id);

	public int updateByPrimaryKeySelective(Record record);

	public int updateByPrimaryKey(Record record);
	
	public List<Record> selectByName(String name);
}
