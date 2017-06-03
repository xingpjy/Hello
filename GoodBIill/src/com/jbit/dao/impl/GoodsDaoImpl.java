
package com.jbit.dao.impl;

import java.util.ArrayList;
import java.util.List;

import com.jbit.base.impl.BaseDaoImpl;
import com.jbit.dao.GoodsDao;
import com.jbit.entity.Goods;

public class GoodsDaoImpl extends BaseDaoImpl<Goods> implements GoodsDao {

	@Override
	public List<Goods> getAll(Goods g) {
		List<Goods> list =new ArrayList<Goods>();
		String hql="";
		if(g.getGoodsdistrict()==0 || g==null){
			hql = "from Goods ";
			}
		else{
			 hql="from Goods  where goodsdistrict="+g.getGoodsdistrict();
		}
		list=this.findByHql(hql);
		return list;
	}

	@Override
	public Goods getById(Long id) {
		return this.findById(id);
	}

	@Override
	public void updateGoods(Goods g) {
		this.update(g);
	}
}

