package com.kh.realfinal;

import java.text.ParseException;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.apache.commons.collections.map.HashedMap;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.google.gson.Gson;
import com.kh.realfinal.apply.model.service.RealEstateService;
import com.kh.realfinal.board.model.service.BoardService;
import com.kh.realfinal.board.model.vo.Board;
import com.kh.realfinal.financialStock.model.service.StockpriceService;
import com.kh.realfinal.financialStock.model.vo.IndexPrice;
import com.kh.realfinal.news.model.vo.News;
import com.kh.realfinal.news.service.NewsService;
import com.kh.realfinal.opinion.model.service.OpinionService;
import com.kh.realfinal.opinion.model.vo.Opinion;
import com.kh.realfinal.politics.model.service.CardCutService;
import com.kh.realfinal.politics.model.vo.CardCut;

@Controller
public class HomeController {
	
	@Autowired
	private RealEstateService realEstateService;
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private StockpriceService service;
	
	@Autowired
	private OpinionService opinionservice;
	
	@Autowired
	private CardCutService cardCutService;
	
	@Autowired
	private NewsService newsService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "home";
	}
	
	/**
	 * http://localhost/realfinal/hi?url=community/communityMain -> 경로
	 * @param locale
	 * @param model
	 * @param url
	 * @return
	 */
	@RequestMapping(value = "/hi", method = RequestMethod.GET)
	public String AnyWhere(Locale locale, Model model, String url) {
		System.out.println("Where am i >> " + url);
		return url;
	}
	
	@RequestMapping("/main.do")
	public String mainGo(Model model) {
		List<IndexPrice> list1 = service.getIndexKospiList();
		List<IndexPrice> list2 = service.getIndexKosdaqList();
		List<Board> list3 = boardService.getSideBoard();
		List<Opinion> list4 = opinionservice.getSelectEditorialist();
		List<CardCut> listMain = cardCutService.getCardCutMain();
		List<News> list5 = newsService.getSelectNewsForMainBig();
		List<News> list6 = newsService.getSelectNewsForMainCategory();
		
		model.addAttribute("list1", list1);
		model.addAttribute("list2", list2);
		model.addAttribute("sideList", list3);
		model.addAttribute("opinion", list4);
		model.addAttribute("listMain", listMain);
		model.addAttribute("newsBig", list5);
		model.addAttribute("newscategory", list6);
		
		System.out.println("ddd"+ list5);
		
		int mainCount = realEstateService.getRealMainboardListCount();
		model.addAttribute("mainCount", mainCount);
		
		return "main/main";
	}
	
	@ResponseBody
	@RequestMapping(value="/stockprice/fin_kospi_main_main1/info", produces = "application/json; charset=utf-8")
	public String fin_main_kospiDetailForDate(Model model, @RequestParam Map<String, String> param) throws ParseException { 
		List<Date> kospiDateList = service.getKospiDateList();  //코스피 날짜 list ex) 20221007
		List<String> kospiClprList = service.getKospiClprList();//코스피 종가 list ex) 2268.25
		Map<String, List> map = new HashedMap();
		map.put("date", kospiDateList);
		map.put("value", kospiClprList);
		return new Gson().toJson(map);
	}
	@ResponseBody
	@RequestMapping(value="/stockprice/fin_kosdaq_main_main1/info", produces = "application/json; charset=utf-8")
	public String fin_main_kosdaqDetailForDate(Model model, @RequestParam Map<String, String> param) throws ParseException { 
		List<Date> kospiDateList = service.getKosdaqDateList();  //코스닥 날짜 list ex) 20221007
		List<String> kospiClprList = service.getKosdaqClprList();//코스닥 종가 list ex) 2268.25
		Map<String, List> map = new HashedMap();
		map.put("date", kospiDateList);
		map.put("value", kospiClprList);
		return new Gson().toJson(map);
	}
}