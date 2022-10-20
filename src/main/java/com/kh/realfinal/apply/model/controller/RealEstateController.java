package com.kh.realfinal.apply.model.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.realfinal.apply.model.service.RealEstateService;
import com.kh.realfinal.apply.model.vo.RealEstateList;
import com.kh.realfinal.board.model.service.BoardService;
import com.kh.realfinal.board.model.vo.Board;
import com.kh.realfinal.apply.model.vo.ApplyNotice;
import com.kh.realfinal.apply.model.vo.ApplyNoticeAttach;
import com.kh.realfinal.apply.model.vo.AptLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.RemndrLttotPblancDetail;
import com.kh.realfinal.common.util.PageInfo;

import lombok.extern.slf4j.Slf4j;

import com.kh.realfinal.apply.model.service.ApplyInfoApiService;

@Slf4j
@Controller
public class RealEstateController {
	

	@Autowired
	private RealEstateService service;
	
	@Autowired
	private ApplyInfoApiService ApplyService;
	
	@Autowired
	private BoardService boardService;

	private final int RealEstate = 2;

	@RequestMapping("/RealEstate/main")
	public String goRealEMain(Model model) {
	Map<String, Object> param = new HashMap<String,Object>();

	param.put("board_list_no",RealEstate);

	List<Board> list = boardService.getSideBoardForEstate(param);

	model.addAttribute("estateList", list);

	return "realEstate/realEstateMain";
	}
	
	@GetMapping("/RealEstate/list")
	public String list(Model model,
			@RequestParam Map<String, String> param,
			@RequestParam(value = "locationType" , required = false) String[] locationType,
			@RequestParam(value = "houseType" , required = false) String[] houseType,
			@RequestParam(value = "APTsupplyType" , required = false) String[] APTsupplyType,
			@RequestParam(value = "scheType" , required = false) String[] scheType) {
		log.info("param : " + param.toString());
		if(locationType == null) {
			System.out.println("locationType null");
		}else {
			
			System.out.println("checkbox locationType list : " + Arrays.toString(locationType));
		}
		if(houseType == null) {
			System.out.println("houseType null");
		}else {
			
			System.out.println("checkbox houseType list : " + Arrays.toString(houseType));
		}if(APTsupplyType == null) {
			System.out.println("APTsupplyType null");
		}else {
			
			System.out.println("checkbox APTsupplyType list : " + Arrays.toString(APTsupplyType));
		}if(scheType == null) {
			System.out.println("scheType null");
		}else {
			
			System.out.println("checkbox scheType list : " + Arrays.toString(scheType));
		}
				
//		System.out.println("param : " + param.toString());
//		for(String key : param.keySet()) {
//			String value = (String)param.get(key);
//			System.out.println("나와라 " + key + " : " + value);
//		}
//		System.out.println(param.get("locationType").toString());
//		System.out.println(param.get("houseType").toString());
//		System.out.println(param.get("APTsupplyType").toString());
//		System.out.println(param.get("scheType").toString());
		
		int page = 1;
		if(param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
			} catch (Exception e) {}
		}
		/**
		 * 
		현재 페이지 , 한 페이지에 보여질 페이지의 수 , 전체 리스트의 수 , 한 페이지에 표시될 리스트의 수
		 */
		PageInfo pageInfo = new PageInfo(page, 10, service.getRealBoardListCount(param, locationType, houseType, APTsupplyType, scheType), 20);
		System.out.println("getRemndrListCount : " + service.getRealBoardListCount(param, locationType, houseType, APTsupplyType, scheType));
		List<RealEstateList> reallist = service.getRealBoardList(pageInfo, param, locationType, houseType, APTsupplyType, scheType);
		System.out.println("Controller reallist : " + reallist);
		
		model.addAttribute("reallist", reallist);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo" ,pageInfo);
		return "realEstate/realEstateDetailList";
	}
	
	
	
	@RequestMapping("/RealEstate/detail")
	public String goRealEDetail(Model model){
		return "realEstate/realEstateDetail";
	}
	
	
	
	//---------------------------------------------------
	
	@GetMapping("/realEstate/notice")
	public String noticeList(Model model, @RequestParam Map<String, String> param) {
//		log.info("param : " + param.toString());
		
		int page = 1;
		if(param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
			} catch (Exception e) {}
		}
		
		int noticeListCount = service.getApplyNoticeCount(param);
		
		PageInfo pageInfo = new PageInfo(page, 10, noticeListCount, 20);
		List<ApplyNotice> list = service.getApplyNoticeList(pageInfo, param);
		
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		
		return "realEstate/realEstateNotice";
	}
	
	@GetMapping("/realEstate/notice/view")
	public String noticeView(Model model, @RequestParam("no") int no) {
		
		ApplyNotice notice = service.findNoticeByRnum(no);
		List<ApplyNoticeAttach> attachList = service.findApplyAttach(notice.getBbs_sn());
		
		model.addAttribute("notice", notice);
		model.addAttribute("attach", attachList);
		
		System.out.println("첨부파일 : " + attachList.toString());
		
		return "realEstate/realEstateNoticeDetail";
	}
	
	@GetMapping("/realEstate/calendar")
	public String applyCalendar(Model model, @RequestParam Map<String, String> param) {
		
		List<AptLttotPblancDetail> list = service.getAptLttotList(param);
		
		model.addAttribute("apt", list);
		
		return "realEstate/realEstateCalendar";
	}
	
	@RequestMapping(value="/realEstate/calendar-list", method = RequestMethod.GET)
	@ResponseBody
	public List<Map<String, Object>> applyCalendarList(Model model, @RequestParam Map<String, String> param) {
//	public String applyCalendar(Model model, @RequestParam Map<String, String> param) {
		
		List<AptLttotPblancDetail> list = service.getAptLttotList(param);
		
		JSONObject jsonObj = new JSONObject();
		JSONArray jsonArr = new JSONArray();
		HashMap<String, Object> hash = new HashMap<String, Object>();
		
		System.out.println("달력 ajax 요청 됐습니당");
		
		for(int i = 0; i < list.size(); i++) {
			hash.put("title", list.get(i).getHouse_nm());
			hash.put("start", list.get(i).getGnrl_rnk1_crsparea_rcept_pd());
			hash.put("color", "#E378A6");
			
			jsonObj = new JSONObject(hash); //데이터들을 중괄호 안에 넣음
			jsonArr.add(jsonObj); //대괄호 안에 넣어줌
			
		}
		
		log.info("jsonArrCheck={}", jsonArr);
		
		model.addAttribute("jsonArr", jsonArr);
		
		return jsonArr;
//		return "realEstate/realEstateCalendar";
	}

	
}
