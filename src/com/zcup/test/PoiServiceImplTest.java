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
import com.zcup.service.PoiService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:applicationContext.xml"})

public class PoiServiceImplTest {
	@Resource
	PoiService ps;

	@Test
	public void testSave() {
		Poi p = new Poi();
		p.setDescription("牛逼");
		p.setLatitude(11);
		p.setLongitude(20);
		Set<Note> sets = new HashSet<Note>();
		Note n = new Note();
		n.setContent("关联");
		n.setTitle("关联poi的note");
		n.setLatitude(36);
		n.setLongitude(114);
		sets.add(n);
		p.setNotes(sets);
		p.setName("武大");
		p.setUrl("www.baidu.com");
		ps.save(p);
	}
	
	@Test
	public void testGet() {
		Poi poi = ps.getObjById(2);
		Set<Note> s = poi.getNotes();
		System.out.println(s.size());
	}
	

}
