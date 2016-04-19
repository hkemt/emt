package emt.emt.grammar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import emt.emt.common.domain.Grammar;
import emt.emt.grammar.dao.GrammarDao;

@Service
public class GrammarServiceImpl implements GrammarService{
	@Autowired private GrammarDao grammarDao;	
	
	@Override
	public int grammarInsert(Grammar grammar) {
		// TODO Auto-generated method stub
		return grammarDao.grammarInsert(grammar);
	}

	@Override
	public int grammarUpdate(Grammar grammar) {
		// TODO Auto-generated method stub
		return grammarDao.grammarUpdate(grammar);
	}

	@Override
	public int gramarDelete(Grammar grammar) {
		// TODO Auto-generated method stub
		return grammarDao.gramarDelete(grammar);
	}

	@Override
	public List<Grammar> grammarList() {
		// TODO Auto-generated method stub
		return grammarDao.grammarList();
	}

	@Override
	public Grammar grammarView(Grammar grammar) {
		// TODO Auto-generated method stub
		return grammarDao.grammarView(grammar);
	}

}
