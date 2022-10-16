package com.kh.realfinal.politics.model.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.realfinal.board.model.vo.Board;
import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.politics.api.LawProposedAPI;
import com.kh.realfinal.politics.api.MnaPhotoAPI;
import com.kh.realfinal.politics.api.ProfileMnaAPI;
import com.kh.realfinal.politics.model.service.LawProposedService;
import com.kh.realfinal.politics.model.service.ProfileMnaService;
import com.kh.realfinal.politics.model.vo.LawProposed;
import com.kh.realfinal.politics.model.vo.MnaPhoto;
import com.kh.realfinal.politics.model.vo.ProfileMna;

@Controller
public class ProfileMnaController {
	
	@Autowired
	ProfileMnaService profileMnaService;
	
	@Autowired
	LawProposedService lawProposedService;
	

	@RequestMapping("/politics/profileMna/insert.do")
	public String initProfileMnaData(Model model) {
		
		List<ProfileMna> list = ProfileMnaAPI.callProfileMnaByXML();
		List<MnaPhoto> photoList = MnaPhotoAPI.callListMnaByXML();
		
		for(ProfileMna item : list) {
			for(MnaPhoto item2 : photoList) {
				if(item.getHgNm().equals(item2.getMnaName())) {
					item.setJpglink(item2.getMnaPhoto());
					break;
				}
			}
		}

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

	
	@RequestMapping("/politics/lawProposed/insert.do")
	public String initLawProposedData(Model model) {
		
		List<LawProposed> list = new ArrayList<LawProposed>();
		for(int i = 1; i< 18; i++) {
			List<LawProposed> templist = LawProposedAPI.callLawProposedByXML(i);
			list.addAll(templist);
		}
		
		int count = 0;
		for(int i = 0; i <list.size(); i++) {
			LawProposed law = list.get(i);
			try {
				int result = lawProposedService.saveLawProposed(law);
				if(result > 0) {
					count += result; 
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		if(count > 0) {
			model.addAttribute("msg", "법안 정보 " +count +"개를 DB에 넣었습니다.");
			model.addAttribute("location", "/");
		}else {
			model.addAttribute("msg", "법안 정보를 DB에 넣지 못했습니다.");
			model.addAttribute("location", "/");
		}
		return "/common/msg";
		
	}
	

	@RequestMapping("/politics/polMnaList")
	public String mnaProfileList(Model model, @RequestParam Map<String, String> param) {
		
		int page = 1;
		if(param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
			} catch (Exception e) {}
		}
		
		PageInfo pageInfo = new PageInfo(page, 10, profileMnaService.getProfileCount(), 10);
		List<ProfileMna> list = profileMnaService.getProfileList(pageInfo);
		
		model.addAttribute("list",list);
		model.addAttribute("param",param);
		model.addAttribute("pageInfo",pageInfo);
		return "/politics/polMnaList";
	} 
	
 
	
	
}
