package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.opensymphony.xwork2.ActionSupport;

public class verifyRegistration extends ActionSupport 
{
	private static final long serialVersionUID = 1L;
	private String data;
    private String statusrow;
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}

	public String execute() throws Exception
	{
		 DAO d=DAO.getInstance();
		PreparedStatement pstm= d.getPstm("select * from REGISTER where RANDOM_NO=?");
		pstm.setString(1, data);
		ResultSet rs=pstm.executeQuery();
		while (rs.next()) {
			System.out.println("email is :-" + rs.getString(2));
			statusrow = rs.getString(5);
			System.out.println("status is  :-" + rs.getString(6));
			System.out.println("status is  :-" + rs.getString(6));
			System.out.println("status is  :-" + rs.getString(6));
			System.out.println("status is  :-" + rs.getString(6));
			System.out.println("status is  :-" + rs.getString(6));
			System.out.println("status is  :-" + rs.getString(6));
			}
	
if (statusrow != null && statusrow.length() > 0) 
{
	DAO d1 = DAO.getInstance();
	PreparedStatement pst = d1.getPstm("update REGISTER  set STATUS=? where RANDOM_NO=?");
	pst.setString(1, "enabled");
	pst.setString(2, statusrow);
	pst.executeUpdate();
	return SUCCESS;
} else {
	return ERROR;
}
}
}