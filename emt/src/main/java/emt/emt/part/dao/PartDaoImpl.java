package emt.emt.part.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import emt.emt.common.domain.Question;
import emt.emt.part.dao.mapper.PartMapper;

@Repository
public class PartDaoImpl implements PartDao{

	@Autowired private PartMapper partMapper;
	
	@Override
	public List<Question> partAll(Question question) {
		
		return partMapper.partAll(question);
	}

}
