package com.kh.realfinal.financialsupervisory.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.realfinal.common.util.PageInfo;
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
	
	@RequestMapping("finance/mortgageMain")
	public String mortgegeList(Model model, @RequestParam Map<String, String> param) throws Exception{
		int page = 1;
		if(param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
			} catch (Exception e) {}
		}
		
		PageInfo pageInfo = new PageInfo(page, 10, service.getMortgageCount(param), 10);
		
		List<MortgageLoan> list = service.getMortgageList(pageInfo, param);
				
		model.addAttribute("mortgageList", list);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		
		return "finance/financeMortgage";
	}
	
	@RequestMapping("finance/mortgageDetail")
	public String mortgageListDetail(Model model, int id) {
		MortgageLoan mortgage = service.findByMortgageId(id);
		
		model.addAttribute("mortgage", mortgage);
		return "finance/financeMortgageDetail";
	}
	
	
}
