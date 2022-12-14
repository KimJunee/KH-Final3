package com.kh.realfinal.apply.model.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.realfinal.apply.model.service.ApplyInfoService;
import com.kh.realfinal.apply.model.vo.ApplyNotice;
import com.kh.realfinal.apply.model.vo.ApplyNoticeAttach;
import com.kh.realfinal.apply.model.vo.AptLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.RemndrLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.UrbtyOfctlLttotPblancDetail;
import com.kh.realfinal.common.util.PageInfo;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/realEstate")
@RequiredArgsConstructor 
public class ApplyCalAndNotiController {
	
	private final ApplyInfoService reService;
	
	@GetMapping("/notice")
	public String noticeList(Model model, 
			@RequestParam(required = false) Map<String, String> param,
			@RequestParam(required = false, defaultValue = "1") int page) {
		
		if("1".equals(param.get("cateType")) || "2".equals(param.get("cateType"))
				|| "3".equals(param.get("cateType")) || "4".equals(param.get("cateType"))) {
			model.addAttribute("cateTab", "act2");
		} else if("19".equals(param.get("cateType"))) {
			model.addAttribute("cateTab", "act3");
		} else if("5".equals(param.get("cateType")) || "6".equals(param.get("cateType"))
				|| "7".equals(param.get("cateType")) || "9".equals(param.get("cateType"))
				|| "10".equals(param.get("cateType")) || "11".equals(param.get("cateType"))) {
			model.addAttribute("cateTab", "act5");
		} else if("12".equals(param.get("cateType")) || "14".equals(param.get("cateType"))) {
			model.addAttribute("cateTab", "act6");
		} else if("16".equals(param.get("cateType"))) {
			model.addAttribute("cateTab", "act7");
		} else if("21".equals(param.get("cateType"))) {
			model.addAttribute("cateTab", "act8");
		}
		
		PageInfo pageInfo = new PageInfo(page, 10, reService.getApplyNoticeCount(param, param.get("cateType")), 20);
		List<ApplyNotice> list = reService.getApplyNoticeList(pageInfo, param, param.get("cateType"));
		noticeExtracted(model, param, pageInfo, list);
		
		return "realEstate/realEstateNotice";
	}
	
	private void noticeExtracted(Model model, Map<String, String> param, 
			PageInfo pageInfo, 
			List<ApplyNotice> list) {
		
		int notiTotalCount = reService.getApplyNotiTotalCount();
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("totalCount", notiTotalCount);
		
	}

	
	@GetMapping("/notice/view")
	public String noticeView(Model model, @RequestParam("no") int no) {
		
		ApplyNotice notice = reService.findNoticeByRnum(no);
		List<ApplyNoticeAttach> attachList = reService.findApplyAttach(notice.getBbs_sn());
		
		model.addAttribute("notice", notice);
		model.addAttribute("attach", attachList);
		
		return "realEstate/realEstateNoticeDetail";
	}
	
	@GetMapping("/calendar")
	public String applyCalendar(Model model,
			@RequestParam(required = false) Map<String, String> param,
			@RequestParam(required = false) String type) {
		
//		System.out.println("????????? type : " + type);
//		System.out.println("????????? param : " + param);
		
		List<AptLttotPblancDetail> list1 = reService.getAptLttotList(param); 
		List<AptLttotPblancDetail> list2 = reService.getAptLttotList(param); 
		List<UrbtyOfctlLttotPblancDetail> list3 = reService.getUrdtyList1(param); 
		List<UrbtyOfctlLttotPblancDetail> list4 = reService.getUrdtyList2(param); 
		List<UrbtyOfctlLttotPblancDetail> list5 = reService.getUrdtyList3(param); 
		List<UrbtyOfctlLttotPblancDetail> list6 = reService.getUrdtyList4(param); 
		List<RemndrLttotPblancDetail> list7 = reService.getRemndrList1(param); 
		List<RemndrLttotPblancDetail> list8 = reService.getRemndrList2(param); 
		List<AptLttotPblancDetail> list9 = reService.getAptSpcList(param); 
		
		if("a".equals(type)) {
			model.addAttribute("apt1", list1);
			model.addAttribute("apt2", list2);
			model.addAttribute("nn", list7);
			model.addAttribute("cc", list8);
			model.addAttribute("spc", list9);
			return "realEstate/realEstateCalendar";
		} else if("o".equals(type)) {
			model.addAttribute("office", list4);
			return "realEstate/realEstateCalendar";
		} else if("c".equals(type)) {
			model.addAttribute("city", list3);
			return "realEstate/realEstateCalendar";
		} else if("m".equals(type)) {
			model.addAttribute("mingan", list5);
			return "realEstate/realEstateCalendar";
		} else if("p".equals(type)) {
			model.addAttribute("gong", list6);
			return "realEstate/realEstateCalendar";
		} else if("s".equals(type)) {
			model.addAttribute("spc", list9);
			return "realEstate/realEstateCalendar";
		} else if("f".equals(type)) {
			model.addAttribute("apt1", list1);
			return "realEstate/realEstateCalendar";
		} else if("t".equals(type)) {
			model.addAttribute("apt2", list2);
			return "realEstate/realEstateCalendar";
		} else if("n".equals(type)) {
			model.addAttribute("nn", list7);
			return "realEstate/realEstateCalendar";
		} else if("r".equals(type)) {
			model.addAttribute("cc", list8);
			return "realEstate/realEstateCalendar";
		}
		
		model.addAttribute("apt1", list1); //apt-1??????
		model.addAttribute("apt2", list2); //apt-2??????
		model.addAttribute("city", list3); //?????????????????????
		model.addAttribute("office", list4); //????????????
		model.addAttribute("mingan", list5); //????????????
		model.addAttribute("gong", list6); //????????????????????????
		model.addAttribute("nn", list7); //apt-?????????
		model.addAttribute("cc", list8); //apt-??????????????????
		model.addAttribute("spc", list9); //????????????
		
		return "realEstate/realEstateCalendar";
	}
	
	@PostMapping("/calendar")
	public String CalendarSearch(HttpServletRequest request, 
			@RequestParam(required = false) Map<String, String> param,
			Model model) {
		
		String[] check = request.getParameterValues("calendar");
		String checkBox = check[0].toString();
//		System.out.println("check ?????????! : " + check[0].toString());
		
		List<AptLttotPblancDetail> list1 = reService.getAptLttotList(param); 
		List<AptLttotPblancDetail> list2 = reService.getAptLttotList(param); 
		List<UrbtyOfctlLttotPblancDetail> list3 = reService.getUrdtyList1(param); 
		List<UrbtyOfctlLttotPblancDetail> list4 = reService.getUrdtyList2(param); 
		List<UrbtyOfctlLttotPblancDetail> list5 = reService.getUrdtyList3(param); 
		List<UrbtyOfctlLttotPblancDetail> list6 = reService.getUrdtyList4(param); 
		List<RemndrLttotPblancDetail> list7 = reService.getRemndrList1(param); 
		List<RemndrLttotPblancDetail> list8 = reService.getRemndrList2(param); 
		List<AptLttotPblancDetail> list9 = reService.getAptSpcList(param); 
		
		if("total_show".equals(checkBox)) {
			model.addAttribute("apt1", list1); //apt-1??????
			model.addAttribute("apt2", list2); //apt-2??????
			model.addAttribute("city", list3); //?????????????????????
			model.addAttribute("office", list4); //????????????
			model.addAttribute("mingan", list5); //????????????
			model.addAttribute("gong", list6); //????????????????????????
			model.addAttribute("nn", list7); //apt-?????????
			model.addAttribute("cc", list8); //apt-??????????????????
			model.addAttribute("spc", list9); //????????????
			model.addAttribute("checkBox", checkBox);
			return "realEstate/realEstateCalendar";
		} else if("apt_special".equals(checkBox)) {
			model.addAttribute("spc", list9);
			model.addAttribute("checkBox", checkBox);
			return "realEstate/realEstateCalendar";
		} else if("apt_1".equals(checkBox)) {
			model.addAttribute("apt1", list1);
			model.addAttribute("checkBox", checkBox);
			return "realEstate/realEstateCalendar";
		} else if("apt_2".equals(checkBox)) {
			model.addAttribute("apt2", list2);
			model.addAttribute("checkBox", checkBox);
			return "realEstate/realEstateCalendar";
		} else if("apt_n".equals(checkBox)) {
			model.addAttribute("nn", list7);
			model.addAttribute("checkBox", checkBox);
			return "realEstate/realEstateCalendar";
		} else if("apt_c".equals(checkBox)) {
			model.addAttribute("cc", list8);
			model.addAttribute("checkBox", checkBox);
			return "realEstate/realEstateCalendar";
		} else if("office".equals(checkBox)) {
			model.addAttribute("office", list4);
			model.addAttribute("checkBox", checkBox);
			return "realEstate/realEstateCalendar";
		} else if("cityhouse".equals(checkBox)) {
			model.addAttribute("city", list3);
			model.addAttribute("checkBox", checkBox);
			return "realEstate/realEstateCalendar";
		} else if("rent".equals(checkBox)) {
			model.addAttribute("mingan", list5);
			model.addAttribute("checkBox", checkBox);
			return "realEstate/realEstateCalendar";
		} else if("public_rent".equals(checkBox)) {
			model.addAttribute("gong", list6);
			model.addAttribute("checkBox", checkBox);
			return "realEstate/realEstateCalendar";
		}
		
		return "realEstate/realEstateCalendar";
	}
	
}
