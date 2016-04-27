package emt.emt.join.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import emt.emt.common.domain.User;
import emt.emt.join.dao.JoinDao;

@Service
public class JoinServiceImpl implements JoinService{
	@Autowired private JoinDao joinDao;
	

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
