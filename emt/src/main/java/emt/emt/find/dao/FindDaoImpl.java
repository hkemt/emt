package emt.emt.find.dao;

import org.springframework.beans.factory.annotation.Autowired;

import emt.emt.common.domain.User;
import emt.emt.find.dao.mapper.FindMapper;

public class FindDaoImpl implements FindDao{
	@Autowired private FindMapper findMapper;
	@Override
	public User FindId(User user) {
		return findMapper.FindId(user);
	}

	@Override
	public User FindPw(User user) {
		return findMapper.FindPw(user);
	}
}
