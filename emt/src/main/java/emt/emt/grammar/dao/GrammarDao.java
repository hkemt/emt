package emt.emt.grammar.dao;

import java.util.List;

import emt.emt.common.domain.Grammar;
import emt.emt.common.domain.GrammarParameter;

public interface GrammarDao {

	// 관리자 문제조회
	List<Grammar> grammarList(int page);
		
	// 관리자 문제조회 페이징
	int grammarCount();
	
	// 관리자 문제 상세보기
	Grammar grammarView(Grammar grammar);
	
	// 관리자 문제등록
	int grammarAdd(Grammar grammar);
		
	// 관리자 문제수정
	int grammarUpdate(Grammar grammar);
		
	// 관리자 문제삭제
	int grammarDelete(Grammar grammar);
	
	//사용자 문제출력
	List<Grammar> userGrammarList(GrammarParameter grp);
	
}
