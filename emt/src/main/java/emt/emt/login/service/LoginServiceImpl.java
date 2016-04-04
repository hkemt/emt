package emt.emt.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import emt.emt.common.domain.User;
import emt.emt.login.dao.LoginDao;

@Service
public class LoginServiceImpl implements LoginService{

	@Autowired LoginDao loginDao;
	@Override
	public User loginCheck(User user) {
		return loginDao.loginCheck(user);
	}
}
