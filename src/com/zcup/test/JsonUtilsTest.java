package com.zcup.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.zcup.model.Note;
import com.zcup.model.User;
import com.zcup.utils.JsonUtils;

import net.sf.json.JSONObject;


public class JsonUtilsTest {

	/**
	 * 测试出现的问题：jsonObj会直接将对象存入,应该排除user,poi
	 */
	@Test
	public void test() {
		Note n = new Note();
		n.setContent("牌坊");
		n.setTitle("标题");
		n.setLatitude(36d);
		n.setLongitude(114d);
		User u = new User();
		u.setAge(1);
		n.setUser(u);
		JSONObject convert2jsonObject = JsonUtils.convert2JSONObject(n,new String[] {"title"});
		System.out.println(convert2jsonObject);
	}

}
