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
import com.kh.realfinal.financialsupervisory.api.FixDepositAPI;
import com.kh.realfinal.financialsupervisory.model.service.FixDepositService;
import com.kh.realfinal.financialsupervisory.model.vo.FixDeposit;

import lombok.extern.slf4j.Slf4j;

@Slf4j
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
	
	@GetMapping("finance/depositMain")
	public String depositList(Model model, @RequestParam Map<String, String> param) throws Exception {
		log.debug("param : " + param.toString());
		int page = 1;
		if(param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
			} catch (Exception e) {}
		}
		
		PageInfo pageInfo = new PageInfo(page, 10, service.getDepositCount(param), 10);
		
		List<FixDeposit> list = service.getDepositList(pageInfo, param);
		
		model.addAttribute("depositList", list);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		
		return "finance/financeDeposit";
	}
	
	@GetMapping("finance/depositDetail")
	public String depositListDetail(Model model, int id){
		FixDeposit fixDeposit = service.findByDepositId(id);
		
		model.addAttribute("fixDeposit", fixDeposit);
		return "finance/financeDepositDetail";
	}
}