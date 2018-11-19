package com.zcup.service.impl;

import com.zcup.dao.PoiDao;
import com.zcup.model.Poi;
import com.zcup.query.PoiQuery;
import com.zcup.service.PoiService;

public class PoiServiceImpl extends BaseServiceImpl<Poi,PoiQuery> implements PoiService{

	private PoiDao poiDao;

	public PoiDao getPoiDao() {
		return poiDao;
	}

	public void setPoiDao(PoiDao poiDao) {
		this.poiDao = poiDao;
		this.baseDao = poiDao;
	}
}
