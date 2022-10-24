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
import com.kh.realfinal.apply.model.vo.UrbtyOfctlLttotPblancDetail;
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
	public String noticeList(Model model, 
			@RequestParam(required = false) Map<String, String> param,
			@RequestParam(required = false, defaultValue = "1") int page) {
		String category = "";


		
		PageInfo pageInfo = new PageInfo(page, 10, reService.getApplyNoticeCount(param, param.get("cateType")), 20);
		
		List<ApplyNotice> list = reService.getApplyNoticeList(pageInfo, param, param.get("cateType"));
		
		noticeExtracted(model, param, category, pageInfo, list);
		
		return "realEstate/realEstateNotice";
	}
	
	
	private void noticeExtracted(Model model,
			Map<String, String> param, 
			String category, 
			PageInfo pageInfo, 
			List<ApplyNotice> list) {
		
//		System.out.println("param 값 내용! " );
		
		int notiTotalCount = reService.getApplyNotiTotalCount();
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("totalCount", notiTotalCount);
//		System.out.println("catetype 뭘로 들어올까요?  " + category + ", 그 값이 필요! : " + param.get(category));
		
		if(param.get(category) != null) {
			System.out.println("param test : " + param.toString());
		}
//		model.addAttribute("cateType", param.get(category));
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
		
//		System.out.println("첨부파일 : " + attachList.toString());
		
		return "realEstate/realEstateNoticeDetail";
	}
	
	@GetMapping("/realEstate/calendar")
	public String applyCalendar(Model model, @RequestParam Map<String, String> param) {
		
		List<AptLttotPblancDetail> list1 = reService.getAptLttotList(param);
		List<UrbtyOfctlLttotPblancDetail> list2 = reService.getUrdtyList1(param);
		List<UrbtyOfctlLttotPblancDetail> list3 = reService.getUrdtyList2(param);
		
		model.addAttribute("apt", list1);
		model.addAttribute("urdty", list2);
		model.addAttribute("gg", list3);
		
		return "realEstate/realEstateCalendar";
	}
	
	
	
}
