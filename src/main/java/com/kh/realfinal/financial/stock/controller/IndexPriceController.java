package com.kh.realfinal.financial.stock.controller;

import java.io.UnsupportedEncodingException;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.realfinal.financial.stock.api.IndexPriceAPI;
import com.kh.realfinal.financial.stock.model.service.IndexPriceService;
import com.kh.realfinal.financial.stock.model.service.StockpriceService;
import com.kh.realfinal.financial.stock.model.vo.IndexPrice;

@Controller
public class IndexPriceController {
	
	@Autowired
	private IndexPriceService service;
	
	@RequestMapping("/indexprice/insert1")
	public String initIndexPriceData1(Model model) throws UnsupportedEncodingException {
		List<IndexPrice> list = IndexPriceAPI.callIndexPriceByXML1();
		int result = 0;
		
		for(IndexPrice ip : list) {
			result = service.saveIndexPrice(ip);
		}
		
		if(result > 0) {
			model.addAttribute("msg", "코스피 지수시세 정보를 DB에 넣었습니다.");
			model.addAttribute("location", "/");
		}else {
			model.addAttribute("msg", "코스피 지수시세 정보를 넣는데 실패했습니다.");
			model.addAttribute("location", "/");
		}
		return "/common/msg";
	}
	
	@RequestMapping("/indexprice/insert2")
	public String initIndexPriceData2(Model model) throws UnsupportedEncodingException {
		List<IndexPrice> list = IndexPriceAPI.callIndexPriceByXML2();
		int result = 0;
		
		for(IndexPrice ip : list) {
			result = service.saveIndexPrice(ip);
		}
		
		if(result > 0) {
			model.addAttribute("msg", "코스닥 지수시세 정보를 DB에 넣었습니다.");
			model.addAttribute("location", "/");
		}else {
			model.addAttribute("msg", "코스닥 지수시세 정보를 넣는데 실패했습니다.");
			model.addAttribute("location", "/");
		}
		return "/common/msg";
	}
	
}
