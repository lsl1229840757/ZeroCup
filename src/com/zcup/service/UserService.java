package com.zcup.service;

import com.zcup.model.User;
import com.zcup.query.UserQuery;

public interface UserService extends  BaseService<User,UserQuery> {

	public User getUserByUsername(String username);
	
}
