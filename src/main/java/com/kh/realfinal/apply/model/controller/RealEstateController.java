package com.kh.realfinal.apply.model.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.realfinal.apply.model.service.AptLttotPblancDetailService;

@Controller
public class RealEstateController {
	
	@Autowired
	private AptLttotPblancDetailService AptService;
	
	
	@RequestMapping("/RealEstate/main")
	public String goRealEMain(Model model) {
		return "realEstate/realEstateMain";
	}
	
	@RequestMapping("/RealEstate/list")
	public String goRealEList(Model model){
		return "realEstate/realEstateDetailList";
	}
	
	@RequestMapping("/RealEstate/detail")
	public String goRealEDetail(Model model){
		return "realEstate/realEstateDetail";
	}

}
