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
import com.kh.realfinal.apply.model.service.RealEstateService;
import com.kh.realfinal.apply.model.service.RemndrLttotPblancDetailService;
import com.kh.realfinal.apply.model.service.UrbtyOfctlLttotPblancDetailService;
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
	private BoardService boardService;

	private final int RealEstate = 2;

	static HashMap<String, String> locationMap = new HashMap<String, String>();
	static HashMap<String, String> locationReversMap = new HashMap<String, String>();
	static {
		locationMap.put("seoul", "서울특별시");
		locationMap.put("busan", "부산광역시");
		locationMap.put("daegu", "대구광역시");
		locationMap.put("incheon", "인천광역시");
		locationMap.put("gwangju", "광주광역시");
		locationMap.put("daejeon", "대전광역시");
		locationMap.put("ulsan", "울산광역시");
		locationMap.put("sejong", "세종특별자치시");
		locationMap.put("gyeonggi", "경기도");
		locationMap.put("gangwon", "강원도");
		locationMap.put("north chungcheong", "충청북도");
		locationMap.put("south chungcheong", "충청남도");
		locationMap.put("north jeolla", "전라북도");
		locationMap.put("south jeolla", "전라남도");
		locationMap.put("north gyeongsang", "경상북도");
		locationMap.put("south gyeongsang", "경상남도");
		locationMap.put("jeju", "제주특별자치도");

		locationReversMap.put("서울특별시", "seoul");
		locationReversMap.put("부산광역시", "busan");
		locationReversMap.put("대구광역시", "daegu");
		locationReversMap.put("인천광역시", "incheon");
		locationReversMap.put("광주광역시", "gwangju");
		locationReversMap.put("대전광역시", "daejeon");
		locationReversMap.put("울산광역시", "ulsan");
		locationReversMap.put("세종특별자치시", "sejong");
		locationReversMap.put("경기도", "gyeonggi");
		locationReversMap.put("강원도", "gangwon");
		locationReversMap.put("충청북도", "north chungcheong");
		locationReversMap.put("충청남도", "south chungcheong");
		locationReversMap.put("전라북도", "north jeolla");
		locationReversMap.put("전라남도", "south jeolla");
		locationReversMap.put("경상북도", "north gyeongsang");
		locationReversMap.put("경상남도", "south gyeongsang");
		locationReversMap.put("제주특별자치도", "jeju");	
		
	}
	
	@RequestMapping("/RealEstate/main")
	public String goRealEMain(Model model) {
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("board_list_no", RealEstate);
		List<Board> list = boardService.getSideBoardForEstate(param);
		model.addAttribute("estateList", list);//주니님꺼!
		
		Map<String, String> map = new HashMap<String, String>(); //지도에 숫자 가져올려고 쓰는놈
		Map<String, List<RealMainMapList>> map1 = new HashMap<String, List<RealMainMapList>>(); //오른쪽에 지역별청약정보 리스트
		
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
		
		System.out.println(json);
//		System.out.println(json1);
		model.addAttribute("json", json);
		model.addAttribute("json1", json1);
		return "realEstate/realEstateMain";
	}
	
	@GetMapping("/RealEstate/list")
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
			System.out.println("locationType null");
		}else {
			locationTypeList = Arrays.asList(locationType);
			System.out.println("checkbox locationType list : " + Arrays.toString(locationType));
		}
		if(houseType == null) {
			System.out.println("houseType null");
		}else {
			houseTypeList = Arrays.asList(houseType);
			System.out.println("checkbox houseType list : " + Arrays.toString(houseType));
		}if(APTsupplyType == null) {
			System.out.println("APTsupplyType null");
		}else {
			APTsupplyTypeList = Arrays.asList(APTsupplyType);
			System.out.println("checkbox APTsupplyType list : " + Arrays.toString(APTsupplyType));
		}if(scheType == null) {
			System.out.println("scheType null");
		}else {
			scheTypeList = Arrays.asList(scheType);
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
		PageInfo pageInfo = new PageInfo(page, 10, realEstateService.getRealBoardListCount(param, locationType, houseType, APTsupplyType, scheType), 20);
		System.out.println("getRealBoardListCount : " + realEstateService.getRealBoardListCount(param, locationType, houseType, APTsupplyType, scheType));
		List<RealEstateList> reallist = realEstateService.getRealBoardList(pageInfo, param, locationType, houseType, APTsupplyType, scheType);
		System.out.println("Controller reallist : " + reallist);
		
		model.addAttribute("locationTypeList" ,locationTypeList);
		model.addAttribute("houseTypeList" ,houseTypeList);
		model.addAttribute("APTsupplyTypeList" ,APTsupplyTypeList);
		model.addAttribute("scheTypeList" ,scheTypeList);
		
		model.addAttribute("reallist", reallist);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo" ,pageInfo);
		
		return "realEstate/realEstateDetailList";
	}
	
	
	
	@RequestMapping("/RealEstate/detail")
	public String goRealEDetail(Model model, @RequestParam("type") String type, @RequestParam("no") String no){
		if(type.equals("R")) {
			RemndrLttotPblancDetail remndr = remndrservice.getSelectRemndrNo(no);
			RemndrMdl remndrMdl = remndrservice.getSelectRemndrMdlNo(no);
			
			if(remndr == null) {
				System.out.println("값이 없습니다.");
			}
			
			model.addAttribute("remndr", remndr);
			model.addAttribute("remndrMdl", remndrMdl);
			
			return "realEstate/realEstateDetailRemndr";
		} else if (type.equals("U")) {
			UrbtyOfctlLttotPblancDetail urbty = urbtyservice.getSelectUrbtyNo(no);
			UrbtyMdl urbtyMdl = urbtyservice.getSelectUrbtyMdlNo(no);

			if (urbty == null) {
				System.out.println("값이 없습니다.");
			}

			model.addAttribute("urbty", urbty);
			model.addAttribute("urbtyMdl", urbtyMdl);

			return "realEstate/realEstateDetailUrbty";
		} else {
			AptLttotPblancDetail aptLtto = realEstateService.getSelectAptNo(no);
			AptLttotPblancMdl aptLttoMdl = realEstateService.getSelectAptMdlNo(no);

			if (aptLtto == null) {
				System.out.println("값이 없습니다.");
			}

			model.addAttribute("aptLtto", aptLtto);
			model.addAttribute("aptLttoMdl", aptLttoMdl);
			return "realEstate/realEstateDetailAptLtto"; 
		}
	}
	

	

}
