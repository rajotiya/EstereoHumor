package com;

import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.opensymphony.xwork2.ActionSupport;

public class PlayAction extends ActionSupport
{
	private static final long serialVersionUID = 1L;

	private String profileImage;
	private String profileImageContentType;
	private String profileImageFileName;

	public String getProfileImage() {
		return profileImage;
	}

	public void setProfileImage(String profileImage) {
		this.profileImage = profileImage;
	}
	public String getProfileImageContentType()
	{
		return profileImageContentType;
	}

	public void setProfileImageContentType(String profileImageContentType)
	{
		this.profileImageContentType = profileImageContentType;
	}

	public String getProfileImageFileName()
	{
		return profileImageFileName;
	}

	public void setProfileImageFileName(String profileImageFileName)
	{
		this.profileImageFileName = profileImageFileName;
	}

	public String execute() throws Exception
	{
		try
		{
			String s;
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "estereohumor", "estereohumor");
			PreparedStatement preparedStatement = con.prepareCall("select SNAME from SONG");
			
			ResultSet rs = preparedStatement.executeQuery();
			rs.next();
			
			s = rs.getString(1) ;
			profileImage=s;
			profileImageFileName = "audio.mp3";
			profileImageContentType = "audio/mp3";
			System.out.println(s);
			
		}
		catch (Exception e)
		{
			System.out.println(e.getMessage());
			e.printStackTrace();
			return ERROR;
		}
		return SUCCESS;
	}

	
}
