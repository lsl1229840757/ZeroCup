package com.zcup.service.impl;

import javax.annotation.Resource;

import com.zcup.dao.NoteDao;
import com.zcup.dao.PoiDao;
import com.zcup.dao.UserDao;
import com.zcup.model.Note;
import com.zcup.model.Poi;
import com.zcup.model.User;
import com.zcup.query.NoteQuery;
import com.zcup.service.NoteService;

public class NoteServiceImpl extends BaseServiceImpl<Note, NoteQuery> implements NoteService {

	@Resource
	private UserDao userDao;
	
	@Resource
	private PoiDao poiDao;
	
	private NoteDao noteDao;

	public NoteDao getNoteDao() {
		return noteDao;
	}

	public void setNoteDao(NoteDao noteDao) {
		this.noteDao = noteDao;
		this.baseDao = noteDao;
	}

	@Override
	public void saveNote(String content, Integer poiId,User user) {
		Note note = new Note();
		note.setContent(content);
		Poi poi = poiDao.getObjById(poiId);
		note.setUser(user);
		note.setPoi(poi);
		noteDao.saveObj(note);
	}
	
}
