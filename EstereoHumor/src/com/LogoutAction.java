package com;


import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class LogoutAction extends ActionSupport implements SessionAware {
    SessionMap<String, Object> m;

	
	@Override
	public String execute() throws Exception {
		m.invalidate();
	  return SUCCESS;
	}


	@Override
	public void setSession(Map<String, Object> map) {
		m=(SessionMap<String, Object>) map;
		}
    
}
