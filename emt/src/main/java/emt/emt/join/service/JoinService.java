package emt.emt.join.service;

import emt.emt.domain.User;

public interface JoinService {
	User duplCheck(User user);
	int joinUser(User user);
}
