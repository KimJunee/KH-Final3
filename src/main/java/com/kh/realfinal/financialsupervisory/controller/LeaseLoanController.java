package com.kh.realfinal.financialsupervisory.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.realfinal.financialsupervisory.api.LeaseLoanAPI;
import com.kh.realfinal.financialsupervisory.model.service.LeaseLoanService;
import com.kh.realfinal.financialsupervisory.model.vo.LeaseLoan;

@Controller
public class LeaseLoanController {

	@Autowired
	private LeaseLoanService service;
	
	@RequestMapping("/leaseloan/insert.do")
	public String initLeaseLoanData(Model model) throws Exception {
		List<LeaseLoan> list = LeaseLoanAPI.callLeaseLoanByXML();
		//System.out.println(list.toString());
		int result = 0;
		
		for (LeaseLoan ll : list) {
			result = service.saveLeaseLoan(ll);
		}
		
		if (result > 0) {
			model.addAttribute("msg", "전세자금대출API(금융감독원) -> DB 저장 성공");
			model.addAttribute("location", "/");
		} else {
			model.addAttribute("msg", "전세자금대출API(금융감독원) -> DB 저장 실패!!!!");
			model.addAttribute("location", "/");
		}
		return "/common/msg";
	}
}