package com.kh.realfinal.financialsupervisory.controller;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.kh.realfinal.financialsupervisory.api.InstallmentSavings;
import com.kh.realfinal.financialsupervisory.model.service.InstallmentSavingsService;

@Controller
public class InstallmentSavingsController {

	@Autowired
	private InstallmentSavingsService service;
	
	@RequestMapping("/installmentSavings/insert.do")
	public String initInstallmentSavingsData(Model model) throws Exception {
		List<Map<String,Object>> list = InstallmentSavings.callInstallmentSavingsByXML();
		//System.out.println(list.toString());
		int result = 0;
		
		for (Map map : list) {
			result = service.saveInstallmentSavings(map);
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