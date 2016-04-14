package emt.emt.member.service;

import java.util.List;

import emt.emt.common.domain.User;

public interface MemberService {
	int memberInsert(User user);
	int memberUpdate(User user);
	int memberDelete(String userId);
	List<User> memberList(int page);
	int memberCount();
	User memberView(User user);
}