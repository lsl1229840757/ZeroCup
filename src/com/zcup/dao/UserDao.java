package com.zcup.dao;

import com.zcup.model.User;
import com.zcup.query.UserQuery;

public interface UserDao extends BaseDao<User,UserQuery>{
	public User getUserByUsername(String username);
	
	
}
