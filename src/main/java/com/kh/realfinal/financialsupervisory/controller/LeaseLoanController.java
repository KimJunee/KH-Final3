package com.kh.realfinal.financialsupervisory.controller;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.kh.realfinal.financialsupervisory.api.FixDeposit;
import com.kh.realfinal.financialsupervisory.api.LeaseLoan;
import com.kh.realfinal.financialsupervisory.model.service.FixDepositService;
import com.kh.realfinal.financialsupervisory.model.service.LeaseLoanService;

@Controller
public class LeaseLoanController {

	@Autowired
	private LeaseLoanService service;
	
	@RequestMapping("/leaseloan/insert.do")
	public String initLeaseLoanData(Model model) throws Exception {
		List<Map<String,Object>> list = LeaseLoan.callLeaseLoanByXML();
		//System.out.println(list.toString());
		int result = 0;
		
		for (Map map : list) {
			result = service.saveLeaseLoan(map);
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