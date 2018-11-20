package com.zcup.action;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
/**
 *	提供http的相关支持 ,用于ajax
 */
public class HttpBaseAction extends ActionSupport {

	protected HttpServletResponse response = ServletActionContext.getResponse();
	
}
