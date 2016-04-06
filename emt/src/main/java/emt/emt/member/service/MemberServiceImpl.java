package emt.emt.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import emt.emt.common.domain.User;
import emt.emt.member.dao.MemberDao;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired private MemberDao memberDao;
	@Override
	public int memberInsert(User user) {
		// TODO Auto-generated method stub
		return memberDao.memberInsert(user);
	}

	@Override
	public int memberUpdate(User user) {
		// TODO Auto-generated method stub
		return memberDao.memberUpdate(user);
	}

	@Override
	public int memberDelete(User user) {
		// TODO Auto-generated method stub
		return memberDao.memberDelete(user);
	}

	@Override
	public List<User> memberList() {
		// TODO Auto-generated method stub
		return memberDao.memberList();
	}

	@Override
	public User memberView(User user) {
		// TODO Auto-generated method stub
		return memberDao.memberView(user);
	}

}
