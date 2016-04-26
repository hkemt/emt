package emt.emt.score.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import emt.emt.common.domain.Score;
import emt.emt.score.dao.ScoreDao;

@Service
public class ScoreServiceImpl implements ScoreService{
	@Autowired private ScoreDao scoreDao;
	
	@Transactional
	@Override
	public int ScoreInsert(Score score) {
		return scoreDao.ScoreInsert(score);
	}

	@Transactional
	@Override
	public int ScoreUpdate(Score score) {
		return scoreDao.ScoreUpdate(score);
	}

	@Transactional
	@Override
	public int ScoreDelete(Score score) {
		return scoreDao.ScoreDelete(score);
	}

	@Transactional
	@Override
	public List<Score> scoreList(Score score) {
		return scoreDao.scoreList(score);
	}

	@Transactional
	@Override
	public Score scoreView(Score score) {
		return scoreDao.scoreView(score);
	}

}
