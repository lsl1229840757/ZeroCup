package com.zcup.dao.impl;

import com.zcup.dao.NoteDao;
import com.zcup.model.Note;
import com.zcup.query.NoteQuery;

public class NoteDaoImpl extends BaseDaoImpl<Note, NoteQuery> implements NoteDao {

	@Override
	public String getHql(NoteQuery q) {
		String hql =  "from Note n where 1 = 1";
		return hql;
	}

	@Override
	public String getHqlCount(NoteQuery q) {
		return null;
	}

	// 不需要HQL条件
	@Override
	public String createHqlCondition(String hql, NoteQuery q) {
		return null;
	}

	
}
