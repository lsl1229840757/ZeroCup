package com.zcup.dao.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.hibernate.Query;

import com.zcup.dao.UserDao;
import com.zcup.model.User;
import com.zcup.query.UserQuery;

public class UserDaoImpl extends BaseDaoImpl<User,UserQuery> implements UserDao {

	// 创建hql 
	@Override
	public String getHql(UserQuery q) {
		String hql =  "from User u where 1 = 1";
		hql = createHqlCondition(hql, q);
		return hql;
	}
	// 用于分页查询，目前不需要
	@Override
	public String getHqlCount(UserQuery q) {
		return null;
	}
	//创建查询条件
	@Override
	public String createHqlCondition(String hql, UserQuery q) {
		if(q.getAge()!=null) {
			hql += " and u.age = :age";
		}
		if(q.getGender()!=null) {
			hql += " and u.gender = :gender" ;
		}
		if(StringUtils.isNotBlank(q.getName())){
			hql += " and u.name = :name";
		}
		if(StringUtils.isNotBlank(q.getUsername())){
			hql += " and u.username = :username";
		}
		return hql;
	}
	@Override
	public User getUserByUsername(String username) {
		String hql = "from User e where e.username = ?";
		List<?> list = (List<?>) this.getHibernateTemplate().getSessionFactory().getCurrentSession().createQuery(hql).setString(0, username).list();
		if(list.size()!=0){
			return (User) list.get(0);
		}
		return null;
	}
	@Override
	public boolean findLogin(User user) {
		String hql = "select count(*) from User as user where user.username=? and user.password=?";
		Query query = this.getHibernateTemplate().getSessionFactory().getCurrentSession().createQuery(hql);
		query.setParameter(0, user.getUsername());
		query.setParameter(1, user.getPassword());
		Object obj = query.uniqueResult();
		Integer res = ((Long)obj).intValue();
		
		if(res == 0) {
			return false;
		}
		return true;
	}
}
