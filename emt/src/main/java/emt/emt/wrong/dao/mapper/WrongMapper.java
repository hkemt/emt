package emt.emt.wrong.dao.mapper;

import java.util.List;

import emt.emt.common.domain.Wrong;

public interface WrongMapper {
	int wrongInsert(Wrong wrong);
	int wrongUpdate(Wrong wrong);
	int wrongDelete(Wrong wrong);
	List<Wrong> wrongList();
	Wrong wrongView(Wrong wrong);
	

}
