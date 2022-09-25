package com.kh.realfinal.financialsupervisory.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.realfinal.financialsupervisory.api.InstallmentSavingsAPI;
import com.kh.realfinal.financialsupervisory.model.service.InstallmentSavingsService;
import com.kh.realfinal.financialsupervisory.model.vo.InstallmentSavings;

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
}