package com.kh.realfinal.financialStock.controller;

import java.text.ParseException;
import java.util.Date;

import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.realfinal.common.util.PageInfo;
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
		List<IndexPrice> list3 = service.getIndexKospiList();
		List<IndexPrice> list4 = service.getIndexKosdaqList();
		
		model.addAttribute("list1", list1);
		model.addAttribute("list2", list2);
		model.addAttribute("list3", list3);
		model.addAttribute("list4", list4);
		return "finance/fin_main";
	}
	
	@ResponseBody
	@RequestMapping(value="/stockprice/fin_kospi_main/info", produces = "application/json; charset=utf-8")
	public String fin_main_kospiDetailForDate(Model model, @RequestParam Map<String, String> param) throws ParseException { 
		List<Date> kospiDateList = service.getKospiDateList();  //코스피 날짜 list ex) 20221007
		List<String> kospiClprList = service.getKospiClprList();//코스피 종가 list ex) 2268.25
		Map<String, List> map = new HashedMap();
		map.put("date", kospiDateList);
		map.put("value", kospiClprList);
		return new Gson().toJson(map);
	}
	@ResponseBody
	@RequestMapping(value="/stockprice/fin_kosdaq_main/info", produces = "application/json; charset=utf-8")
	public String fin_main_kosdaqDetailForDate(Model model, @RequestParam Map<String, String> param) throws ParseException { 
		List<Date> kospiDateList = service.getKosdaqDateList();  //코스닥 날짜 list ex) 20221007
		List<String> kospiClprList = service.getKosdaqClprList();//코스닥 종가 list ex) 2268.25
		Map<String, List> map = new HashedMap();
		map.put("date", kospiDateList);
		map.put("value", kospiClprList);
		return new Gson().toJson(map);
	}
	
	
	@RequestMapping("/stockprice/fin_kospiDetail.do")
	public String fin_kospiDetail(Model model, @RequestParam Map<String, String> param) throws ParseException { //코스피 상세로 가자
//		System.out.println("그대이름은 파람파람파람 : " + param.toString());
		int page = 1;
		if(param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
				System.out.println("page : " + page);
			} catch (Exception e) {}
		}
		
		
		PageInfo pageInfo = new PageInfo(page, 10, service.getKospistockCount(), 20);
		List<Stockprice> list = service.getKospistockList(pageInfo);
		List<Stockprice> list1 = service.getKospiList();
		List<IndexPrice> list2 = service.getIndexKospiList();
//		System.out.println(list2.toString());
		model.addAttribute("pageInfo",pageInfo);
		model.addAttribute("list", list);
		model.addAttribute("list1", list1);
		model.addAttribute("list2", list2);
		
		return "finance/fin_kospiDetail";
	}
	
	@ResponseBody
	@RequestMapping(value="/stockprice/fin_kospiDetail/info", produces = "application/json; charset=utf-8")
	public String fin_kospiDetailForDate(Model model, @RequestParam Map<String, String> param) throws ParseException { 
		List<Date> kospiDateList = service.getKospiDateList();  //코스피 날짜 list ex) 20221007
		List<String> kospiClprList = service.getKospiClprList();//코스피 종가 list ex) 2268.25
		Map<String, List> map = new HashedMap();
		map.put("date", kospiDateList);
		map.put("value", kospiClprList);
		return new Gson().toJson(map);
	}
	
	@ResponseBody
	@RequestMapping(value="/stockprice/fin_kosdaqDetail/info", produces = "application/json; charset=utf-8")
	public String fin_kosdaqDetailForDate(Model model, @RequestParam Map<String, String> param) throws ParseException { 
		List<Date> kosdaqDateList = service.getKosdaqDateList();  //코스닥 날짜 list ex) 20221007
		List<String> kosdaqClprList = service.getKosdaqClprList();//코스닥 종가 list ex) 2268.25
		Map<String, List> map = new HashedMap();
		map.put("date", kosdaqDateList);
		map.put("value", kosdaqClprList);
		return new Gson().toJson(map);
	}
	
	@RequestMapping("/stockprice/fin_kosdaqDetail.do")
	public String fin_kosdaqDetail(Model model, @RequestParam Map<String, String> param) { //코스닥 상세로
		int page = 1;
		if(param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
				System.out.println("page : " + page);
			} catch (Exception e) {}
		}
		
		PageInfo pageInfo = new PageInfo(page, 10, service.getKosdaqstockCount(), 20);
		
		List<Stockprice> list = service.getKosdaqstockList(pageInfo);
		List<Stockprice> list1 = service.getKosdaqList();
		List<IndexPrice> list2 = service.getIndexKosdaqList();
		
		model.addAttribute("pageInfo",pageInfo);
		model.addAttribute("list", list);
		model.addAttribute("list1", list1);
		model.addAttribute("list2", list2);

		
		return "finance/fin_kosdaqDetail";
	}
	
	
	
	
	
}
