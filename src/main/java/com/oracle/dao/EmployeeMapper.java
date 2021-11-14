package com.oracle.dao;

import com.oracle.po.Employee;

public interface EmployeeMapper {
    int deleteByPrimaryKey(String phone);

    int insert(Employee record);

    int insertSelective(Employee record);

    Employee selectByPrimaryKey(String phone);

    int updateByPrimaryKeySelective(Employee record);

    int updateByPrimaryKey(Employee record);
}