package com.oracle.service;

import com.oracle.po.Employee;

public interface EmployeeService {

	Employee selectByPrimaryKey(String phone);

	int deleteByPrimaryKey(String phone);

	int insert(Employee record);

	int insertSelective(Employee record);

	int updateByPrimaryKeySelective(Employee record);

	int updateByPrimaryKey(Employee record);
}
