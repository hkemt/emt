package emt.emt.review.service;

import java.util.List;

import emt.emt.common.domain.Question;
import emt.emt.common.domain.Review;

public interface ReviewService {
	int reviewInsert(Review review);
	int reviewUpdate(Review review);
	int reviewDelete(Review review);
	List<Review> reviewList(Review review);
	Review reviewView(Review review);
	Question questionReview(int questionNo);
	// 문제저장전 문제가 있는지 확인
	Review reviewCheck(Review review);	
}
