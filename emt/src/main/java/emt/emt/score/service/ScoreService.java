package emt.emt.score.service;

import java.util.List;

import emt.emt.common.domain.Score;

public interface ScoreService {
	int ScoreInsert(Score score);
	int ScoreUpdate(Score score);
	int ScoreDelete(Score score);
	List<Score> scoreList(Score score);
	Score scoreView(Score score);

}
