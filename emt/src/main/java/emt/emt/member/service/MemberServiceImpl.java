package emt.emt.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import emt.emt.common.domain.User;
import emt.emt.member.dao.MemberDao;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired private MemberDao memberDao;

	@Transactional
	@Override
	public int memberInsert(User user) {
		return memberDao.memberInsert(user);
	}

	@Transactional
	@Override
	public int memberUpdate(User user) {
		return memberDao.memberUpdate(user);
	}

	@Transactional
	@Override
	public int memberDelete(String userId) {
		return memberDao.memberDelete(userId);
	}

	@Transactional
	@Override
	public List<User> memberList(int page) {
		return memberDao.memberList(page);
	}

	@Transactional
	@Override
	public User memberView(User user) {
		return memberDao.memberView(user);
	}

	@Transactional
	@Override
	public int memberCount() {
		return memberDao.memberCount();
	}

	@Override
	public int userMemberDelete(String userId) {
		// TODO Auto-generated method stub
		return memberDao.userMemberDelete(userId);
	}

}
