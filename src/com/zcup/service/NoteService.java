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
	 * @param name 没有登录功能暂时使用name来接收
	 */
	public void saveNote(String content,Integer poiId,String name);

}
