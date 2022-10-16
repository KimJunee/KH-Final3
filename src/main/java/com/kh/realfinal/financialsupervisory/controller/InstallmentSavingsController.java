package com.kh.realfinal.financialsupervisory.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.financialsupervisory.api.InstallmentSavingsAPI;
import com.kh.realfinal.financialsupervisory.model.service.InstallmentSavingsService;
import com.kh.realfinal.financialsupervisory.model.vo.InstallmentSavings;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class InstallmentSavingsController {

	@Autowired
	private InstallmentSavingsService service;
	
	@RequestMapping("/installmentSavings/insert.do")
	public String initInstallmentSavingsData(Model model) throws Exception {
		List<InstallmentSavings> list = InstallmentSavingsAPI.callInstallmentSavingsByXML();
		//System.out.println(list.toString());
		int result = 0;
		
		for (InstallmentSavings install : list) {
			result = service.saveInstallmentSavings(install);
		}
		
		if (result > 0) {
			model.addAttribute("msg", "적금API(금융감독원) -> DB 저장 성공");
			model.addAttribute("location", "/");
		} else {
			model.addAttribute("msg", "적금API(금융감독원) -> DB 저장 실패!!!!");
			model.addAttribute("location", "/");
		}
		return "/common/msg";
	}
	
	@GetMapping("finance/productMain")
	public String installList(Model model, @RequestParam Map<String, String> param) throws Exception {
		log.debug("param : " + param.toString());
		int page = 1;
		if(param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
			} catch (Exception e) {}
		}
		
		PageInfo pageInfo = new PageInfo(page, 10, service.getInstallCount(param), 10);
		
		List<InstallmentSavings> list = service.getInstallList(pageInfo, param);
		
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		
//		System.out.println("list : " + list.toString());
		return "finance/financeProduct";
	}
	
	@GetMapping("finance/productDetail")
	public String installListDetail(Model model, int id){
		InstallmentSavings installment = service.findByInssvnId(id);
		
		System.out.println(installment);
		model.addAttribute("installment", installment);
		return "finance/financeProductDetail";
	}
	
	
}