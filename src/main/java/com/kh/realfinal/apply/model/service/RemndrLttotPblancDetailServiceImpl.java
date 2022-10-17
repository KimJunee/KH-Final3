package com.kh.realfinal.apply.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.apply.model.mapper.RemndrLttotPblancDetailMapper;
import com.kh.realfinal.apply.model.vo.RemndrLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.RemndrMdl;
import com.kh.realfinal.common.util.PageInfo;

@Service
public class RemndrLttotPblancDetailServiceImpl implements RemndrLttotPblancDetailService{

	@Autowired
	private RemndrLttotPblancDetailMapper Remndrmapper;

//	@Override
////	public List<RemndrLttotPblancDetail> getRemndrList(PageInfo pageInfo, Map<String, String> param) {
////		public List<RemndrLttotPblancDetail> getRemndrList(PageInfo pageInfo) {
//		public List<RemndrLttotPblancDetail> getRemndrList() {
//		// paging 처리를 위한 RowBounds 코드 셋팅
////		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
////		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
//		
////		Map<String, String> searchMap = new HashMap<String, String>();
////		String searchValue = param.get("searchValue");
////		if(searchValue != null && searchValue.length() > 0) {
////			String type = param.get("searchType");
////			if(type.equals("content")) {
////				searchMap.put("contentKeyword", searchValue);
////			} else if(type.equals("sorting")) {
////				searchMap.put("sortingType", searchValue);
////			}
////		}
//		
//		return Remndrmapper.RemndrList();
//	}

	
//	@Override
//	public int getListCount(Map<String, String> param) {
//		Map<String, String> searchMap = new HashMap<String, String>();
//		String searchValue = param.get("searchValue");
//		if(searchValue != null && searchValue.length() > 0) {
//			String type = param.get("searchType");
//			if(type.equals("content")) {
//				searchMap.put("contentKeyword", searchValue);
//			} else if(type.equals("sorting")) {
//				searchMap.put("sortingType", searchValue);
//			}
//		}
//		System.out.println(searchMap);
//		return Remndrmapper.selectListCount(searchMap);
//	}

	
	
	
	// ------------------------------------- 데이터 파싱
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveRemndrLttotPblancDetailService(RemndrLttotPblancDetail rd) {
		int result = 0;
		result = Remndrmapper.insertRemndrLttotPblancDetail(rd);
		return result;
	}
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveRemndrMdlService(RemndrMdl rm) {
		int result = 0;
		result = Remndrmapper.insertRemndrMdl(rm);
		return result;
	}




	

}
