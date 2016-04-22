package emt.emt.find.dao;

import emt.emt.common.domain.User;

public interface FindDao {
	User FindId(User user);
	User FindPw(User user);
}
