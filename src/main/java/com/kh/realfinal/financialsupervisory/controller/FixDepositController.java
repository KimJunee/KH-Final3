package com.kh.realfinal.financialsupervisory.controller;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.kh.realfinal.financialsupervisory.api.FixDeposit;
import com.kh.realfinal.financialsupervisory.model.service.FixDepositService;

@Controller
public class FixDepositController {

	@Autowired
	private FixDepositService service;
	
	@RequestMapping("/fixdeposit/insert.do")
	public String initFixDepositData(Model model) throws Exception {
		List<Map<String,Object>> list = FixDeposit.callLandTermByXML();
		//System.out.println(list.toString());
		int result = 0;
		
		for (Map map : list) {
			result = service.saveFixDeposit(map);
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