package com;

import java.util.Properties;


import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendEmail {

   private String from="estereohumor@gmail.com";
   private String password="estereohumorproject";
   private String to;
   private String subject="You have registered successfully to Estereo Humor";
   private String Massagebody;
   private String randomNo;
   public String data;

   static Properties properties = new Properties();
   static
   {
      properties.put("mail.smtp.host", "smtp.gmail.com");
      properties.put("mail.smtp.socketFactory.port", "465");
      properties.put("mail.smtp.socketFactory.class",
                     "javax.net.ssl.SSLSocketFactory");
      properties.put("mail.smtp.auth", "true");
      properties.put("mail.smtp.port", "465");
   }

   public String mailExecute(String em,String randomNo) 
   {
      String ret = "success";
      this.to=em;
	   this.randomNo=randomNo;	
	   data=this.randomNo;
      try
      {
         Session session = Session.getDefaultInstance(properties,  
            new javax.mail.Authenticator() {
            protected PasswordAuthentication 
            getPasswordAuthentication() {
            return new 
            PasswordAuthentication(from, password);
            }});

         Message message = new MimeMessage(session);
         message.setFrom(new InternetAddress(from));
         message.setRecipients(Message.RecipientType.TO, 
            InternetAddress.parse(to));
         message.setSubject(subject);
         message.setText("Dear Customer,"+"\n"+"Thanks for registering with us."+"\n"+"Please click on given below confirmation link."+"\n"+"http://localhost:8085/EstereoHumor/confirmRegister?data="+randomNo +"\n"+"Regards,"+"\n"+"Webmaster"+"\n"+"Estereo Humor" );
         Transport.send(message);
      }
      catch(Exception e)
      {
         //ret = ERROR;
         e.printStackTrace();
      }
      return ret;
   }

   public String getFrom() {
      return from;
   }

   public void setFrom(String from) {
      this.from = from;
   }

   public String getPassword() {
      return password;
   }

   public void setPassword(String password) {
      this.password = password;
   }

   public String getTo() {
      return to;
   }

   public void setTo(String to) {
      this.to = to;
   }

   public String getSubject() {
      return subject;
   }

   public void setSubject(String subject) {
      this.subject = subject;
   }

  
   public static Properties getProperties() {
      return properties;
   }

   public static void setProperties(Properties properties) {
	   SendEmail.properties = properties;
   }

public String getMassagebody() {
	return Massagebody;
}

public void setMassagebody(String massagebody) {
	Massagebody = massagebody;
}
  
}