package com.zcup.dao;

import java.util.List;


public interface BaseDao<T,Q> {

	public void saveObj(T t);
	
	public void updateObj(T t);
	
	public T getObjById(Integer id);
	
	public void deleteObjById(Integer id);

	public void deleteObj(T t);
	
	public List<T> queryObjByCondition(Q q,List<String> exclude);

	public List<T> queryObjByConditionNoPage(Q q,List<String> exclude);
	
	public Long queryObjCountByCondition(Q q,List<String> exclude);
	
	public List<T> list();
	
}
