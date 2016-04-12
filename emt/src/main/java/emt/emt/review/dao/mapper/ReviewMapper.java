package emt.emt.review.dao.mapper;

import java.util.List;

import emt.emt.common.domain.Review;

public interface ReviewMapper {
	int reviewInsert(Review review);
	int reviewUpdate(Review review);
	int reviewDelete(Review review);
	List<Review> reviewList(Review review);
	Review reviewView(Review review);
	
}
