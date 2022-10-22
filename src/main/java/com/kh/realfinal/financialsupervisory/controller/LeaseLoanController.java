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
import com.kh.realfinal.financialsupervisory.api.LeaseLoanAPI;
import com.kh.realfinal.financialsupervisory.model.service.LeaseLoanService;
import com.kh.realfinal.financialsupervisory.model.vo.FixDeposit;
import com.kh.realfinal.financialsupervisory.model.vo.LeaseLoan;

import lombok.extern.slf4j.Slf4j;

@Slf4j
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
	
	@GetMapping("/finance/leaseloanMain")
	public String leaseLoanList(Model model, @RequestParam Map<String, String> param) throws Exception{
		log.debug("param : " + param.toString());
		int page = 1;
		if(param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
			} catch (Exception e) {}
		}
		
		PageInfo pageInfo = new PageInfo(page, 10, service.getLeaseLoanCount(param), 10);
		
		List<LeaseLoan> list = service.getLeaseLoanList(pageInfo, param);
		
		model.addAttribute("leaseLoanList", list);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		
		return "finance/financeLeaseloan";
	}
	
	@GetMapping("/finance/leaseLoanDetail")
	public String leaseLoanListDetail(Model model, int id){
		LeaseLoan leaseLoan = service.findByLeaseLoanId(id);
		
		model.addAttribute("leaseLoan", leaseLoan);
		return "finance/financeLeaseloanDetail";
	}
}










