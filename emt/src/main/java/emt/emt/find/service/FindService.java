package emt.emt.find.service;

import java.util.List;

import emt.emt.common.domain.User;

public interface FindService {
	void send(User user);
	List<User> findId(User user);
	User findPw(User user);
}
