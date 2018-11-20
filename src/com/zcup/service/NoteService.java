package com.zcup.service;

import com.zcup.model.Note;
import com.zcup.query.NoteQuery;

public interface NoteService extends BaseService<Note,NoteQuery>  {

	public void saveNote(Note note,Integer poiId);
	
}
