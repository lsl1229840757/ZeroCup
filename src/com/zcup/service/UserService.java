package com.zcup.service;

import java.util.List;

import com.zcup.model.User;
import com.zcup.query.UserQuery;

public interface UserService extends  BaseService<User,UserQuery> {

	public User getUserByUsername(String username);
	
	public boolean findLogin(User user);
	
}
