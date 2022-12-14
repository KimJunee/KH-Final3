package com.kh.realfinal.financialStock.controller;

import java.util.List;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.realfinal.financialStock.api.ExchangeRateAPI;
import com.kh.realfinal.financialStock.model.service.ExchangeRateService;
import com.kh.realfinal.financialStock.model.vo.ExchangeRate;

@Controller
public class ExchangeRateController {
	
	@Autowired
	private ExchangeRateService service;
	
	@RequestMapping("/ExchangeRate/insert.do")
	public String initExchangeRateData(Model model) {
		List<ExchangeRate> list = ExchangeRateAPI.callExchangeRateByXML();
		System.out.println(list.toString());
		int result = 0;
		for(ExchangeRate er : list) {
			result = service.saveExchangeRate(er);
		}
		if(result > 0) {
			model.addAttribute("msg", "환율정보를 DB에 성공적으로 넣었습니다.");
			model.addAttribute("location", "/");
		}else {
			model.addAttribute("msg", "환율정보를 DB에 넣지 못했습니다.");
			model.addAttribute("location", "/");
		}
		return "/common/msg";	
	}
}
