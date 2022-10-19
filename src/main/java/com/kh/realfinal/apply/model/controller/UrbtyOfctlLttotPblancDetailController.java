package com.kh.realfinal.apply.model.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.realfinal.apply.api.ApplyApi;
import com.kh.realfinal.apply.model.service.UrbtyOfctlLttotPblancDetailService;
import com.kh.realfinal.apply.model.vo.UrbtyMdl;
import com.kh.realfinal.apply.model.vo.UrbtyOfctlLttotPblancDetail;

@Controller
public class UrbtyOfctlLttotPblancDetailController {
	@Autowired
	private UrbtyOfctlLttotPblancDetailService urbtyservice;
	
	// ---------------------------------------- 파싱
	
	@RequestMapping("/UrbtyOfctlLttotPblancDetail/insert.do")
	public String initUrbtyOfctlLttotPblancDetailData(Model model) {
		List<UrbtyOfctlLttotPblancDetail> list1 = ApplyApi.callUrbtyOfctlLttotPblancDetailByJSON();
		
		int result1 = 0;
		int result2 = 0;
		for(UrbtyOfctlLttotPblancDetail ud : list1) {
			result1 = urbtyservice.saveUrbtyOfctlLttotPblancDetailService(ud);
			
			List<UrbtyMdl> list2 = ApplyApi.UrbtyMdlByJSON(ud.getHouse_manage_no(), ud.getPblanc_no());
			for(UrbtyMdl um : list2) {
				result2 = urbtyservice.saveUrbtyMdlService(um);
			}
		}
		
		
		if(result1 > 0) {
			model.addAttribute("msg", "UrbtyDetail DB 저장성공");
			model.addAttribute("location", "/");
		}else {
			model.addAttribute("msg", "UrbtyDetail DB 저장 실패!!!!!!!");
			model.addAttribute("location", "/");
		}
		
		if(result2 > 0) {
			model.addAttribute("msg", "UrbtyMdl DB 주택형별 저장성공");
			model.addAttribute("location", "/");
		}else {
			model.addAttribute("msg", "UrbtyMdl DB 주택형별 저장 실패!!!!!!!");
			model.addAttribute("location", "/");
		}
		return "/common/msg";
	}
}
