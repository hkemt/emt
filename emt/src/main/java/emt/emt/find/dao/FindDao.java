package emt.emt.find.dao;

import java.util.List;

import emt.emt.common.domain.User;

public interface FindDao {
	List<User> findId(User user);
	User findPw(User user);
}
