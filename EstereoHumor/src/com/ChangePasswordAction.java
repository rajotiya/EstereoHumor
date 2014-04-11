package com;

import java.sql.Blob;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class ChangePasswordAction extends ActionSupport implements SessionAware{
 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
private String oldPass;
 private String newPass;
 private String confirmPass;
 private String sessionEmail;
 private String password;
 private String pwd;
 Validation v1 = new Validation();
 Blob blob;
 Map<String, Object> m;
 public String getNewPass() {
	return newPass;
}
public void setNewPass(String newPass) {
	this.newPass = newPass;
}


public String getOldPass() {
	return oldPass;
}
public void setOldPass(String oldPass) {
	this.oldPass = oldPass;
}
public String getConfirmPass() {
	return confirmPass;
}
public void setConfirmPass(String confirmPass) {
	this.confirmPass = confirmPass;
}
 @Override
	public String execute() throws Exception {
	 sessionEmail = (String) m.get("sessionEmail");
	 System.out.println();System.out.println(sessionEmail);System.out.println();
	 DAO d=DAO.getInstance();
	PreparedStatement pstm= d.getPstm("select * from REGISTER where EMAIL=?");
	pstm.setString(1, sessionEmail);
	ResultSet rs = pstm.executeQuery();
	if (rs.next())
	{
		  password =rs.getString(3);
		    blob=rs.getBlob(7);
	}
	EncryptionDecryption ed = new EncryptionDecryption(password, blob);
		pwd = ed.getDecryptedData();
	//to decrypt password
	ForgetEmail mail= new ForgetEmail();
			if (pwd.equals(oldPass))
			{
				 DAO d1=DAO.getInstance();
				PreparedStatement pst = d1.getPstm("update REGISTER set PASSWORD=? where EMAIL=?");
                pst.setString(1, pwd);
				pst.setString(2, sessionEmail);
				pst.executeUpdate();
				 String check=mail.mailExecute(sessionEmail, newPass);
				 if(check.equalsIgnoreCase("success"))
					 
				 {
					 System.out.println("Your password is send");
					 System.out.println("Your password is send");
					 System.out.println("Your password is send");
					 System.out.println("Your password is send");
					 System.out.println("Your password is send");
				
					return SUCCESS;
				 }				
				
			}
			 return ERROR;
		}

@Override
public void setSession(Map<String, Object> map) {
	m=map;
	}
@Override
	public void validate() {
	if (!confirmPass.equals(newPass)) {
		addFieldError("confirmPass","confirm password do not match");
	}
	}
}
