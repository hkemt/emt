package emt.emt.login.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import emt.emt.common.domain.User;
import emt.emt.login.dao.mapper.LoginMapper;

@Repository
public class LoginDaoImpl implements LoginDao{

	@Autowired LoginMapper loginMapper;
	
	@Override
	public User loginCheck(User user) {
		return loginMapper.loginCheck(user);
	}
}
