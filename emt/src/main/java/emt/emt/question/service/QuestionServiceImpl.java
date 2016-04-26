package emt.emt.question.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import emt.emt.common.domain.Question;
import emt.emt.question.dao.QuestionDao;

@Service
public class QuestionServiceImpl implements QuestionService{
	@Autowired private QuestionDao questionDao;

	@Transactional
	@Override
	public int questionInsert(Question question) {
		return questionDao.questionInsert(question);
	}

	@Transactional
	@Override
	public int questionUpdate(Question question) {
		return questionDao.questionUpdate(question);
	}

	@Transactional
	@Override
	public int questionDelete(Question question) {
		return questionDao.questionDelete(question);
	}

	@Transactional
	@Override
	public List<Question> questionList(int page) {
		return questionDao.questionList(page);
	}

	@Transactional
	@Override
	public Question questionView(Question question) {
		return questionDao.questionView(question);
	}

	@Transactional
	@Override
	public int questionCount() {
		return questionDao.questionCount();
	}
}
