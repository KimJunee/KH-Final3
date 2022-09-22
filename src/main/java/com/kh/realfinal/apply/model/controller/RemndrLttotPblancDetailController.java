package com.kh.realfinal.apply.model.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.realfinal.apply.api.ApplyApi;
import com.kh.realfinal.apply.model.service.RemndrLttotPblancDetailService;
import com.kh.realfinal.apply.model.vo.RemndrLttotPblancDetail;

@Controller
public class RemndrLttotPblancDetailController {
	@Autowired
	private RemndrLttotPblancDetailService service;
	
	@RequestMapping("/RemndrLttotPblancDetail/insert.do")
	public String initRemndrLttotPblancDetailData(Model model) {
		List<RemndrLttotPblancDetail> list = ApplyApi.RemndrLttotPblancDetailByJSON();
		
		int result = 0;
		for(RemndrLttotPblancDetail ud : list) {
			result = service.saveRemndrLttotPblancDetailService(ud);
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
