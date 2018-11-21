package com.zcup.utils;

import java.util.Collection;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;

/**
 * 
 * 将集合转jsonArray，将object转json
 *
 */
public class JsonUtils {

	public static JSONArray convert2JSONArray(Collection coll,String[] excludes) {
		JsonConfig jc = new JsonConfig();
		jc.setExcludes(excludes);
		JSONArray array = JSONArray.fromObject(coll,jc);
		return array;
	}
	
	public static JSONObject convert2JSONObject(Object obj,String[] excludes) {
		JsonConfig jc = new JsonConfig();
		jc.setExcludes(excludes);
		JSONObject object = JSONObject.fromObject(obj,jc);
		return object;
	}
	
	
}
