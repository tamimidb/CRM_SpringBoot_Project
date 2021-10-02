package com.crm.services;


import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

import org.springframework.stereotype.Service;

@Service
public class EmailService {
	public boolean sendEmail(String subject, String message, String to) {
		
		boolean f = false;
		String from ="tamimahmedidb@gmail.com";
		//variable for gmail
		String host= "smtp.gmail.com";
		//get the system properties
		Properties properties =System.getProperties();
		
	//setting important information to properties object
		properties.put("mail.smtp.host", host);	
		properties.put("mail.smtp.port", "465");
		properties.put("mail.smtp.ssl.enable", "true");
		properties.put("mail.smtp.auth", "true");
		
		//step 1:: to get session object....
		Session session = Session.getInstance(properties, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
			return new PasswordAuthentication("tamimahmedidb@gmail.com", "Tamim456@");
			}
			
			
		});	
		session.setDebug(true);
		
		
		MimeMessage m= new MimeMessage(session);
		try {
		
			m.setFrom(from);
			
			m.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			
			m.setSubject(subject);
			
			m.setContent(message, "text/html");
			
			
			
			
		
			Transport.send(m);
			System.out.println("sent success..");
			f=true;
		}catch(Exception e){
			e.printStackTrace();
		}
		return f;
		}
		
		
	}
	

