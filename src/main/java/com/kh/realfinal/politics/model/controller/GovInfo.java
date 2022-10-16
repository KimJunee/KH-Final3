package com.kh.realfinal.politics.model.controller;

 

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
 

@Controller
public class GovInfo {
	 
	@RequestMapping("/politics/polGovInfo")
	public String govInfo(Model model) {
		return "/politics/polGovInfo";
	}
	
}
