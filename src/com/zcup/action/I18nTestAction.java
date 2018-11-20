package com.zcup.action;

import java.util.Locale;

import org.apache.commons.lang3.StringUtils;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class I18nTestAction extends ActionSupport {
	
	private String locales;

	public String getLocales() {
		return locales;
	}

	public void setLocales(String locales) {
		this.locales = locales;
	}

	public String changeContext() {
		if(StringUtils.isNotBlank(locales))
			if("en_US".equals(locales)) {
				ActionContext.getContext().put("com.opensymphony.xwork2.ActionContext.locale", Locale.US);
				ActionContext.getContext().getSession().put("WW_TRANS_I18N_LOCALE",Locale.US);
			}else {
				ActionContext.getContext().put("com.opensymphony.xwork2.ActionContext.locale", Locale.SIMPLIFIED_CHINESE);
				ActionContext.getContext().getSession().put("WW_TRANS_I18N_LOCALE",Locale.SIMPLIFIED_CHINESE);
			}
		return SUCCESS;
	}
}
