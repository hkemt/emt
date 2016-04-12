package emt.emt.review.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import emt.emt.common.domain.Review;
import emt.emt.review.service.ReviewService;


@Controller
public class ReviewController {
	@Autowired private ReviewService reviewService;
	
	//1_복습 등록
	//2_복습 수정
	//3_복습 삭제
	
	//4_복습 목록보기
	@RequestMapping("user/review/userReview")
	public String userWrong(Model model, Review rv, HttpServletRequest request){
		System.out.println("gygggy");
		String sid= request.getParameter("sid");
		rv.setUserId(sid);
		System.out.println(rv.getUserId());
		List<Review> review = reviewService.reviewList(rv);
		model.addAttribute("review", review);
		return "/user/review/userReview";
		
	}
	
	
	//5_복습 상세보기
	
	
	
}
