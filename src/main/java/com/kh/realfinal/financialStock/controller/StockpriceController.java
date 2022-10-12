package com.kh.realfinal.financialStock.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.realfinal.financialStock.api.StockpriceAPI;
import com.kh.realfinal.financialStock.model.service.StockpriceService;
import com.kh.realfinal.financialStock.model.vo.IndexPrice;
import com.kh.realfinal.financialStock.model.vo.Stockprice;

@Controller
public class StockpriceController {
	
	@Autowired
	private StockpriceService service;
	
	@RequestMapping("/stockprice/insert.do")
	public String initStockpriceData(Model model) {
		List<Stockprice> list = StockpriceAPI.callStockpriceByXML();
		int result = 0;
		
		for(Stockprice sp : list) {
			result = service.saveStockprice(sp);
		}
		
		if(result > 0) {
			model.addAttribute("msg", "주식시세 정보를 DB에 넣었습니다.");
			model.addAttribute("location", "/");
		}else {
			model.addAttribute("msg", "주식시세 정보를 DB에 넣지 못했습니다.");
			model.addAttribute("location", "/");
		}
		return "/common/msg";
	}
	
	@RequestMapping("/stockprice/fin_main.do")
	public String fin_main(Model model) { //메인으로
		List<Stockprice> list1 = service.getKospiList();
		List<Stockprice> list2 = service.getKosdaqList();
		
		model.addAttribute("list1", list1);
		model.addAttribute("list2", list2);
		return "finance/fin_main";
	}
	
	@RequestMapping("/stockprice/fin_kospiDetail.do")
	public String fin_kospiDetail(Model model) { //코스피 상세로
		List<Stockprice> list1 = service.getKospiList();
		List<IndexPrice> list2 = service.getIndexKospiList();
		
		model.addAttribute(list2);
		
		return "finance/fin_kospiDetail";
	}
	
	@RequestMapping("/stockprice/fin_kosdaqDetail.do")
	public String fin_kosdaqDetail(Model model) { //코스닥 상세로
		List<Stockprice> list1 = service.getKosdaqList();
		List<IndexPrice> list2 = service.getIndexKosdaqList();
		
		model.addAttribute(list2);

		
		return "finance/fin_kosdaqDetail";
	}
	
	
	
	
	
}
