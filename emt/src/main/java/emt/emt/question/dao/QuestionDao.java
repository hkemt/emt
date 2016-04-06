package emt.emt.question.dao;

import java.util.List;

import emt.emt.common.domain.Question;

public interface QuestionDao {
	int questionInsert(Question question);
	int questionUpdate(Question question);
	int questionDelete(Question question);
	List<Question> questionList();
	Question questionView(Question question);

}
