package emt.emt.review.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import emt.emt.common.domain.Review;
import emt.emt.review.dao.ReviewDao;

@Service
public class ReviewServiceImpl implements ReviewService{
	@Autowired private ReviewDao reviewDao;
	
	@Override
	public int reviewInsert(Review review) {
		// TODO Auto-generated method stub
		return reviewDao.reviewInsert(review);
	}

	@Override
	public int reviewUpdate(Review review) {
		// TODO Auto-generated method stub
		return reviewDao.reviewUpdate(review);
	}

	@Override
	public int reviewDelete(Review review) {
		// TODO Auto-generated method stub
		return reviewDao.reviewDelete(review);
	}

	@Override
	public List<Review> reviewList(Review review) {
		// TODO Auto-generated method stub
		return reviewDao.reviewList(review);
	}

	@Override
	public Review reviewView(Review review) {
		// TODO Auto-generated method stub
		return reviewDao.reviewView(review);
	}

}
