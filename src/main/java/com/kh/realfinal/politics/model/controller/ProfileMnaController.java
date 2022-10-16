package com.kh.realfinal.politics.model.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.realfinal.politics.api.ProfileMnaAPI;
import com.kh.realfinal.politics.model.service.ProfileMnaService;
import com.kh.realfinal.politics.model.vo.ProfileMna;

@Controller
public class ProfileMnaController {
	
	@Autowired
	ProfileMnaService profileMnaService;

	@RequestMapping("/politics/profileMna/insert.do")
	public String initProfileMnaData(Model model) {
		
		List<ProfileMna> list = ProfileMnaAPI.callProfileMnaByXML();
		int count = 0;
		for(int i = 0; i <list.size(); i++) {
			ProfileMna pm = list.get(i);
			try {
				int result = profileMnaService.saveProfileMna(pm);
				if(result > 0) {
					count += result; 
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		if(count > 0) {
			model.addAttribute("msg", "국회의원 " +count +"명의 프로필을 DB에 넣었습니다.");
			model.addAttribute("location", "/");
		}else {
			model.addAttribute("msg", "국회의원 프로필 정보를 DB에 넣지 못했습니다.");
			model.addAttribute("location", "/");
		}
		return "/common/msg";
		
	}
	
	
	
	
}
