package com.oracle.service.impl;

import java.util.Date;
import java.util.List;

import com.oracle.po.GoodsExample;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.dao.GoodsMapper;
import com.oracle.po.Goods;
import com.oracle.service.GoodsService;
import org.springframework.util.CollectionUtils;

import javax.annotation.Resource;

@Service("GoodsService")
public class GoodsServiceImpl implements GoodsService{

	@Resource
	private GoodsMapper goodsMapper;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return goodsMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Goods record) {
		// TODO Auto-generated method stub
		return goodsMapper.insert(record);
	}

	@Override
	public int insertSelective(Goods record) {
		// TODO Auto-generated method stub
		return goodsMapper.insertSelective(record);
	}

	@Override
	public Goods selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return goodsMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Goods record) {
		// TODO Auto-generated method stub
		return goodsMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public List<Goods> selectAll() {
        // TODO Auto-generated method stub
        GoodsExample example = new GoodsExample();
        example.setOrderByClause("id desc");
        return goodsMapper.selectByExample(example);
    }

    @Override
    public int updateByPrimaryKey(Goods record) {
        // TODO Auto-generated method stub
        return goodsMapper.updateByPrimaryKey(record);
    }

    @Override
    public Boolean isNotExist(String name) {
        GoodsExample example = new GoodsExample();
        example.createCriteria().andNameEqualTo(name);
        List<Goods> list = goodsMapper.selectByExample(example);
        return CollectionUtils.isEmpty(list);
    }

}
