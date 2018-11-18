package com.zcup.service.impl;

import com.zcup.dao.NoteDao;
import com.zcup.model.Note;
import com.zcup.query.NoteQuery;
import com.zcup.service.NoteService;

public class NoteServiceImpl extends BaseServiceImpl<Note, NoteQuery> implements NoteService {

	private NoteDao noteDao;

	public NoteDao getNoteDao() {
		return noteDao;
	}

	public void setNoteDao(NoteDao noteDao) {
		this.noteDao = noteDao;
		this.baseDao = noteDao;
	}
	
}
