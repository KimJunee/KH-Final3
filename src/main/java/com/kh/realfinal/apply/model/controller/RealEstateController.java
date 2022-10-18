package com.kh.realfinal.apply.model.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.realfinal.apply.model.service.RealEstateService;
import com.kh.realfinal.apply.model.vo.RemndrLttotPblancDetail;
import com.kh.realfinal.common.util.PageInfo;

import lombok.extern.slf4j.Slf4j;

import com.kh.realfinal.apply.model.service.ApplyInfoApiService;

@Slf4j
@Controller
public class RealEstateController {
	
	
	@Autowired
	private RealEstateService remndrService;
	
	@Autowired
	private ApplyInfoApiService ApplyService;
	
	
	@RequestMapping("/RealEstate/main")
	public String goRealEMain(Model model) {
		return "realEstate/realEstateMain";
	}
	
	
	@GetMapping("/RealEstate/list")
	public String list(Model model, @RequestParam Map<String, String> param) {
		log.info("param : " + param.toString());
		int page = 1;
		if(param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
			} catch (Exception e) {}
		}
		/**
		 * 
		현재 페이지 , 한 페이지에 보여질 페이지의 수 , 전체 리스트의 수 , 한 페이지에 표시될 리스트의 수
		 */
		PageInfo pageInfo = new PageInfo(page, 10, remndrService.getRemndrListCount(param), 10);
		List<RemndrLttotPblancDetail> remndrlist = remndrService.getRemndrList(pageInfo, param);
		System.out.println(remndrlist);
		
		model.addAttribute("remndrlist", remndrlist);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo" ,pageInfo);
		return "realEstate/realEstateDetailList";
	}
	
	
	
	@RequestMapping("/RealEstate/detail")
	public String goRealEDetail(Model model){
		return "realEstate/realEstateDetail";
	}
	
	

}
