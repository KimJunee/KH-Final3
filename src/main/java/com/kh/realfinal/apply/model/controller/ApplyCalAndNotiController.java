package com.kh.realfinal.apply.model.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class ApplyCalAndNotiController {
	
	@RequestMapping("/realEstate/calendar")
	public String applyCalendar() {
		return "realEstate/realEstateCalendar";
	}
	
	@RequestMapping("/realEstate/notice")
	public String applyNotice() {
		return "realEstate/realEstateNotice";
	}
	
	@RequestMapping("/realEstate/notice-detail")
	public String applyNoticeDetail() {
		return "realEstate/realEstateNoticeDetail";
	}
	
	
}
