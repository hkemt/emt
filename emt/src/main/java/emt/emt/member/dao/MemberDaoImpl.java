package emt.emt.member.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import emt.emt.common.domain.User;
import emt.emt.member.dao.mapper.MemberMapper;

@Repository
public class MemberDaoImpl implements MemberDao{
	@Autowired private MemberMapper memberMapper;

	@Override
	public int memberInsert(User user) {
		// TODO Auto-generated method stub
		return memberMapper.memberInsert(user);
	}

	@Override
	public int memberUpdate(User user) {
		// TODO Auto-generated method stub
		return memberMapper.memberUpdate(user);
	}

	@Override
	public int memberDelete(User user) {
		// TODO Auto-generated method stub
		return memberMapper.memberDelete(user);
	}

	@Override
	public List<User> memberList(int page) {
		// TODO Auto-generated method stub
		return memberMapper.memberList(page);
	}

	@Override
	public User memberView(User user) {
		// TODO Auto-generated method stub
		return memberMapper.memberView(user);
	}

	@Override
	public int memberCount() {
		// TODO Auto-generated method stub
		return memberMapper.memberCount();
	}

}
