package emt.emt.score.dao;

import java.util.List;

import emt.emt.common.domain.Score;

public interface ScoreDao {
	int ScoreInsert(Score score);
	int ScoreUpdate(Score score);
	int ScoreDelete(Score score);
	List<Score> scoreList(Score score);
	Score scoreView(Score score);

}
