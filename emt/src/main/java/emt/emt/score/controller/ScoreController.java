package emt.emt.score.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import emt.emt.common.domain.Score;
import emt.emt.score.service.ScoreService;

@Controller
public class ScoreController {
	@Autowired private ScoreService scoreService;
	
	// 2_1 사용자 문법 점수 페이지로 이동
	@RequestMapping("user/score/userScore")
	public String userScore(){
		return "user/score/userScoreList";
	}
	
	// 2_2 사용자 문법 점수 리스트 출력
	@RequestMapping("user/score/userScoreList")
	@ResponseBody
	public List<Score> userScoreList(HttpSession session, String userId, Score score){
		userId = (String)session.getAttribute("sid");
		score.setUserId(userId);
		return scoreService.scoreList(score);
	}
	
	// 2_3 사용자 문법 점수 추가하기 (문법문제를 풀고 난 후 점수를 저장)
	@RequestMapping(value="user/score/scoreInsert", method=RequestMethod.POST)
	@ResponseBody
	public int scoreInsert(Score score){
		int res = scoreService.ScoreInsert(score);
		return res;
	}
	
}
