package com.kh.realfinal.apply.model.controller;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.realfinal.apply.model.service.ApplyInfoApiService;
import com.kh.realfinal.apply.model.vo.ApplyNotice;
import com.kh.realfinal.apply.model.vo.ApplyNoticeAttach;
import com.kh.realfinal.apply.model.vo.AptLttotPblancDetail;
import com.kh.realfinal.common.util.PageInfo;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor 
public class ApplyCalAndNotiController {
	
	private final ApplyInfoApiService reService;
	
	
	@GetMapping("/error")
	public String error() {
		log.info("에러 페이지 호출!!");
		return "/common/error.jsp";
	}
	
	@GetMapping("/realEstate/notice")
	public String noticeList(Model model, @RequestParam Map<String, String> param) {
		log.info("param : " + param.toString());
		
		int page = 1;
		if(param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
			} catch (Exception e) {}
		}
		
		int notiTotalCount = reService.getApplyNotiTotalCount();
		
		PageInfo pageInfo = new PageInfo(page, 10, reService.getApplyNoticeCount(param), 20);
		List<ApplyNotice> list = reService.getApplyNoticeList(pageInfo, param);
		
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("totalCount", notiTotalCount);
		
		System.out.println("param!! " + param.toString());
		return "realEstate/realEstateNotice";
	}
	
	@GetMapping("/realEstate/notice/view")
	public String noticeView(Model model, @RequestParam("no") int no) {
		
		ApplyNotice notice = reService.findNoticeByRnum(no);
		List<ApplyNoticeAttach> attachList = reService.findApplyAttach(notice.getBbs_sn());
		
		if(notice == null) {
			return "redirect:error";
		}
		
		model.addAttribute("notice", notice);
		model.addAttribute("attach", attachList);
		
		System.out.println("첨부파일 : " + attachList.toString());
		
		return "realEstate/realEstateNoticeDetail";
	}
	
	@GetMapping("/realEstate/calendar")
	public String applyCalendar(Model model, @RequestParam Map<String, String> param) {
		
		List<AptLttotPblancDetail> list = reService.getAptLttotList(param);
		
		model.addAttribute("apt", list);
		
		return "realEstate/realEstateCalendar";
	}
	
	
	
}
