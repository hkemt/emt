package emt.emt.review.dao.mapper;

import java.util.List;

import emt.emt.common.domain.Review;

public interface ReviewMapper {
	int reviewInsert(Review review);
	int reviewUpdate(Review review);
	int reviewDelete(Review review);
	List<Review> reviewList(Review review);
	Review reviewView(Review review);
	
	// 문제저장전 문제가 있는지 확인
	Review reviewCheck(Review review);
}
