package emt.emt.wrong.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import emt.emt.common.domain.Wrong;
import emt.emt.wrong.dao.WrongDao;

@Service
public class WrongServiceImpl implements WrongService{
	@Autowired private WrongDao wrongDao;

	@Override
	public int wrongInsert(Wrong wrong) {
		// TODO Auto-generated method stub
		return wrongDao.wrongInsert(wrong);
	}

	@Override
	public int wrongUpdate(Wrong wrong) {
		// TODO Auto-generated method stub
		return wrongDao.wrongUpdate(wrong);
	}

	@Override
	public int wrongDelete(Wrong wrong) {
		// TODO Auto-generated method stub
		return wrongDao.wrongDelete(wrong);
	}

	@Override
	public List<Wrong> wrongList() {
		// TODO Auto-generated method stub
		return wrongDao.wrongList();
	}

	@Override
	public Wrong wrongView(Wrong wrong) {
		// TODO Auto-generated method stub
		return wrongDao.wrongView(wrong);
	}
}
