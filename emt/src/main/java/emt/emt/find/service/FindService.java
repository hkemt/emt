package emt.emt.find.service;

import java.util.List;

import emt.emt.common.domain.User;

public interface FindService {
	void send(User user);
	List<User> FindId(User user);
	User FindPw(User user);
}
