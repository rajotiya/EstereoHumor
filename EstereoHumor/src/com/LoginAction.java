package com;

import java.sql.Blob;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedHashMap;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware {

	private static final long serialVersionUID = 1L;
	private String em;
	private String pass;
	private String emailid;
	private String password;
	private String status;
	private String pwd;
	Blob blob;
	Map<String, Object> m;
	LinkedHashMap<String, String> userData = new LinkedHashMap<String, String>();

	Validation v1 = new Validation();

	@Override
	public void setSession(Map<String, Object> map) {
		m = map;
	}

	public String getEm() {
		return em;
	}

	public void setEm(String em) {
		this.em = em;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String execute() throws Exception {
		DAO d = DAO.getInstance();

		PreparedStatement pst = d
				.getPstm("select * from REGISTER where EMAIL=? and STATUS='enabled'");
		pst.setString(1, em);
		ResultSet rs = pst.executeQuery();
		if (rs.next()) {
			password = rs.getString(3);
			blob = rs.getBlob(7);

			EncryptionDecryption ed = new EncryptionDecryption(password, blob);
			pwd = ed.getDecryptedData();
			if (pass.equals(pwd)) {
				userData.put("firstName", rs.getString(1));
				userData.put("email", rs.getString(2));

				m.put("userData", userData);
				m.put("sessionStatus", true);

				m.put("sessionEmail", em);
				return SUCCESS;
			} else {
				return ERROR;
			}
		} else {
			return ERROR;
		}
	}

	@Override
	public void validate() {

		if (em == null || em.length() < 1) {
			addFieldError("em", "Enter Your Email Address");
			System.out.println("email: " + em);
		} else if (!v1.isEmailValid(em)) {
			addFieldError("em", "Enter Your valid email");
		} else if (pass == null || pass.length() < 1) {
			addFieldError("pass", "Enter Your Password");
			System.out.println("password: " + pass);
		}

	}

}