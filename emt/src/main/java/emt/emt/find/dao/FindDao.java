package emt.emt.find.dao;

import java.util.List;

import emt.emt.common.domain.User;

public interface FindDao {
	List<User> FindId(User user);
	User FindPw(User user);
}
