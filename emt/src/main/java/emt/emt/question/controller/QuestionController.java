package emt.emt.question.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import emt.emt.common.domain.Question;
import emt.emt.question.service.QuestionService;

@Controller
public class QuestionController {
	@Value("${savePath}") private String savePath;
	@Autowired private QuestionService questionService;
	
	//2_1 문제관리 페이지 이동
	@RequestMapping("adminQuestion")
	public String adminQuestion(Model model){
		return "admin/question/adminQuestion";
	}
	
	//2_2 문제관리 전체목록
	@RequestMapping("questionList")
	@ResponseBody
	public List<Question> questionList(int type){
		
		return questionService.questionList(type);
	}
	
	//2_3 문제관리 전체목록 수
	@RequestMapping("questionCount")
	@ResponseBody
	public int questionCount(){
		return questionService.questionCount();
	}
	
	//2_4 문제관리 상세보기
	@RequestMapping("questionView")
	public String questionView(Question question, Model model){
		question = questionService.questionView(question);
		model.addAttribute("question", question);
		
		return "admin/question/adminQuestionView";
	}
	
	@RequestMapping("admin/question/questionAdd")
	public String questionAdd(){
		return "admin/question/questionAdd";
	}
	
	@RequestMapping(value="admin/question/questionAdd",method = RequestMethod.POST)
	public String upload(MultipartFile uploadFile,String questionType,HttpServletRequest request){
		System.out.println(questionType);
		//String dir2 = request.getServletPath();
		String dir = request.getServletContext().getRealPath(savePath);
		System.out.println(dir);
		String fileName = uploadFile.getOriginalFilename();
		save(dir + "/" + questionType+"/"+ fileName, uploadFile);
		return "admin/question/questionAdd";
	}
	
	private void save(String fullFileName, MultipartFile uploadFile){
		try {
			uploadFile.transferTo(new File(fullFileName));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
