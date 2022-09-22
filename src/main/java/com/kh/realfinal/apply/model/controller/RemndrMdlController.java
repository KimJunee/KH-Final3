package com.kh.realfinal.apply.model.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.realfinal.apply.api.ApplyApi;
import com.kh.realfinal.apply.model.service.RemndrLttotPblancDetailService;
import com.kh.realfinal.apply.model.service.RemndrMdlService;
import com.kh.realfinal.apply.model.vo.RemndrLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.RemndrMdl;

@Controller
public class RemndrMdlController {
	@Autowired
	private RemndrMdlService service;
	
	@RequestMapping("/RemndrMdl/insert.do")
	public String initRemndrMdlData(Model model) {
		List<RemndrMdl> list = ApplyApi.RemndrMdlByJSON();
		
		int result = 0;
		for(RemndrMdl rm : list) {
			result = service.saveRemndrMdlService(rm);
		}
		
		
		if(result > 0) {
			model.addAttribute("msg", "공공서비스 DB 저장성공");
			model.addAttribute("location", "/");
		}else {
			model.addAttribute("msg", "공공서비스 DB 저장 실패!!!!!!!");
			model.addAttribute("location", "/");
		}
		return "/common/msg";
	}
}
