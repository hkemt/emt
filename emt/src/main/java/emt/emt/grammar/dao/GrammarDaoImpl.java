package emt.emt.grammar.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import emt.emt.common.domain.Grammar;
import emt.emt.common.domain.GrammarParameter;
import emt.emt.grammar.dao.mapper.GrammarMapper;

@Repository
public class GrammarDaoImpl implements GrammarDao{
	@Autowired private GrammarMapper grammarMapper;
	
	// 관리자 문제조회
	@Override
	public List<Grammar> grammarList(int page) {
		
		return grammarMapper.grammarList(page);
	}

	// 관리자 문제조회 페이징
	@Override
	public int grammarCount() {
		return grammarMapper.grammarCount();
	}

	// 관리자 문제 상세보기
	@Override
	public Grammar grammarView(Grammar grammar) {

		return grammarMapper.grammarView(grammar);
	}
	// 관리자 문제등록
	@Override
	public int grammarAdd(Grammar grammar) {
		
		return grammarMapper.grammarAdd(grammar);
	}

	// 관리자 문제수정
	@Override
	public int grammarUpdate(Grammar grammar) {
		return grammarMapper.grammarUpdate(grammar);
	}

	// 관리자 문제삭제
	@Override
	public int grammarDelete(Grammar grammar) {
		return grammarMapper.grammarDelete(grammar);
	}

	@Override
	public List<Grammar> userGrammarList(GrammarParameter grp) {
		// TODO Auto-generated method stub
		return grammarMapper.userGrammarList(grp);
	}

	

}
