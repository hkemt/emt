package emt.emt.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import emt.emt.dao.mapper.UserMapper;
import emt.emt.domain.User;

@Repository
public class UserDaoImpl implements UserDao{
	@Autowired private UserMapper userMapper;

	@Override
	public User loginCheck(User user) {
		return userMapper.loginCheck(user);
	}

}
