package emt.emt.member.dao.mapper;

import java.util.List;

import emt.emt.common.domain.User;

public interface MemberMapper {
	int memberInsert(User user);
	int memberUpdate(User user);
	int memberDelete(User user);
	List<User> memberList();
	User memberView(User user);
}
