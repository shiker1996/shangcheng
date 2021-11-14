package com.oracle.dao;

import com.oracle.po.Customer;

public interface CustomerMapper {
    int deleteByPrimaryKey(String phone);

    int insert(Customer record);

    int insertSelective(Customer record);

    Customer selectByPrimaryKey(String phone);

    int updateByPrimaryKeySelective(Customer record);

    int updateByPrimaryKey(Customer record);
}