package emt.emt.join.dao;

import emt.emt.common.domain.User;

public interface JoinDao {
	User duplCheck(User user);
	int joinUser(User user);
	// 관리자가 직접 회원가입 시키기
	int joinAdminUser(User user);
}
