package emt.emt.review.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import emt.emt.common.domain.Review;
import emt.emt.review.dao.mapper.ReviewMapper;

@Repository
public class ReviewDaoImpl implements ReviewDao{
	@Autowired private ReviewMapper reviewMapper;
	@Override
	public int reviewInsert(Review review) {
		// TODO Auto-generated method stub
		return reviewMapper.reviewInsert(review);
	}

	@Override
	public int reviewUpdate(Review review) {
		// TODO Auto-generated method stub
		return reviewMapper.reviewUpdate(review);
	}

	@Override
	public int reviewDelete(Review review) {
		// TODO Auto-generated method stub
		return reviewMapper.reviewDelete(review);
	}

	@Override
	public List<Review> reviewList(Review review) {
		// TODO Auto-generated method stub
		return reviewMapper.reviewList(review);
	}

	@Override
	public Review reviewView(Review review) {
		// TODO Auto-generated method stub
		return reviewMapper.reviewView(review);
	}

	@Override
	public Review reviewCheck(Review review) {

		return reviewMapper.reviewCheck(review);
	}

	

}
