package com.kh.realfinal.politics.model.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.realfinal.board.model.service.BoardService;
import com.kh.realfinal.board.model.vo.Board;
import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.opinion.model.service.OpinionService;
import com.kh.realfinal.opinion.model.vo.Opinion;
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
	private BoardService boardService;
	private final int RealEstate = 1;
	
	@Autowired
	private OpinionService opinionService;
	private final int Opinion = 1;

	@Autowired
	ProfileMnaService profileMnaService;

	@Autowired
	LawProposedService lawProposedService;

	@RequestMapping("/politics/profileMna/insert.do")
	public String initProfileMnaData(Model model) {

		List<ProfileMna> list = ProfileMnaAPI.callProfileMnaByXML();
		List<MnaPhoto> photoList = MnaPhotoAPI.callListMnaByXML();

		for (ProfileMna item : list) {
			for (MnaPhoto item2 : photoList) {
				if (item.getHgNm().equals(item2.getMnaName())) {
					item.setJpglink(item2.getMnaPhoto());
					break;
				}
			}
		}

		int count = 0;
		for (int i = 0; i < list.size(); i++) {
			ProfileMna pm = list.get(i);
			try {
				int result = profileMnaService.saveProfileMna(pm);
				if (result > 0) {
					count += result;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		if (count > 0) {
			model.addAttribute("msg", "???????????? " + count + "?????? ???????????? DB??? ???????????????.");
			model.addAttribute("location", "/");
		} else {
			model.addAttribute("msg", "???????????? ????????? ????????? DB??? ?????? ???????????????.");
			model.addAttribute("location", "/");
		}
		return "/common/msg";
	}

	@RequestMapping("/politics/lawProposed/insert.do")
	public String initLawProposedData(Model model) {

		List<LawProposed> list = new ArrayList<LawProposed>();
		for (int i = 1; i < 18; i++) {
			List<LawProposed> templist = LawProposedAPI.callLawProposedByXML(i);
			list.addAll(templist);
		}

		int count = 0;
		for (int i = 0; i < list.size(); i++) {
			LawProposed law = list.get(i);
			try {
				int result = lawProposedService.saveLawProposed(law);
				if (result > 0) {
					count += result;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		if (count > 0) {
			model.addAttribute("msg", "?????? ?????? " + count + "?????? DB??? ???????????????.");
			model.addAttribute("location", "/");
		} else {
			model.addAttribute("msg", "?????? ????????? DB??? ?????? ???????????????.");
			model.addAttribute("location", "/");
		}
		return "/common/msg";

	}

	// ????????? ??????
	// ???????????? ?????????
	@RequestMapping("/politics/polMnaList")
	public String mnaProfileList(Model model, @RequestParam Map<String, String> param) {
		// ?????????????????????
		Map<String, Object> paramBoard = new HashMap<String,Object>();
		paramBoard.put("board_list_no",RealEstate);
		List<Board> listBoard = boardService.getSideBoardForPolitics(paramBoard);
		// ????????????????????? ???
		
		List<Opinion> sideopinion = opinionService.getSelectOpinionForPolitics();
		// ?????????????????????
		Map<String, Object> opinion = new HashMap<String,Object>();
		opinion.put("opinion_list_no", opinion);
		List<Opinion> listOpinion = opinionService.getSelectOpinionForPolitics() ;
		// ????????????????????? ???

		int page = 1;
		if (param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
			} catch (Exception e) {
			}
		}
		
		int totalSize = profileMnaService.getProfileCount(param);
		PageInfo pageInfo = new PageInfo(page, 10, totalSize, 10);
		List<ProfileMna> list = profileMnaService.getProfileList(pageInfo, param);
		System.out.println(param);
		 
		model.addAttribute("sideopinion", sideopinion);	// ???????????? ????????? 
		model.addAttribute("politicsList", listBoard); // ?????????????????????
		model.addAttribute("listOpinion", listOpinion); // ?????????????????????
		model.addAttribute("list", list);
		model.addAttribute("totalSize", totalSize);
		model.addAttribute("size", list.size());
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		return "/politics/polMnaList";
	}

 
	// ???????????? ??????????????? + ??????????????????
	@RequestMapping("/politics/polMnaProfile")
	public String polMnaProfile(Model model, @RequestParam Map<String, String> param) {

		int page = 1;
		if (param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
			} catch (Exception e) {
			}
		}
		
		int profileNo = Integer.parseInt(param.get("profileNo"));

		// ???????????? ???????????????
		ProfileMna profile = profileMnaService.getProfile(profileNo);
		
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("name", profile.getHgNm());
		System.out.println(profile);
		System.out.println(map);

		map.putAll(param);
		int totalSize = lawProposedService.getLawCount(map);
		PageInfo pageInfo = new PageInfo(page, 10, totalSize, 10);
		List<LawProposed> lawList = lawProposedService.getlawProposed(pageInfo, map);
		System.out.println(lawList);
		
		model.addAttribute("profile", profile);
		model.addAttribute("lawList", lawList);
		model.addAttribute("totalSize", totalSize);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);

		return "/politics/polMnaProfile";
	}

	// ???????????? ????????? ?????? ??? ????????????
	@RequestMapping("/politics/polMnaProfileEmpty")
	public String polMnaProfileEmpty(Model model) { // ????????????
		return "politics/polMnaProfileEmpty";
	}

	@RequestMapping("/politics/polMnaStats")
	public String polMnaStats(Model model) { // ????????????
		return "politics/polMnaStats";
	}
 
}
