package com.zcup.test;

import java.util.HashSet;
import java.util.Set;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.zcup.model.Note;
import com.zcup.model.Poi;
import com.zcup.model.User;
import com.zcup.service.UserService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:applicationContext.xml"})


public class UserServiceImplTest {
	@Resource
	UserService us;
	
	@Test
	public void test() {
		User u = new User();
		u.setAge(22);
		u.setGender(1);
		u.setName("大师");
		u.setPassword("asdfsad");
		u.setUsername("3245234");
		Set<Note> set = new HashSet<Note>();
		Note n = new Note();
		n.setContent("关联user");
		n.setTitle("关联user的note");
		n.setLatitude(36d);
		n.setLongitude(114d);
		set.add(n);
		u.setNotes(set);
		us.save(u);
	}
	
	@Test
	public void testGet() {
		User u = us.getUserByUsername("3245234");
		Set<Note> s = u.getNotes();
		System.out.println(s.size());
	}

}
