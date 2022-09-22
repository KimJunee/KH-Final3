package com.kh.realfinal.apply.model.controller;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.realfinal.apply.api.ApplyApi;
import com.kh.realfinal.apply.model.service.UrbtyMdlService;
import com.kh.realfinal.apply.model.vo.UrbtyMdl;

@Controller
public class UrbtyMdlController {
	@Autowired
	private UrbtyMdlService service;
	
	@RequestMapping("/UrbtyMdl/insert.do")
	public String initUrbtyMdlMdlData(Model model) {
		List<UrbtyMdl> list = ApplyApi.UrbtyMdlByJSON();
		
		int result = 0;
		for(UrbtyMdl um : list) {
			result = service.saveUrbtyMdlService(um);
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
