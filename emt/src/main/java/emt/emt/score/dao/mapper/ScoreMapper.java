package emt.emt.score.dao.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;

import emt.emt.common.domain.Score;

public interface ScoreMapper {
	@Insert("INSERT INTO score values (seq_score_no.nextval, #{userId},#{grammarInning},#{scoreGrade}, sysdate )")
	int ScoreInsert(Score score);
	int ScoreUpdate(Score score);
	int ScoreDelete(Score score);
	List<Score> scoreList(Score score);
	Score scoreView(Score score);

}
