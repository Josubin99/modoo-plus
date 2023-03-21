package com.spring.biz.common;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service("emailService")
public class EmailService {

	@Autowired
	protected JavaMailSender mailSender;

	public boolean SendEmail(EmailVO email) throws Exception {

		MimeMessage msg = mailSender.createMimeMessage();
		try {
			msg.setSubject(email.getSubject());
			msg.setText(email.getContent());
			msg.setRecipients(MimeMessage.RecipientType.TO, InternetAddress.parse(email.getReceiver()));

		} catch (MessagingException e) {
			System.out.println("MessagingException");
			e.printStackTrace();
		}

		try {
			mailSender.send(msg);
			return true;
		} catch (MailException e) {
			System.out.println("MailException 발생");
			e.printStackTrace();
		}
		return false;

	}
}
