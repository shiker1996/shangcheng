package com.oracle.service.impl;

import com.oracle.dao.EmployeeMapper;
import com.oracle.po.Employee;
import com.oracle.service.EmployeeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("EmployeeService")
public class EmployeeServiceImpl implements EmployeeService{
	@Resource
	private EmployeeMapper employeeMapper;
	@Override
	public Employee selectByPrimaryKey(String phone) {
		// TODO Auto-generated method stub
		return employeeMapper.selectByPrimaryKey(phone);
	}
	@Override
	public int deleteByPrimaryKey(String phone) {
		// TODO Auto-generated method stub
		return employeeMapper.deleteByPrimaryKey(phone);
	}
	@Override
	public int insert(Employee record) {
		// TODO Auto-generated method stub
		return employeeMapper.insert(record);
	}
	@Override
	public int insertSelective(Employee record) {
		// TODO Auto-generated method stub
		return employeeMapper.insertSelective(record);
	}
	@Override
	public int updateByPrimaryKeySelective(Employee record) {
		// TODO Auto-generated method stub
		return employeeMapper.updateByPrimaryKeySelective(record);
	}
	@Override
	public int updateByPrimaryKey(Employee record) {
		// TODO Auto-generated method stub
		return employeeMapper.updateByPrimaryKey(record);
	}

}
