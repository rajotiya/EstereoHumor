package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Random;

import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String nm;
	private String em;
	private String pass;
	private String cpass;
	private String no;
	private String status="disable";
	/*
	 * object creation of class which is responsible for sending mail.
	 */
	SendEmail mail = new SendEmail();
	/*
	 * object creation of class for validations.
	 */
	Validation vl = new Validation();

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getCpass() {
		return cpass;
	}

	public void setCpass(String cpass) {
		this.cpass = cpass;
	}

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public String getNm() {
		return nm;
	}

	public void setNm(String nm) {
		this.nm = nm;
	}

	public String getEm() {
		return em;
	}

	public void setEm(String em) {
		this.em = em;
	}
	/*
	 * code for connection establish and insert data into database.
	 */
	@Override
	public String execute() throws Exception {
		int rn = 1121;
		Random r = new Random();

		for (int i = 1; i < 5; i++) {
			rn = r.nextInt(3324);
		}
		String value = em + rn;
		EncryptionDecryption ed=new EncryptionDecryption(pass);
		DAO d=DAO.getInstance();
		PreparedStatement pst = d.getPstm("insert into REGISTER values (?,?,?,?,?,?,?)");
		pst.setString(1, nm);
		pst.setString(2, em);
		pst.setString(3, ed.getEncryptedData());
		pst.setString(4, no);
		pst.setString(5, value);
		pst.setString(6, status);
		pst.setObject(7, ed.getSecretKey());
		pst.executeUpdate();
		String cemail = mail.mailExecute(em, value);
		return SUCCESS;
	}
	/*
	 * code for validation for register.
	 */
	@Override
	public void validate() {
		if (getNm().length() < 1 || getEm().length() < 1
				|| getPass().length() < 1 || getCpass().length() < 1
				|| getNo().length() < 1) {
			addFieldError("nm", "Please fill the mandatory fields");
			addFieldError("em", "Please fill the mandatory fields");
			addFieldError("pass", "Please fill the mandatory fields");
			addFieldError("cpass", "Please fill the mandatory fields");
			addFieldError("no", "Please fill the mandatory fields");

		} else if (!vl.isEmailValid(em)) {
			addFieldError("em", "Enter Your Email Address");
		} else if (pass.length() < 6) {
			addFieldError("pass", "please Enter Strong Password");
		}

		else if (!cpass.equals(pass)) {
			addFieldError("cpass","confirm password do not match");
		} else if (vl.mobileNo(no)) {
			addFieldError("no", "Please Enter Your Mobile Number");
		}

	}

}
