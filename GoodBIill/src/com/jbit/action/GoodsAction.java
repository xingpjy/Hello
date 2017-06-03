package com.jbit.action;

import java.util.List;

import org.omg.PortableInterceptor.SUCCESSFUL;

import com.jbit.base.BaseAction;
import com.jbit.entity.Goods;
import com.jbit.service.GoodsService;

public class GoodsAction extends BaseAction {
	private GoodsService service;
	private List<Goods> list;
	private Goods g;
	//整体查询
	public String getAll(){
		try {
			
			list=service.getAll(g);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	//单个查询
	public String getById(){
		System.out.println("-------------------------------------------------"+g.getId());
		g=service.getById(g.getId());
		return SUCCESS;
		
	}
	public String updateGood(){
		service.update(g);
		return SUCCESS;
	}
	
	//修改后的查询
	public String updategetAll(){
		g=new Goods();
		
		return SUCCESS;
	}
	
	
	
	
	
	
	
	public GoodsService getService() {
		return service;
	}
	public void setService(GoodsService service) {
		this.service = service;
	}
	public List<Goods> getList() {
		return list;
	}
	public void setList(List<Goods> list) {
		this.list = list;
	}
	public Goods getG() {
		return g;
	}
	public void setG(Goods g) {
		this.g = g;
	}
	
	

}
