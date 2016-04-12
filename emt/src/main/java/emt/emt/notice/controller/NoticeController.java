package emt.emt.notice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import emt.emt.common.domain.Notice;
import emt.emt.notice.service.NoticeService;

@Controller
public class NoticeController {
	@Autowired private NoticeService noticeService;
	
	@RequestMapping("adminNotice")
	public String adminNotice(Model model) {
		List<Notice> notice = noticeService.noticeList();
		model.addAttribute("notice", notice);
		return "admin/notice/adminNotice";
	}
	
}
