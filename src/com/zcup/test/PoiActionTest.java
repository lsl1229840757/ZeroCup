package com.zcup.test;

import java.util.Arrays;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.zcup.model.Note;
import com.zcup.model.Poi;
import com.zcup.service.PoiService;
import com.zcup.utils.JsonUtils;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:applicationContext.xml"})
public class PoiActionTest {
	@Resource
	private PoiService poiService;
	/**
	 * 有二级懒加载问题，使用spring要绑定事务到request上面
	 */
	@Test
	public void test() {
		List<Poi> list = poiService.list();
		JSONArray array = JsonUtils.convert2JSONArray(list, new String[] {"notes"}); // 先排除notes的集合对象
		for (int i = 0; i < array.size(); i++) {
			JSONObject jb = array.getJSONObject(i); // 获得每一个poiJSon
			Set<Note> notes = list.get(i).getNotes();
			JSONArray array2 = JsonUtils.convert2JSONArray(notes, new String[] {"user","poi"}); // 暂时不需要poi的相关信息
			// 组装Note对象,将user替换为name
			for (int j = 0; j < array2.size(); j++) {
				JSONObject jsonObject = array2.getJSONObject(j);
				jsonObject.put("user",((Note)notes.toArray()[j]).getUser().getName());
			}
			jb.put("notes", array2);
		}
		System.out.println(array);
	}

}
