package com.oracle.dao;

import com.oracle.po.Login;

public interface LoginMapper {
    int deleteByPrimaryKey(String phone);

    int insert(Login record);

    int insertSelective(Login record);

    Login selectByPrimaryKey(String phone);

    int updateByPrimaryKeySelective(Login record);

    int updateByPrimaryKey(Login record);
}