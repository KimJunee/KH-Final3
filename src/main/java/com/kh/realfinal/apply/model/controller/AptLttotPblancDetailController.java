package com.kh.realfinal.apply.model.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.realfinal.apply.api.AptLttotPblancDetailApi;
import com.kh.realfinal.apply.model.service.AptLttotPblancDetailService;
import com.kh.realfinal.apply.model.vo.AptLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.AptLttotPblancMdl;

@Controller
public class AptLttotPblancDetailController {

	@Autowired
	private AptLttotPblancDetailService service;
	
//	@RequestMapping("/RealEstate/main")
//	public String goRealEstateMain(Model model) {
//		return "realEstate/realEstateMain";
//	}
	
	@RequestMapping("/AptLttot/insert.do")
	public String initAptLttotPblancDetail(Model model) {
		List<AptLttotPblancDetail> list1 = AptLttotPblancDetailApi.callSubInfoByJson();
		
		int result1 = 0;
		int result2 = 0;
		for(AptLttotPblancDetail apt : list1) {
			result1 = service.saveAptLttotService(apt);
			
			List<AptLttotPblancMdl> list2 = AptLttotPblancDetailApi
					.aptDetailParsing(apt.getHouse_manage_no(), apt.getPblanc_no());
			for(AptLttotPblancMdl am : list2) {
				result2 = service.saveAptLttotMdlService(am);
			}
		}
		
		if(result1 > 0) {
			model.addAttribute("msg", "APT분양정보 저장성공");
			model.addAttribute("location", "/");
		}else {
			model.addAttribute("msg", "분양정보 저장 실패!!");
			model.addAttribute("location", "/");
		}
		
		if(result2 > 0) {
			model.addAttribute("msg", "APT분양정보 주택형별 저장성공");
			model.addAttribute("location", "/");
		}else {
			model.addAttribute("msg", "APT분양정보 주택형별 저장 실패!!");
			model.addAttribute("location", "/");
		}
		
		return "/common/msg";
	}
	
}
