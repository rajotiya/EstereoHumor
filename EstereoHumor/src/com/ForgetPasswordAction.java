package com;

import java.sql.Blob;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.opensymphony.xwork2.ActionSupport;

public class ForgetPasswordAction extends ActionSupport{

	private static final long serialVersionUID = 1L;

	
	private String forgetEmail;
	private String pass;
	private String pwd;
	Blob blob;
	private String checkpass;
	Validation v1 = new Validation();
	 //Object creation of class which is responsible for email
	ForgetEmail mail=new ForgetEmail();
	
	public String getForgetEmail() {
		return forgetEmail;
	}

	public void setForgetEmail(String forgetEmail) {
		this.forgetEmail = forgetEmail;
	}
  
	@Override
	public void validate() {
		if (!v1.isEmailValid(forgetEmail)) {
			addFieldError("forgetEmail", "Enter Your valid email");
		}
	}
	@Override
	public String execute() throws Exception{
		DAO d=DAO.getInstance();
		PreparedStatement pstm= d.getPstm("select *from REGISTER where EMAIL=?");
		pstm.setString(1, forgetEmail);
		ResultSet rs=pstm.executeQuery();
		if(rs.next())
		{	
		pwd = rs.getString(3);
		blob = rs.getBlob(7);
				
		}
		EncryptionDecryption ed = new EncryptionDecryption(pwd, blob);
		 pstm.executeUpdate();  
		 checkpass=ed.getDecryptedData();
		
		 String check=mail.mailExecute(forgetEmail, checkpass);
		 if(check.equalsIgnoreCase("success"))
		 {}
			return SUCCESS;
	

	}	
	
}
