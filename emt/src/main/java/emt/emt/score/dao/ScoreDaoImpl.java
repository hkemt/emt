package emt.emt.score.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import emt.emt.common.domain.Score;
import emt.emt.score.dao.mapper.ScoreMapper;

@Repository
public class ScoreDaoImpl implements ScoreDao{
	@Autowired private ScoreMapper scoreMapper;
	
	
	@Override
	public int ScoreInsert(Score score) {
		// TODO Auto-generated method stub
		return scoreMapper.ScoreInsert(score);
	}

	@Override
	public int ScoreUpdate(Score score) {
		// TODO Auto-generated method stub
		return scoreMapper.ScoreUpdate(score);
	}

	@Override
	public int ScoreDelete(Score score) {
		// TODO Auto-generated method stub
		return scoreMapper.ScoreDelete(score);
	}

	@Override
	public List<Score> scoreList(Score score) {
		// TODO Auto-generated method stub
		return scoreMapper.scoreList(score);
	}

	@Override
	public Score scoreView(Score score) {
		// TODO Auto-generated method stub
		return scoreMapper.scoreView(score);
	}

}
