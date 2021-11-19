package com.oracle.dao;

import com.oracle.po.UserCart;
import com.oracle.po.UserCartExample;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface UserCartDao {
    long countByExample(UserCartExample example);

    int deleteByExample(UserCartExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(UserCart record);

    int insertSelective(UserCart record);

    List<UserCart> selectByExample(UserCartExample example);

    UserCart selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") UserCart record, @Param("example") UserCartExample example);

    int updateByExample(@Param("record") UserCart record, @Param("example") UserCartExample example);

    int updateByPrimaryKeySelective(UserCart record);

    int updateByPrimaryKey(UserCart record);
}