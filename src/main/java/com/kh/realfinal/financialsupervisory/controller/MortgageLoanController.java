package com.kh.realfinal.financialsupervisory.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.realfinal.financialsupervisory.api.MortgageLoanAPI;
import com.kh.realfinal.financialsupervisory.model.service.MortgageLoanService;
import com.kh.realfinal.financialsupervisory.model.vo.MortgageLoan;

@Controller
public class MortgageLoanController {
	
	@Autowired
	private MortgageLoanService service;
	
	@RequestMapping("/mortgage/insert.do")
	public String initMortgageLoan(Model model) throws Exception {
		List<MortgageLoan> list = MortgageLoanAPI.callInstallmentSavingsByXML();
		
		int result = 0;
		
		for(MortgageLoan ml : list) {
			result = service.saveMortgageLoan(ml);
		}
		
		
		if(result > 0) {
			model.addAttribute("msg", "주택담보대출 DB에 성공적으로 넣었습니다.");
			model.addAttribute("location", "/");
		}else {
			model.addAttribute("msg", "주택담보대출 DB에 넣지 못했습니다.");
			model.addAttribute("location", "/");
		}
		return "/common/msg";
		
	}
}
