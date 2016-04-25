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
	public List<User> FindId(User user) {
		return findMapper.FindId(user);
	}

	@Override
	public User FindPw(User user) {
		return findMapper.FindPw(user);
	}
}
