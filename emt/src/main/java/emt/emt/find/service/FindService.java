package emt.emt.find.service;

import emt.emt.common.domain.User;

public interface FindService {
	void send(User user);
	User FindId(User user);
	User FindPw(User user);
}
