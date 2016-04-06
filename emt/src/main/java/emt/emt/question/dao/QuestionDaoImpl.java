package emt.emt.question.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import emt.emt.common.domain.Question;
import emt.emt.question.dao.mapper.QuestionMapper;

@Repository
public class QuestionDaoImpl implements QuestionDao{
	@Autowired private QuestionMapper questionMapper;
	
	@Override
	public int questionInsert(Question question) {
		// TODO Auto-generated method stub
		return questionMapper.questionInsert(question);
	}

	@Override
	public int questionUpdate(Question question) {
		// TODO Auto-generated method stub
		return questionMapper.questionUpdate(question);
	}

	@Override
	public int questionDelete(Question question) {
		// TODO Auto-generated method stub
		return questionMapper.questionDelete(question);
	}

	@Override
	public List<Question> questionList() {
		// TODO Auto-generated method stub
		return questionMapper.questionList();
	}

	@Override
	public Question questionView(Question question) {
		// TODO Auto-generated method stub
		return questionMapper.questionView(question);
	}

}
