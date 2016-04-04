package emt.emt.login.dao;

import emt.emt.common.domain.User;

public interface LoginDao {
	User loginCheck(User user);
}
