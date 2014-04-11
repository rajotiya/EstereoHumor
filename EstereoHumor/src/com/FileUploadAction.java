package com;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.opensymphony.xwork2.ActionSupport;

public class FileUploadAction extends ActionSupport
{
	private static final long serialVersionUID = 1L;

	private File profileImage;
	private String profileImageContentType;
	private String profileImageFileName;

	public File getProfileImage()
	{
		return profileImage;
	}

	public void setProfileImage(File profileImage)
	{
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
	{int count=0;
		try
		{
			InputStream fileInput = new FileInputStream(profileImage);
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "estereohumor", "estereohumor");
			Statement st1=con.createStatement();
			ResultSet rs=st1.executeQuery("select max(SId) from SONG");
			if(rs.next())
			{
				
				count= rs.getInt(1)+1;
			}
			PreparedStatement preparedStatement = con.prepareCall("insert into SONG values(?,?,?)");
			preparedStatement.setInt(1, count);
			preparedStatement.setString(2,profileImageFileName );
			preparedStatement.setBinaryStream(3, fileInput, (int) profileImage.length());
			preparedStatement.executeUpdate();
			
			System.out.println("inserted Successfully!");
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
