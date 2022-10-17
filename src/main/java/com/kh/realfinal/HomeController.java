package com.kh.realfinal;

import java.util.List;
import java.util.Locale;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.realfinal.financialStock.model.service.StockpriceService;
import com.kh.realfinal.financialStock.model.vo.IndexPrice;

@Controller
public class HomeController {
	
	@Autowired
	private StockpriceService service;
	
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
		model.addAttribute("list1", list1);
		model.addAttribute("list2", list2);
		
		
		return "main/main";
	}
}