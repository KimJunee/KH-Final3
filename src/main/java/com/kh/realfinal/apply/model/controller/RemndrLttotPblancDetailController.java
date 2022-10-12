package com.kh.realfinal.apply.model.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.realfinal.apply.api.ApplyApi;
import com.kh.realfinal.apply.model.service.RemndrLttotPblancDetailService;
import com.kh.realfinal.apply.model.vo.RemndrLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.RemndrMdl;

@Controller
public class RemndrLttotPblancDetailController {
	@Autowired
	private RemndrLttotPblancDetailService service;
	
	@RequestMapping("/RemndrLttotPblancDetail/insert.do")
	public String initRemndrLttotPblancDetailData(Model model) {
		List<RemndrLttotPblancDetail> list1 = ApplyApi.callRemndrLttotPblancDetailByJSON();
		
		int result1 = 0;
		int result2 = 0;
		for(RemndrLttotPblancDetail rd : list1) {
			result1 = service.saveRemndrLttotPblancDetailService(rd);
			
			List<RemndrMdl> list2 = ApplyApi.RemndrMdlByJSON(rd.getHouse_manage_no(), rd.getPblanc_no());
			for(RemndrMdl rm : list2) {
				result2 = service.saveRemndrMdlService(rm);
			}
		}
		
		
		if(result1 > 0) {
			model.addAttribute("msg", "Remndr DB 저장성공");
			model.addAttribute("location", "/");
		}else {
			model.addAttribute("msg", "Remndr DB 저장 실패!!!!!!!");
			model.addAttribute("location", "/");
		}
		
		if(result2 > 0) {
			model.addAttribute("msg", "RemndrMdl DB 주택형별 저장성공");
			model.addAttribute("location", "/");
		}else {
			model.addAttribute("msg", "RemndrMdl DB 주택형별 저장 실패!!!!!!!");
			model.addAttribute("location", "/");
		}
		return "/common/msg";
	}
}
