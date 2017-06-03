
package com.jbit.service;

import java.util.List;

import com.jbit.entity.Goods;

public interface GoodsService {
	public List<Goods> getAll(Goods g);
	public Goods getById(Long id);
	public void update(Goods g);

}