package com.kh.realfinal.apply.model.controller;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.realfinal.apply.model.service.ApplyInfoService;
import com.kh.realfinal.apply.model.service.RealEstateService;
import com.kh.realfinal.apply.model.service.RemndrLttotPblancDetailService;
import com.kh.realfinal.apply.model.service.UrbtyOfctlLttotPblancDetailService;
import com.kh.realfinal.apply.model.vo.ApplyNotice;
import com.kh.realfinal.apply.model.vo.AptLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.AptLttotPblancMdl;
import com.kh.realfinal.apply.model.vo.RealEstateList;
import com.kh.realfinal.apply.model.vo.RealMainMapList;
import com.kh.realfinal.apply.model.vo.RemndrLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.RemndrMdl;
import com.kh.realfinal.apply.model.vo.UrbtyMdl;
import com.kh.realfinal.apply.model.vo.UrbtyOfctlLttotPblancDetail;
import com.kh.realfinal.board.model.service.BoardService;
import com.kh.realfinal.board.model.vo.Board;
import com.kh.realfinal.common.util.PageInfo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class RealEstateController {
	

	@Autowired
	private RealEstateService realEstateService;
	
	@Autowired
	private RemndrLttotPblancDetailService remndrservice;
	
	@Autowired
	private UrbtyOfctlLttotPblancDetailService urbtyservice;
	
	@Autowired
	private ApplyInfoService applyService;
	
	@Autowired
	private BoardService boardService;

	private final int RealEstate = 2;

	static HashMap<String, String> locationMap = new HashMap<String, String>();
	static HashMap<String, String> locationReversMap = new HashMap<String, String>();
	static {
		locationMap.put("seoul", "???????????????");
		locationMap.put("busan", "???????????????");
		locationMap.put("daegu", "???????????????");
		locationMap.put("incheon", "???????????????");
		locationMap.put("gwangju", "???????????????");
		locationMap.put("daejeon", "???????????????");
		locationMap.put("ulsan", "???????????????");
		locationMap.put("sejong", "?????????????????????");
		locationMap.put("gyeonggi", "?????????");
		locationMap.put("gangwon", "?????????");
		locationMap.put("north chungcheong", "????????????");
		locationMap.put("south chungcheong", "????????????");
		locationMap.put("north jeolla", "????????????");
		locationMap.put("south jeolla", "????????????");
		locationMap.put("north gyeongsang", "????????????");
		locationMap.put("south gyeongsang", "????????????");
		locationMap.put("jeju", "?????????????????????");

		locationReversMap.put("???????????????", "seoul");
		locationReversMap.put("???????????????", "busan");
		locationReversMap.put("???????????????", "daegu");
		locationReversMap.put("???????????????", "incheon");
		locationReversMap.put("???????????????", "gwangju");
		locationReversMap.put("???????????????", "daejeon");
		locationReversMap.put("???????????????", "ulsan");
		locationReversMap.put("?????????????????????", "sejong");
		locationReversMap.put("?????????", "gyeonggi");
		locationReversMap.put("?????????", "gangwon");
		locationReversMap.put("????????????", "north chungcheong");
		locationReversMap.put("????????????", "south chungcheong");
		locationReversMap.put("????????????", "north jeolla");
		locationReversMap.put("????????????", "south jeolla");
		locationReversMap.put("????????????", "north gyeongsang");
		locationReversMap.put("????????????", "south gyeongsang");
		locationReversMap.put("?????????????????????", "jeju");	
		
	}
	
	@RequestMapping("/realEstate/main")
	public String goRealEMain(Model model) {
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("board_list_no", RealEstate);
		List<Board> list = boardService.getSideBoardForEstate(param);
		model.addAttribute("estateList", list);//????????????!
		
		List<RealEstateList> mainList = realEstateService.getRealMainboardList();
		model.addAttribute("mainList", mainList);
		
		//?????? ??????
		Map<String, String> noti = new HashMap<String, String>();
		List<ApplyNotice> noticeList = applyService.getApplyNotiListForMain(noti);
		model.addAttribute("noticeList", noticeList);
		System.out.println("?????? noticeList1 : " + noticeList.toString());
		System.out.println("?????? noticeList2 : " + noticeList.size());
		
		int mainCount = realEstateService.getRealMainboardListCount();
		model.addAttribute("mainCount", mainCount);
		
		Map<String, String> map = new HashMap<String, String>(); //????????? ?????? ??????????????? ?????????
		Map<String, List<RealMainMapList>> map1 = new HashMap<String, List<RealMainMapList>>(); //???????????? ????????????????????? ?????????
		
		List<RealMainMapList> mainMapList = new ArrayList<RealMainMapList>();
		Iterator<String> iter = locationMap.values().iterator();
		while(iter.hasNext()) {
			String key = iter.next();
			int value = realEstateService.getSelectCountForMainMap(key);
			mainMapList = realEstateService.getListForMainMap(key);
			
			map.put(locationReversMap.get(key), "" + value);
			map1.put(locationReversMap.get(key), mainMapList);
		}
		
		
		String json = new Gson().toJson(map);
		String json1 = new Gson().toJson(map1);
		
//		System.out.println(json);
//		System.out.println(json1);
		model.addAttribute("json", json);
		model.addAttribute("json1", json1);
		return "realEstate/realEstateMain";
	}
	
	@GetMapping("/realEstate/list")
	public String list(Model model,
			@RequestParam Map<String, String> param,
			@RequestParam(value = "locationType" , required = false) String[] locationType,
			@RequestParam(value = "houseType" , required = false) String[] houseType,
			@RequestParam(value = "APTsupplyType" , required = false) String[] APTsupplyType,
			@RequestParam(value = "scheType" , required = false) String[] scheType,
			@ModelAttribute RealEstateList realEstateList
			) {
		log.info("param : " + param.toString());
		
		 List<String> locationTypeList = new ArrayList<String>();
		 List<String> houseTypeList = new ArrayList<String>();
		 List<String> APTsupplyTypeList = new ArrayList<String>();
		 List<String> scheTypeList = new ArrayList<String>();
		
		if(locationType == null) {
//			System.out.println("locationType null");
		}else {
			locationTypeList = Arrays.asList(locationType);
//			System.out.println("checkbox locationType list : " + Arrays.toString(locationType));
		}
		if(houseType == null) {
//			System.out.println("houseType null");
		}else {
			houseTypeList = Arrays.asList(houseType);
//			System.out.println("checkbox houseType list : " + Arrays.toString(houseType));
		}if(APTsupplyType == null) {
//			System.out.println("APTsupplyType null");
		}else {
			APTsupplyTypeList = Arrays.asList(APTsupplyType);
//			System.out.println("checkbox APTsupplyType list : " + Arrays.toString(APTsupplyType));
		}if(scheType == null) {
//			System.out.println("scheType null");
		}else {
			scheTypeList = Arrays.asList(scheType);
//			System.out.println("checkbox scheType list : " + Arrays.toString(scheType));
		}
				
//		System.out.println("param : " + param.toString());
//		for(String key : param.keySet()) {
//			String value = (String)param.get(key);
//			System.out.println("????????? " + key + " : " + value);
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
		?????? ????????? , ??? ???????????? ????????? ???????????? ??? , ?????? ???????????? ??? , ??? ???????????? ????????? ???????????? ???
		 */
		PageInfo pageInfo = new PageInfo(page, 10, realEstateService.getRealBoardListCount(param, locationType, houseType, APTsupplyType, scheType), 20);
//		System.out.println("getRealBoardListCount : " + realEstateService.getRealBoardListCount(param, locationType, houseType, APTsupplyType, scheType));
		List<RealEstateList> reallist = realEstateService.getRealBoardList(pageInfo, param, locationType, houseType, APTsupplyType, scheType);
//		System.out.println("Controller reallist : " + reallist);
		
		model.addAttribute("locationTypeList" ,locationTypeList);
		model.addAttribute("houseTypeList" ,houseTypeList);
		model.addAttribute("APTsupplyTypeList" ,APTsupplyTypeList);
		model.addAttribute("scheTypeList" ,scheTypeList);
		
		model.addAttribute("reallist", reallist);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo" ,pageInfo);
		
		return "realEstate/realEstateDetailList";
	}
	
	
	
	@RequestMapping("/realEstate/detail")
	public String goRealEDetail(Model model, @RequestParam("type") String type, @RequestParam("no") String no){
		if(type.equals("R")) {
			RemndrLttotPblancDetail remndr = remndrservice.getSelectRemndrNo(no);
			RemndrMdl remndrMdl = remndrservice.getSelectRemndrMdlNo(no);
			
			if(remndr == null) {
				System.out.println("?????? ????????????.");
			}
			
			model.addAttribute("remndr", remndr);
			model.addAttribute("remndrMdl", remndrMdl);
			
			return "realEstate/realEstateDetailRemndr";
		} else if (type.equals("U")) {
			UrbtyOfctlLttotPblancDetail urbty = urbtyservice.getSelectUrbtyNo(no);
			UrbtyMdl urbtyMdl = urbtyservice.getSelectUrbtyMdlNo(no);

			if (urbty == null) {
//				System.out.println("?????? ????????????.");
			}

			model.addAttribute("urbty", urbty);
			model.addAttribute("urbtyMdl", urbtyMdl);

			return "realEstate/realEstateDetailUrbty";
		} else {
			AptLttotPblancDetail aptLtto = realEstateService.getSelectAptNo(no);
			AptLttotPblancMdl aptLttoMdl = realEstateService.getSelectAptMdlNo(no);

			if (aptLtto == null) {
//				System.out.println("?????? ????????????.");
			}

			model.addAttribute("aptLtto", aptLtto);
			model.addAttribute("aptLttoMdl", aptLttoMdl);
			return "realEstate/realEstateDetailAptLtto"; 
		}
	}
	

	

}
