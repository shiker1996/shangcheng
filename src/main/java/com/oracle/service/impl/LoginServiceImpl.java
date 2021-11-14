package com.oracle.service.impl;

import org.springframework.stereotype.Service;
import com.oracle.dao.LoginMapper;
import com.oracle.po.Login;
import com.oracle.service.LoginService;

import javax.annotation.Resource;

@Service("LoginService")
public class LoginServiceImpl implements LoginService {

    @Resource
    LoginMapper loginMapper;

    @Override
    public Login selectByPrimaryKey(String phone) {
        // TODO Auto-generated method stub
        return loginMapper.selectByPrimaryKey(phone);
    }

    @Override
    public int deleteByPrimaryKey(String phone) {
        // TODO Auto-generated method stub
        return loginMapper.deleteByPrimaryKey(phone);
    }

    @Override
    public int insert(Login record) {
        // TODO Auto-generated method stub
        return loginMapper.insert(record);
    }

    @Override
    public int insertSelective(Login record) {
        // TODO Auto-generated method stub
        return loginMapper.insertSelective(record);
    }

    @Override
    public int updateByPrimaryKeySelective(Login record) {
        // TODO Auto-generated method stub
        return loginMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Login record) {
        // TODO Auto-generated method stub
        return loginMapper.updateByPrimaryKey(record);
    }

}
