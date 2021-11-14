package com.oracle.service;

import java.util.List;

import com.oracle.po.Goods;

public interface GoodsService {
	public int deleteByPrimaryKey(Integer id);

    public int insert(Goods record);

    public int insertSelective(Goods record);

    public Goods selectByPrimaryKey(Integer id);

    public int updateByPrimaryKeySelective(Goods record);

    public List<Goods> selectAll();
    
    public int updateByPrimaryKey(Goods record);

}
