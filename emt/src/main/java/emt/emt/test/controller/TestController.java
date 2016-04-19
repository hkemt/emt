package emt.emt.test.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import emt.emt.common.domain.Question;
import emt.emt.part.service.PartService;

@Controller
public class TestController {
	@Autowired PartService partService;
	
	@RequestMapping(value="/user/test/mockTest",method = RequestMethod.POST)
	@ResponseBody
	public Question part1(Question question, int questionType){
		question.setQuestionType(questionType);
		List<Question> parts = partService.partQuestion(question);
		int random = (int)(Math.random()*parts.size());
		question = parts.get(random);
		return question;
	}
}
