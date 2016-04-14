package emt.emt.part.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import emt.emt.common.domain.Question;
import emt.emt.part.dao.PartDao;

@Service
public class PartServiceImpl implements PartService{

	@Autowired private PartDao partDao;

	@Override
	public List<Question> partQuestion(Question question) {

		return partDao.partQuestion(question);
	}
	
	
}
