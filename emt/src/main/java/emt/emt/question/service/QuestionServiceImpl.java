package emt.emt.question.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import emt.emt.common.domain.Question;
import emt.emt.question.dao.QuestionDao;

@Service
public class QuestionServiceImpl implements QuestionService{
	@Autowired private QuestionDao questionDao;

	@Override
	public int questionInsert(Question question) {
		// TODO Auto-generated method stub
		return questionDao.questionInsert(question);
	}

	@Override
	public int questionUpdate(Question question) {
		// TODO Auto-generated method stub
		return questionDao.questionUpdate(question);
	}

	@Override
	public int questionDelete(Question question) {
		// TODO Auto-generated method stub
		return questionDao.questionDelete(question);
	}

	@Override
	public List<Question> questionList(int page) {
		// TODO Auto-generated method stub
		return questionDao.questionList(page);
	}

	@Override
	public Question questionView(Question question) {
		// TODO Auto-generated method stub
		return questionDao.questionView(question);
	}

	@Override
	public int questionCount() {
		// TODO Auto-generated method stub
		return questionDao.questionCount();
	}
}
