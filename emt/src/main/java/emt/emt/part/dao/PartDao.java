package emt.emt.part.dao;

import java.util.List;

import emt.emt.common.domain.Question;

public interface PartDao {
	
	List<Question> partQuestion(Question question);

}
