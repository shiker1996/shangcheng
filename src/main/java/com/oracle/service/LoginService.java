package com.oracle.service;

import com.oracle.po.Login;

public interface LoginService {

	int deleteByPrimaryKey(String phone);

    int insert(Login record);

    int insertSelective(Login record);

    Login selectByPrimaryKey(String phone);

    int updateByPrimaryKeySelective(Login record);

    int updateByPrimaryKey(Login record);
}
