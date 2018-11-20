package com.zcup.service.impl;

import javax.annotation.Resource;

import com.zcup.dao.NoteDao;
import com.zcup.dao.PoiDao;
import com.zcup.model.Note;
import com.zcup.model.Poi;
import com.zcup.query.NoteQuery;
import com.zcup.service.NoteService;

public class NoteServiceImpl extends BaseServiceImpl<Note, NoteQuery> implements NoteService {

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
	public void saveNote(Note note, Integer poiId) {
		Poi poi = poiDao.getObjById(poiId);
		poi.getNotes().add(note); //这里便会级联更新
	}
	
}
