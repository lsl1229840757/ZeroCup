package com.zcup.test;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.zcup.model.Note;
import com.zcup.service.NoteService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:applicationContext.xml"})

public class NoteServiceImplTest {
	@Resource
	NoteService noteService;

	@Test
	public void testSave() {
		Note n = new Note();
		n.setContent("nihao");
		n.setTitle("标题");
		n.setLatitude(36);
		n.setLongitude(114);
		noteService.save(n);
		
	}

	@Test
	public void testQuery() {
		Note n = new Note();
		n.setContent("nihao");
		n.setTitle("标题");
		n.setLatitude(36);
		n.setLongitude(114);
		noteService.save(n);
		
	}

}