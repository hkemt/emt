package emt.emt.grant.service;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import emt.emt.common.domain.User;
import emt.emt.grant.dao.GrantDao;

@Service
public class GrantServiceImpl implements GrantService{

	@Autowired private GrantDao grantDao;
	@Autowired private JavaMailSender mailSender;
	
	@Override
	public void sendAuthMail(User user) {
		MimeMessage message = mailSender.createMimeMessage();
			try {
				message.setSubject("[emt]"+user.getUserId()+"님 회원가입 승인 메일입니다.", "UTF-8");
				message.setText("<a href='http://localhost/emt/grantAuth?userId="+user.getUserId() + "'>가입승인링크</a>");
				message.setFrom(new InternetAddress("inwon5554@gmail.com"));
				message.addRecipient(RecipientType.TO,
						new InternetAddress(user.getEmail()));
				mailSender.send(message);
			} catch (MessagingException e) {
				return;
			}
	}
	@Transactional
	@Override
	public int grantAuth(User user) {
		return grantDao.grantAuth(user);
	}
}
