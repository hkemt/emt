package emt.emt.test.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import emt.emt.common.domain.Question;
import emt.emt.common.domain.Review;
import emt.emt.part.service.PartService;
import emt.emt.review.service.ReviewService;

@Controller
public class TestController {
	@Autowired
	private PartService partService;
	@Autowired
	private ReviewService reviewService;

	// 모의고사 처음 들어왔을때
	@RequestMapping("/user/test/mockTest")
	public String test(Question question, Model model, Review rv,
			HttpSession session) {
		// 로그인한 아이디 가져오기
		String sid = (String) session.getAttribute("sid");
		if (sid != null) {
			rv.setUserId(sid);

			// 파트1부분
			question.setQuestionType(1);
			List<Question> part1 = partService.partQuestion(question);
			int random = (int) (Math.random() * part1.size());
			question = part1.get(random);
			model.addAttribute("part1", question.getQuestionVideo());
			rv.setQuestionNo(question.getQuestionNo());
			reviewService.reviewInsert(rv);

			question.setQuestionType(2);
			List<Question> part2 = partService.partQuestion(question);
			random = (int) (Math.random() * part2.size());
			question = part2.get(random);
			model.addAttribute("part2", question.getQuestionVideo());
			rv.setQuestionNo(question.getQuestionNo());
			reviewService.reviewInsert(rv);

			question.setQuestionType(3);
			List<Question> part3 = partService.partQuestion(question);
			random = (int) (Math.random() * part3.size());
			question = part3.get(random);
			model.addAttribute("part3", question.getQuestionVideo());
			rv.setQuestionNo(question.getQuestionNo());
			reviewService.reviewInsert(rv);

			question.setQuestionType(4);
			List<Question> part4 = partService.partQuestion(question);
			random = (int) (Math.random() * part4.size());
			question = part4.get(random);
			model.addAttribute("part4", question.getQuestionVideo());
			rv.setQuestionNo(question.getQuestionNo());
			reviewService.reviewInsert(rv);

			question.setQuestionType(5);
			List<Question> part5 = partService.partQuestion(question);
			random = (int) (Math.random() * part5.size());
			question = part5.get(random);
			model.addAttribute("part5", question.getQuestionVideo());
			rv.setQuestionNo(question.getQuestionNo());
			reviewService.reviewInsert(rv);

			question.setQuestionType(6);
			List<Question> part6 = partService.partQuestion(question);
			random = (int) (Math.random() * part6.size());
			question = part6.get(random);
			model.addAttribute("part6", question.getQuestionVideo());
			rv.setQuestionNo(question.getQuestionNo());
			reviewService.reviewInsert(rv);

			return "/user/test/mockTest";
		} else {
			return "/user/test/mockTest";
		}
	}
}
