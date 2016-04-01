package emt.emt.join.dao;

import emt.emt.domain.User;

public interface JoinDao {
	User duplCheck(User user);
	int joinUser(User user);
}
