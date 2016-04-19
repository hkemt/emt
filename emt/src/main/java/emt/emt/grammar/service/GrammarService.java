package emt.emt.grammar.service;

import java.util.List;

import emt.emt.common.domain.Grammar;

public interface GrammarService {
	int grammarInsert(Grammar grammar);
	int grammarUpdate(Grammar grammar);
	int gramarDelete(Grammar grammar);
	List<Grammar> grammarList();
	Grammar grammarView(Grammar grammar);
	
}
