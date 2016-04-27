package emt.emt.grammar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import emt.emt.common.domain.Grammar;
import emt.emt.grammar.dao.GrammarDao;

@Service
public class GrammarServiceImpl implements GrammarService{
	@Autowired private GrammarDao grammarDao;
	
	// 관리자 문제조회
	@Transactional
	@Override
	public List<Grammar> grammarList(int page) {
		return grammarDao.grammarList(page);
	}

	// 관리자 문제조회 페이징
	@Transactional
	@Override
	public int grammarCount() {
		return grammarDao.grammarCount();
	}

	// 관리자 문제상세보기
	@Transactional
	@Override
	public Grammar grammarView(Grammar grammar) {
		return grammarDao.grammarView(grammar);
	}
	
	// 관리자 문제등록
	@Transactional
	@Override
	public int grammarAdd(Grammar grammar) {
		return grammarDao.grammarAdd(grammar);
	}

	// 관리자 문제수정
	@Transactional
	@Override
	public int grammarUpdate(Grammar grammar) {
		return grammarDao.grammarUpdate(grammar);
	}

	// 관리자 문제삭제
	@Transactional
	@Override
	public int grammarDelete(Grammar grammar) {
		return grammarDao.grammarDelete(grammar);
	}

	@Transactional
	@Override
	public List<Grammar> userGrammarList(int type, int grammarInning) {
		return grammarDao.userGrammarList(type, grammarInning);
	}
}
