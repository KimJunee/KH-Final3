package com.kh.realfinal.apply.model.controller;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.realfinal.apply.model.service.RealEstateService;
import com.kh.realfinal.apply.model.vo.RealEstateList;
import com.kh.realfinal.apply.model.vo.RemndrLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.UrbtyOfctlLttotPblancDetail;
import com.kh.realfinal.common.util.PageInfo;

import lombok.extern.slf4j.Slf4j;

import com.kh.realfinal.apply.model.service.ApplyInfoApiService;

@Slf4j
@Controller
public class RealEstateController {
	

	@Autowired
	private RealEstateService service;
	
	@Autowired
	private ApplyInfoApiService ApplyService;
	
	
	@RequestMapping("/RealEstate/main")
	public String goRealEMain(Model model) {
		return "realEstate/realEstateMain";
	}
	
	
	@GetMapping("/RealEstate/list")
	public String list(Model model,
			@RequestParam Map<String, String> param,
			@RequestParam(value = "locationType" , required = false) String[] locationType,
			@RequestParam(value = "houseType" , required = false) String[] houseType,
			@RequestParam(value = "APTsupplyType" , required = false) String[] APTsupplyType,
			@RequestParam(value = "scheType" , required = false) String[] scheType) {
		log.info("param : " + param.toString());
		if(locationType == null) {
			System.out.println("locationType null");
		}else {
			
			System.out.println("checkbox locationType list : " + Arrays.toString(locationType));
		}
		if(houseType == null) {
			System.out.println("houseType null");
		}else {
			
			System.out.println("checkbox houseType list : " + Arrays.toString(houseType));
		}if(APTsupplyType == null) {
			System.out.println("APTsupplyType null");
		}else {
			
			System.out.println("checkbox APTsupplyType list : " + Arrays.toString(APTsupplyType));
		}if(scheType == null) {
			System.out.println("scheType null");
		}else {
			
			System.out.println("checkbox scheType list : " + Arrays.toString(scheType));
		}
				
//		System.out.println("param : " + param.toString());
//		for(String key : param.keySet()) {
//			String value = (String)param.get(key);
//			System.out.println("나와라 " + key + " : " + value);
//		}
//		System.out.println(param.get("locationType").toString());
//		System.out.println(param.get("houseType").toString());
//		System.out.println(param.get("APTsupplyType").toString());
//		System.out.println(param.get("scheType").toString());
		
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
		PageInfo pageInfo = new PageInfo(page, 10, service.getRealBoardListCount(param, locationType, houseType, APTsupplyType, scheType), 20);
		System.out.println("getRemndrListCount : " + service.getRealBoardListCount(param, locationType, houseType, APTsupplyType, scheType));
		List<RealEstateList> reallist = service.getRealBoardList(pageInfo, param, locationType, houseType, APTsupplyType, scheType);
		System.out.println("Controller reallist : " + reallist);
		
		model.addAttribute("reallist", reallist);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo" ,pageInfo);
		return "realEstate/realEstateDetailList";
	}
	
	
	
	@RequestMapping("/RealEstate/detail")
	public String goRealEDetail(Model model){
		return "realEstate/realEstateDetail";
	}
	
	

}
