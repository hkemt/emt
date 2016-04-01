package emt.emt.join.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import emt.emt.domain.User;
import emt.emt.join.dao.JoinDao;

@Repository
public class JoinServiceImpl implements JoinService{

	@Autowired JoinDao joinDao;
	
	@Override
	public User duplCheck(User user) {
		System.out.println("서비스");
		return joinDao.duplCheck(user);
	}

	@Override
	public int joinUser(User user) {
		return joinDao.joinUser(user);
	}
}
