package com.kh.realfinal.financialStock.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.realfinal.financialStock.api.StockpriceAPI;
import com.kh.realfinal.financialStock.model.service.StockpriceService;
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
}
