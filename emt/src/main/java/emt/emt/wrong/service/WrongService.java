package emt.emt.wrong.service;

import java.util.List;

import emt.emt.common.domain.Wrong;

public interface WrongService {
	int wrongInsert(Wrong wrong);
	int wrongUpdate(Wrong wrong);
	int wrongDelete(Wrong wrong);
	List<Wrong> wrongList(Wrong wrong);
	Wrong wrongView(Wrong wrong);
	

}
