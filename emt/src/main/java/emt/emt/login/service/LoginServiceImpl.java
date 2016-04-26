package emt.emt.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import emt.emt.common.domain.User;
import emt.emt.login.dao.LoginDao;

@Service
public class LoginServiceImpl implements LoginService{
	@Autowired LoginDao loginDao;
	
	@Transactional
	@Override
	public User loginCheck(User user) {
		return loginDao.loginCheck(user);
	}
}
