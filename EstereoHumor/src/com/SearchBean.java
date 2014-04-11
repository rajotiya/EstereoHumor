package com;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class SearchBean extends ActionSupport 
{
	private String search;

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public String execute() throws Exception 
	{

		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println(getSearch());
		System.out.println();
		System.out.println();
		System.out.println();
		return SUCCESS;
	}
}
