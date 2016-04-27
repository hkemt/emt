package emt.emt.grant.service;

import emt.emt.common.domain.User;

public interface GrantService {
	void sendAuthMail(User user);
	public int grantAuth(User user);
}
