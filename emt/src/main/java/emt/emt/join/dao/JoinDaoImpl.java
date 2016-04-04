package emt.emt.join.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import emt.emt.common.domain.User;
import emt.emt.join.dao.mapper.JoinMapper;

@Repository
public class JoinDaoImpl implements JoinDao{

	@Autowired private JoinMapper joinMapper;
	@Override
	public User duplCheck(User user) {
		System.out.println("dao");
		return joinMapper.duplCheck(user);
	}

	@Override
	public int joinUser(User user) {
		return joinMapper.joinUser(user);
	}

}
