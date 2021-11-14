package com.oracle.dao;

import java.util.List;

import com.oracle.po.Goods;

public interface GoodsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Goods record);

    int insertSelective(Goods record);

    Goods selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Goods record);

    List<Goods> selectAll();
    
    int updateByPrimaryKey(Goods record);
}