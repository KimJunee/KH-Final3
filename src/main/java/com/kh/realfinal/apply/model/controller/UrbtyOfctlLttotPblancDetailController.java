package com.kh.realfinal.apply.model.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.realfinal.apply.api.ApplyApi;
import com.kh.realfinal.apply.model.service.UrbtyOfctlLttotPblancDetailService;
import com.kh.realfinal.apply.model.vo.UrbtyOfctlLttotPblancDetail;

@Controller
public class UrbtyOfctlLttotPblancDetailController {
	@Autowired
	private UrbtyOfctlLttotPblancDetailService service;
	
	@RequestMapping("/UrbtyOfctlLttotPblancDetail/insert.do")
	public String initUrbtyOfctlLttotPblancDetailData(Model model) {
		List<UrbtyOfctlLttotPblancDetail> list = ApplyApi.UrbtyOfctlLttotPblancDetailByJSON();
		
		int result = 0;
		for(UrbtyOfctlLttotPblancDetail ud : list) {
			result = service.saveUrbtyOfctlLttotPblancDetailService(ud);
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
