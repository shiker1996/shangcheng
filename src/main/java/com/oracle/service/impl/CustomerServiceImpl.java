package com.oracle.service.impl;

import com.oracle.dao.CustomerMapper;
import com.oracle.po.Customer;
import com.oracle.service.CustomerService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("CustomerService")
public class CustomerServiceImpl implements CustomerService {
	@Resource
	private CustomerMapper customerMapper;
	@Override
	public Customer selectByPrimaryKey(String phone) {
		// TODO Auto-generated method stub
		return customerMapper.selectByPrimaryKey(phone);
	}
	@Override
	public int deleteByPrimaryKey(String phone) {
		// TODO Auto-generated method stub
		return customerMapper.deleteByPrimaryKey(phone);
	}
	@Override
	public int insert(Customer record) {
		// TODO Auto-generated method stub
		return customerMapper.insert(record);
	}
	@Override
	public int insertSelective(Customer record) {
		// TODO Auto-generated method stub
		return customerMapper.insertSelective(record);
	}
	@Override
	public int updateByPrimaryKeySelective(Customer record) {
		// TODO Auto-generated method stub
		return customerMapper.updateByPrimaryKeySelective(record);
	}
	@Override
	public int updateByPrimaryKey(Customer record) {
		// TODO Auto-generated method stub
		return customerMapper.updateByPrimaryKey(record);
	}

}
