package emt.emt.part.dao.mapper;

import java.util.List;

import emt.emt.common.domain.Question;

public interface PartMapper {
	
	List<Question> partAll(Question question);

}
