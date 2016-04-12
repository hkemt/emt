package emt.emt.notice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import emt.emt.common.domain.Notice;
import emt.emt.notice.service.NoticeService;

@Controller
public class NoticeController {
	@Autowired private NoticeService noticeService;
	
	@RequestMapping("adminNotice")
	public String adminNotice(Model model) {
		return "admin/notice/adminNotice";
	}
	
	@RequestMapping("noticeList")
	@ResponseBody
	public List<Notice> noticeList(int type){
		return noticeService.noticeList(type);
	}
	
	@RequestMapping("noticeCount")
	@ResponseBody
	public int noticeCount(){
		return noticeService.noticeCount();
	}
	
	
	
}
