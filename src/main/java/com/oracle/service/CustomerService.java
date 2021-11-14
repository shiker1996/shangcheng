package com.oracle.service;

import com.oracle.po.Customer;

public interface CustomerService {

	public Customer selectByPrimaryKey(String phone);

	public int deleteByPrimaryKey(String phone);

	public int insert(Customer record);

	public int insertSelective(Customer record);

	public int updateByPrimaryKeySelective(Customer record);

	public int updateByPrimaryKey(Customer record);
}
