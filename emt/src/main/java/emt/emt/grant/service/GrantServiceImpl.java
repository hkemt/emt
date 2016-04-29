package emt.emt.grant.service;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import emt.emt.common.domain.User;
import emt.emt.grant.dao.GrantDao;

@Service
public class GrantServiceImpl implements GrantService{

	@Autowired private GrantDao grantDao;
	@Autowired private JavaMailSender mailSender;
	@Value("${serverIp}") private String serverIp;
	@Override
	public void sendAuthMail(User user) {
		MimeMessage message = mailSender.createMimeMessage();
			try {
				MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
				messageHelper.setSubject("[emt]"+user.getUserId()+"님 회원가입 승인 메일입니다.");
				String htmlContent ="<a href='http://"+serverIp+"/emt/grantAuth?uuid="+user.getUuid() + "'>가입승인링크</a>";
				messageHelper.setText(htmlContent, true);
				messageHelper.setFrom(new InternetAddress("inwon5554@gmail.com"));
				messageHelper.setTo(new InternetAddress(user.getEmail()));
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
