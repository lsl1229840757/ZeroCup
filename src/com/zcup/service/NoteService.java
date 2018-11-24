package com.zcup.service;

import com.zcup.dao.PoiDao;
import com.zcup.model.Note;
import com.zcup.model.User;
import com.zcup.query.NoteQuery;

public interface NoteService extends BaseService<Note,NoteQuery>  {

	/**
	 * 
	 * @param content
	 * @param poiId
	 * @param user 获取session中的user
	 */
	public void saveNote(String content,Integer poiId,User user);
	
}
