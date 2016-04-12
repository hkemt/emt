package emt.emt.question.service;

import java.util.List;

import emt.emt.common.domain.Question;

public interface QuestionService {
	int questionInsert(Question question);
	int questionUpdate(Question question);
	int questionDelete(Question question);
	List<Question> questionList(int page);
	int questionCount();
	Question questionView(Question question);

}
