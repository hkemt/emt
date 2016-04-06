package emt.emt.wrong.dao;

import java.util.List;

import emt.emt.common.domain.Wrong;

public interface WrongDao {
	int wrongInsert(Wrong wrong);
	int wrongUpdate(Wrong wrong);
	int wrongDelete(Wrong wrong);
	List<Wrong> wrongList();
	Wrong wrongView(Wrong wrong);
	

}
