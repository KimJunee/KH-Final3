package com.kh.realfinal;

import java.util.Locale;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
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
}