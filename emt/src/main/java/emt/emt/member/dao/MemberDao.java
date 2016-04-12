package emt.emt.member.dao;

import java.util.List;

import emt.emt.common.domain.User;

public interface MemberDao {
	int memberInsert(User user);
	int memberUpdate(User user);
	int memberDelete(User user);
	List<User> memberList(int page);
	int memberCount();
	User memberView(User user);
}