package emt.emt.grammar.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import emt.emt.common.domain.Grammar;
import emt.emt.grammar.dao.mapper.GrammarMapper;

@Repository
public class GrammarDaoImpl implements GrammarDao{
	@Autowired private GrammarMapper grammarMapper;
	
	@Override
	public int grammarInsert(Grammar grammar) {
		// TODO Auto-generated method stub
		return grammarMapper.grammarInsert(grammar);
	}

	@Override
	public int grammarUpdate(Grammar grammar) {
		// TODO Auto-generated method stub
		return grammarMapper.grammarUpdate(grammar);
	}

	@Override
	public int gramarDelete(Grammar grammar) {
		// TODO Auto-generated method stub
		return grammarMapper.gramarDelete(grammar);
	}

	@Override
	public List<Grammar> grammarList() {
		// TODO Auto-generated method stub
		return grammarMapper.grammarList();
	}

	@Override
	public Grammar grammarView(Grammar grammar) {
		// TODO Auto-generated method stub
		return grammarMapper.grammarView(grammar);
	}

}
