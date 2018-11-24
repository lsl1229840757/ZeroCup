package com.zcup.dao.impl;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.zcup.dao.BaseDao;

public abstract class BaseDaoImpl<T,Q> extends HibernateDaoSupport implements BaseDao<T, Q> {

	@Resource
	SessionFactory sessionFactory;
	
	@Override
	public void saveObj(T t) {
		this.getHibernateTemplate().save(t);
	}

	@Override
	public void updateObj(T t) {
		this.getHibernateTemplate().update(t);
	}

	@Override
	public T getObjById(Integer id) {
		Class<T> entityClass =  getGenericClass();
		return this.getHibernateTemplate().get(entityClass, id);
	}

	@Override
	public void deleteObjById(Integer id) {
		T t = getObjById(id);
		this.getHibernateTemplate().delete(t);
	}

	@Override
	public void deleteObj(T t) {
		this.getHibernateTemplate().delete(t);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> queryObjByCondition(Q q,List<String> exclude) {
		List<T> lists = new ArrayList<T>();
		String hql = getHql(q);
		Session session = this.getHibernateTemplate().getSessionFactory().getCurrentSession();
		Query query = session.createQuery(hql);	
		setDynamicParam(query,q,exclude);
		Class<? extends Object> class1 = q.getClass();
		Integer startIndex = 0;
		try {
			Field field = class1.getDeclaredField("startIndex");
			field.setAccessible(true);
			startIndex = (Integer) field.get(q);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		lists = query.setFirstResult(startIndex).setMaxResults(5).list();
		return lists;
	}

	
	@SuppressWarnings("unchecked")
	public Class<T> getGenericClass(){
		Type genericSuperclass = this.getClass().getGenericSuperclass();
		ParameterizedType pt = (ParameterizedType) genericSuperclass;
		Type[] types = pt.getActualTypeArguments();
		return (Class<T>)types[0];
	}
	
	public void setDynamicParam(Query query,Q q,List<String> exclude){
		Class<?> class1 = q.getClass();
		Field[] fields1 = class1.getDeclaredFields();
		Field[] fields2 = class1.getSuperclass().getDeclaredFields();
		List<Field> asList = Arrays.asList(fields1);
		List<Field> asList2 = Arrays.asList(fields2);
		List<Field> flist = new ArrayList<Field>();
		flist.addAll(asList);
		flist.addAll(asList2);
		for(Field f:flist){
			String name = f.getName();
			if(exclude!=null&&exclude.contains(name)){
				continue;
			}
			Object val = null;
			try {
				f.setAccessible(true);
				val= f.get(q);
			} catch (IllegalArgumentException | IllegalAccessException e) {
				e.printStackTrace();
			}
			if(val!=null){
				if(val.getClass()==String.class){
					if(StringUtils.isNotBlank(val.toString())){
						query.setParameter(name, "%"+val+"%");
					}
				}else{
					query.setParameter(name, val);
				}
			}
		}
	}
	
	public abstract String getHql(Q q);
	
	public abstract String getHqlCount(Q q);
	
	public abstract String createHqlCondition(String hql,Q q);
	
	@Override
	public List<T> list(){
		String hql = "from "+getGenericClass().getName();
		return sessionFactory.getCurrentSession().createQuery(hql).list();
	}
	
	@Override
	public Long queryObjCountByCondition(Q q,List<String> exclude){
		Long totalCount = 0L;
		String hql = getHqlCount(q);
		Session session = this.getHibernateTemplate().getSessionFactory().getCurrentSession();
		Query query = session.createQuery(hql);	
		setDynamicParam(query,q,exclude);
		totalCount = (Long) query.uniqueResult();
		return totalCount;
	}
	
	public List<T> queryObjByConditionNoPage(Q q,List<String> exclude){
		List<T> lists = new ArrayList<T>();
		String hql = getHql(q);
		Session session = this.getHibernateTemplate().getSessionFactory().getCurrentSession();
		Query query = session.createQuery(hql);	
		setDynamicParam(query,q,exclude);
		lists = query.list();
		return lists;
	}
	
}
