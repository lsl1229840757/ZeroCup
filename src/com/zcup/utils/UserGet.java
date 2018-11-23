package com.zcup.utils;

import java.util.Map;

import com.zcup.model.User;


public class UserGet {

	public static User getUser(Map session) {
		Object obj = session.get("user");
		User user = null;
		if(obj!=null&&User.class.isInstance(obj)) {
			user = (User)obj;
		}
		return user;
	}
	
}
