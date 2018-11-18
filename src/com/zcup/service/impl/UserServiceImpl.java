package com.zcup.service.impl;

import com.zcup.dao.UserDao;
import com.zcup.model.User;
import com.zcup.query.UserQuery;
import com.zcup.service.UserService;

public class UserServiceImpl extends BaseServiceImpl<User, UserQuery> implements UserService {
	private UserDao userDao;

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
		this.baseDao = userDao;
	}

	@Override
	public User getUserByUsername(String username) {
		return userDao.getUserByUsername(username);
	}
}
