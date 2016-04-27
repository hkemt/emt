package emt.emt.find.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import emt.emt.common.domain.User;
import emt.emt.find.dao.mapper.FindMapper;

@Repository
public class FindDaoImpl implements FindDao{
	@Autowired private FindMapper findMapper;
	@Override
	public List<User> findId(User user) {
		return findMapper.findId(user);
	}

	@Override
	public User findPw(User user) {
		return findMapper.findPw(user);
	}
}
