package com.jbit.service.impl;

import java.util.List;

import com.jbit.dao.GoodsDao;
import com.jbit.entity.Goods;
import com.jbit.service.GoodsService;

public class GoodsServiceImpl implements GoodsService {
	private GoodsDao dao;
	
	public GoodsDao getDao() {
		return dao;
	}
	public void setDao(GoodsDao dao) {
		this.dao = dao;
	}
	
	@Override
	public List<Goods> getAll(Goods g) {
		return dao.getAll(g);
	}
	@Override
	public Goods getById(Long id) {
		return dao.getById(id);
	}
	@Override
	public void update(Goods g) {
		dao.update(g);
		
	}




	

}

