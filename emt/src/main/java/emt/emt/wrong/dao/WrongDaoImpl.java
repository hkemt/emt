package emt.emt.wrong.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import emt.emt.common.domain.Wrong;
import emt.emt.wrong.dao.mapper.WrongMapper;

@Repository
public class WrongDaoImpl implements WrongDao{
	@Autowired private WrongMapper wrongMapper;

	@Override
	public int wrongInsert(Wrong wrong) {
		// TODO Auto-generated method stub
		return wrongMapper.wrongInsert(wrong);
	}

	@Override
	public int wrongUpdate(Wrong wrong) {
		// TODO Auto-generated method stub
		return wrongMapper.wrongUpdate(wrong);
	}

	@Override
	public int wrongDelete(Wrong wrong) {
		// TODO Auto-generated method stub
		return wrongMapper.wrongDelete(wrong);
	}

	@Override
	public List<Wrong> wrongList(Wrong wrong) {
		// TODO Auto-generated method stub
		return wrongMapper.wrongList(wrong);
	}

	@Override
	public Wrong wrongView(Wrong wrong) {
		// TODO Auto-generated method stub
		return wrongMapper.wrongView(wrong);
	}
	
}
