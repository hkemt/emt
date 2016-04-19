package emt.emt.grammar.dao.mapper;

import java.util.List;

import emt.emt.common.domain.Grammar;

public interface GrammarMapper {
	int grammarInsert(Grammar grammar);
	int grammarUpdate(Grammar grammar);
	int gramarDelete(Grammar grammar);
	List<Grammar> grammarList();
	Grammar grammarView(Grammar grammar);
	
}
