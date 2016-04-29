package emt.emt.join.service;

import emt.emt.common.domain.User;

public interface JoinService {
	User duplCheck(User user);
	int joinUser(User user);
	// 관리자가 직접 회원가입 시키기
	int joinAdminUser(User user);
}
