package emt.emt.find.service;

import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import emt.emt.common.domain.User;
import emt.emt.find.dao.FindDao;

@Service
public class FindServiceImpl implements FindService {
	@Autowired
	private JavaMailSender mailSender;
	@Autowired
	private FindDao findDao;

	@Transactional
	@Override
	public void send(User user) {
		MimeMessage message = mailSender.createMimeMessage();
		String pw = null;
		if(FindPw(user)!=null){
			pw = FindPw(user).getUserPw();
		}
			try {
				message.setSubject("[emt] 비밀번호 찾기 결과", "UTF-8");
				message.setText(user.getUserId() + "회원님의 비밀번호는 : " + pw
						+ "\n입니다.");
				message.setFrom(new InternetAddress("inwon5554@gmail.com"));
				message.addRecipient(RecipientType.TO,
						new InternetAddress(user.getEmail()));
				mailSender.send(message);
			} catch (MessagingException e) {
				return;
			}
		System.out.println("MailServiceImpl.send() 끝.");
	}
	
	@Transactional
	@Override
	public List<User> FindId(User user) {
		return findDao.FindId(user);
	}
	
	@Transactional
	@Override
	public User FindPw(User user) {
		return findDao.FindPw(user);
	}
}
