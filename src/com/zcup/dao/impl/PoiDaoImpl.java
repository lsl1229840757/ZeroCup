package com.zcup.dao.impl;

import com.zcup.dao.PoiDao;
import com.zcup.model.Poi;
import com.zcup.query.PoiQuery;

public class PoiDaoImpl extends BaseDaoImpl<Poi, PoiQuery> implements PoiDao{

	@Override
	public String getHql(PoiQuery q) {
		String hql =  "from Poi p where 1 = 1";
		return hql;
	}

	@Override
	public String getHqlCount(PoiQuery q) {
		return null;
	}

	@Override
	public String createHqlCondition(String hql, PoiQuery q) {
		return null;
	}

}
