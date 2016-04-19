package emt.emt.score.dao.mapper;

import java.util.List;

import emt.emt.common.domain.Score;

public interface ScoreMapper {
	int ScoreInsert(Score score);
	int ScoreUpdate(Score score);
	int ScoreDelete(Score score);
	List<Score> scoreList();
	Score scoreView(Score score);

}
