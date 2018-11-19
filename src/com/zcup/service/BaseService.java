package com.zcup.service;

import java.util.List;


public interface BaseService<T,Q> {

	public void save(T t);
	
	public void update(T t);
	
	public T getObjById(Integer id);
	
	public void deleteObjById(Integer id);
	
	public List<T> list();
	
	public List<T> queryObjByConditionNoPage(Q q,List<String> exclude);
	
}
