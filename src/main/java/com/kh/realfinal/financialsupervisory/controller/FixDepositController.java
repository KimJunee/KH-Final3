package com.kh.realfinal.financialsupervisory.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.realfinal.financialsupervisory.api.FixDepositAPI;
import com.kh.realfinal.financialsupervisory.model.service.FixDepositService;
import com.kh.realfinal.financialsupervisory.model.vo.FixDeposit;

@Controller
public class FixDepositController {

	@Autowired
	private FixDepositService service;
	
	@RequestMapping("/fixdeposit/insert.do")
	public String initFixDepositData(Model model) throws Exception {
		List<FixDeposit> list = FixDepositAPI.callFixDepositByXML();
		//System.out.println(list.toString());
		int result = 0;
		
		for (FixDeposit fix : list) {
			result = service.saveFixDeposit(fix);
		}
		
		if (result > 0) {
			model.addAttribute("msg", "정기예금API(금융감독원) -> DB 저장 성공");
			model.addAttribute("location", "/");
		} else {
			model.addAttribute("msg", "정기예금API(금융감독원) -> DB 저장 실패!!!!");
			model.addAttribute("location", "/");
		}
		return "/common/msg";
	}
}