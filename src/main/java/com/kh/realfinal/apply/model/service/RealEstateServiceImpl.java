package com.kh.realfinal.apply.model.service;



import java.util.HashMap;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.kh.realfinal.apply.model.mapper.ApplyInfoMapper;
import com.kh.realfinal.apply.model.mapper.RealEstateListMapper;
import com.kh.realfinal.apply.model.mapper.RealEstateMapMapper;
import com.kh.realfinal.apply.model.vo.AptLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.AptLttotPblancMdl;
import com.kh.realfinal.apply.model.vo.RealEstateList;
import com.kh.realfinal.apply.model.vo.RealMainMapList;
import com.kh.realfinal.common.util.PageInfo;

@Service
public class RealEstateServiceImpl implements RealEstateService{
	
	@Autowired
	private RealEstateListMapper realmapper;
	
	@Autowired
	private ApplyInfoMapper applyInfomapper;
	
	@Autowired
	private RealEstateMapMapper realMapmapper;

	//----------------------------------------------------------------------------------

	
	// 청약상세페이지 ------------------------------------- 
	@Override
	public List<RealEstateList> getRealBoardList(PageInfo pageInfo, Map<String, String> param, String[] locationType, String[] houseType, String[] APTsupplyType, String[] scheType) {
		// paging 처리를 위한 RowBounds 코드 셋팅
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
		Map<String, Object> searchMap = new HashMap<String, Object>();
		
		if(locationType != null) {
			searchMap.put("locationType", locationType);
		}
		if(houseType != null) {
			searchMap.put("houseType", houseType);
		}
		if(APTsupplyType != null) {
			searchMap.put("APTsupplyType", APTsupplyType);
		}
		if(scheType != null) {
			searchMap.put("scheType", scheType);
		}
		
		
		String searchValue = param.get("searchValue");
		if(searchValue != null && searchValue.length() > 0) {
			String type = param.get("searchType");
			if(type.equals("content")) {
				searchMap.put("contentKeyword", searchValue);
			} else if(type.equals("localName")) {
				searchMap.put("localNameType", searchValue);
			}
		}		
		System.out.println("getRealBoardList searchMap service단: " + searchMap);
		
		return realmapper.RealboardList(rowBounds, searchMap);
	}
	
	@Override
	public int getRealBoardListCount(Map<String, String> param, String[] locationType, String[] houseType, String[] APTsupplyType, String[] scheType) {
		Map<String, Object> searchMap = new HashMap<String, Object>();
		
		if(locationType != null) {
			searchMap.put("locationType", locationType);
		}
		if(houseType != null) {
			searchMap.put("houseType", houseType);
		}
		if(APTsupplyType != null) {
			searchMap.put("APTsupplyType", APTsupplyType);
		}
		if(scheType != null) {
			searchMap.put("scheType", scheType);
		}
		
		String searchValue = param.get("searchValue");
		if(searchValue != null && searchValue.length() > 0) {
			String type = param.get("searchType");
			if(type.equals("content")) {
				searchMap.put("contentKeyword", searchValue);
			} else if(type.equals("localName")) {
				searchMap.put("localNameType", searchValue);
			}
		}
		
		System.out.println("searchMap : " + searchMap);
		return realmapper.RealboardListCount(searchMap);
	}
	
	
	// 청약상세페이지에서 공고번호로 객체 가져오기 ----------------------------------
	@Override
	public AptLttotPblancDetail getSelectAptNo(String no) {
		AptLttotPblancDetail aptLtto = applyInfomapper.selectAptNo(no);
		System.out.println(aptLtto);
		return aptLtto;
	}

	@Override
	public AptLttotPblancMdl getSelectAptMdlNo(String no) {
		AptLttotPblancMdl aptLttoMdl = applyInfomapper.selectAptMdlNo(no);
		return aptLttoMdl;
	}

	

	// 청약메인 지도 count ---------------------------------------------------
	@Override
	public List<RealMainMapList> getListForMainMap(String localName) {
		List<RealMainMapList> mainMapList = realMapmapper.listForMainMap(localName);
		return mainMapList;
	}

	@Override
	public int getSelectCountForMainMap(String localName) {
		int selectCountMapList = realMapmapper.selectCountForMainMap(localName);
		return selectCountMapList;
	}

	

}
