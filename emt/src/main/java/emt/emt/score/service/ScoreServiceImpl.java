package emt.emt.score.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import emt.emt.common.domain.Score;
import emt.emt.score.dao.ScoreDao;

@Service
public class ScoreServiceImpl implements ScoreService{
	@Autowired private ScoreDao scoreDao;
	
	@Override
	public int ScoreInsert(Score score) {
		// TODO Auto-generated method stub
		return scoreDao.ScoreInsert(score);
	}

	@Override
	public int ScoreUpdate(Score score) {
		// TODO Auto-generated method stub
		return scoreDao.ScoreUpdate(score);
	}

	@Override
	public int ScoreDelete(Score score) {
		// TODO Auto-generated method stub
		return scoreDao.ScoreDelete(score);
	}

	@Override
	public List<Score> scoreList(Score score) {
		// TODO Auto-generated method stub
		return scoreDao.scoreList(score);
	}

	@Override
	public Score scoreView(Score score) {
		// TODO Auto-generated method stub
		return scoreDao.scoreView(score);
	}

}
