package emt.emt.score.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import emt.emt.common.domain.Score;
import emt.emt.score.service.ScoreService;

@Controller
public class ScoreController {
	@Autowired private ScoreService scoreService;
	
	//스코어페이지로 이동
	@RequestMapping("user/score/userScore")
	public String userScore(Model model){
		List<Score> score = scoreService.scoreList();
		model.addAttribute("score",	score);
		return "user/score/userScoreList";
	}
	
	//스코어 추가하기
	@RequestMapping(value="user/score/scoreInsert", method=RequestMethod.POST)
	@ResponseBody
	public int scoreInsert(Score score){
		int res = scoreService.ScoreInsert(score);
		return res;
	}
	
}
