package emt.emt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import emt.emt.dao.UserDao;
import emt.emt.domain.User;

@Repository
public class UserServiceImpl implements UserService{
	@Autowired UserDao userDao;
	
	@Override
	public User loginCheck(User user) {
		return userDao.loginCheck(user);
	}
}
