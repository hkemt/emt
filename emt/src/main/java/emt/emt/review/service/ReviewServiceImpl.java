package emt.emt.review.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import emt.emt.common.domain.Question;
import emt.emt.common.domain.Review;
import emt.emt.review.dao.ReviewDao;

@Service
public class ReviewServiceImpl implements ReviewService{
	@Autowired private ReviewDao reviewDao;
	
	@Transactional
	@Override
	public int reviewInsert(Review review) {
		return reviewDao.reviewInsert(review);
	}

	@Transactional
	@Override
	public int reviewUpdate(Review review) {
		return reviewDao.reviewUpdate(review);
	}

	@Transactional
	@Override
	public int reviewDelete(Review review) {
		return reviewDao.reviewDelete(review);
	}

	@Transactional
	@Override
	public List<Review> reviewList(Review review) {
		return reviewDao.reviewList(review);
	}

	@Transactional
	@Override
	public Review reviewView(Review review) {
		return reviewDao.reviewView(review);
	}

	@Transactional
	@Override
	public Review reviewCheck(Review review) {

		return reviewDao.reviewCheck(review);
	}

	@Transactional
	@Override
	public Question questionReview(int questionNo) {
		return reviewDao.questionReview(questionNo);
	}

}
