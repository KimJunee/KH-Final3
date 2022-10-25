package com.kh.realfinal.apply.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.apply.model.mapper.ApplyInfoMapper;
import com.kh.realfinal.apply.model.mapper.RemndrLttotPblancDetailMapper;
import com.kh.realfinal.apply.model.mapper.UrbtyOfctlLttotPblancDetailMapper;
import com.kh.realfinal.apply.model.vo.ApplyNotice;
import com.kh.realfinal.apply.model.vo.ApplyNoticeAttach;
import com.kh.realfinal.apply.model.vo.AptLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.AptLttotPblancMdl;
import com.kh.realfinal.apply.model.vo.RemndrLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.UrbtyOfctlLttotPblancDetail;
import com.kh.realfinal.common.util.PageInfo;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ApplyInfoApiServiceImpl implements ApplyInfoApiService {

	private final ApplyInfoMapper mapper;
	private final UrbtyOfctlLttotPblancDetailMapper uMapper;
	private final RemndrLttotPblancDetailMapper rMapper;
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveAptLttotService(AptLttotPblancDetail apd) {
		int result = 0;
		result = mapper.insertAptLtto(apd);
		
		return result;
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveAptLttotMdlService(AptLttotPblancMdl am) {
		int result = 0;
		result = mapper.insertAptLttoMdl(am);
		
		return result;
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveApplyNoticeService(ApplyNotice an) {
		int result = 0;
		result = mapper.insertApplyNotice(an);
		
		return result;
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveApplyNoticeAttachService(ApplyNoticeAttach ana) {
		int result = 0;
		result = mapper.insertApplyNoticeAttach(ana);
		
		return result;
	}
	
	
	//----------------------
	
	@Override
	public List<ApplyNotice> getApplyNoticeList(PageInfo pageInfo, Map<String, String> param, String categoryType) {
		System.out.println("service categoryType : " + categoryType);
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rb = new RowBounds(offset, pageInfo.getListLimit());
		
		Map<String, String> searchMap = new HashMap<String, String>();
		String searchValue = param.get("searchValue");
		if(searchValue != null && searchValue.length() > 0) {
			String type = param.get("searchType");
			if(type.equals("category")) {
				searchMap.put("categoryKeyword", searchValue);
			} else if(type.equals("title")) {
				searchMap.put("titleKeyword", searchValue);
			} else if(type.equals("department")) {
				searchMap.put("departmentKeyword", searchValue);
			} 
		}
		
		if(categoryType != null && categoryType.length() > 0) {
			if(categoryType.equals("1")) {
				searchMap.put("cateType", "주택용지");
			} else if(categoryType.equals("2")) {
				searchMap.put("cateType", "상가용지");
			} else if(categoryType.equals("3")) {
				searchMap.put("cateType", "산업시설용지");
			} else if(categoryType.equals("4")) {
				searchMap.put("cateType", "기타용지");
			} else if(categoryType.equals("5")) {
				searchMap.put("cateType", "통합공공임대");
			} else if(categoryType.equals("6")) {
				searchMap.put("cateType", "국민임대");
			} else if(categoryType.equals("7")) {
				searchMap.put("cateType", "공공임대");
			} else if(categoryType.equals("8")) {
				searchMap.put("cateType", "영구임대");
			} else if(categoryType.equals("9")) {
				searchMap.put("cateType", "행복주택");
			} else if(categoryType.equals("10")) {
				searchMap.put("cateType", "장기전세");
			} else if(categoryType.equals("11")) {
				searchMap.put("cateType", "신축다세대");
			} else if(categoryType.equals("12")) {
				searchMap.put("cateType", "매입임대");
			} else if(categoryType.equals("13")) {
				searchMap.put("cateType", "전세임대");
			} else if(categoryType.equals("14")) {
				searchMap.put("cateType", "집주인임대");
			} else if(categoryType.equals("15")) {
				searchMap.put("cateType", "분양·임대상가(입찰)");
			} else if(categoryType.equals("16")) {
				searchMap.put("cateType", "임대상가(입찰)");
			} else if(categoryType.equals("17")) {
				searchMap.put("cateType", "임대상가(공모·심사)");
			} else if(categoryType.equals("18")) {
				searchMap.put("cateType", "임대상가(추첨)");
			} else if(categoryType.equals("19")) {
				searchMap.put("cateType", "분양주택");
			} else if(categoryType.equals("20")) {
				searchMap.put("cateType", "신혼희망타운");
			} else if(categoryType.equals("21")) {
				searchMap.put("cateType", "기타");
			}
		}
		
		return mapper.selectNoticeList(rb, searchMap);
	}


	@Override
	public int getApplyNoticeCount(Map<String, String> param, String categoryType) {
		
		System.out.println("service count categoryType : " + categoryType);
		Map<String, String> searchMap = new HashMap<String, String>();
		String searchValue = param.get("searchValue");
		String type = param.get("searchType");
		
		System.out.println("serchValue : " + searchValue);
		System.out.println("searchType : " + type);
		
		if(searchValue != null && searchValue.length() > 0) {
//				String type = param.get("searchType");
			if(type.equals("category")) {
				searchMap.put("categoryKeyword", searchValue);
			} else if(type.equals("title")) {
				searchMap.put("titleKeyword", searchValue);
			} else if(type.equals("department")) {
				searchMap.put("departmentKeyword", searchValue);
			} 
		}
		
		if(categoryType != null && categoryType.length() > 0) {
			if(categoryType.equals("1")) {
				searchMap.put("cateType", "주택용지");
			} else if(categoryType.equals("2")) {
				searchMap.put("cateType", "상가용지");
			} else if(categoryType.equals("3")) {
				searchMap.put("cateType", "산업시설용지");
			} else if(categoryType.equals("4")) {
				searchMap.put("cateType", "기타용지");
			} else if(categoryType.equals("5")) {
				searchMap.put("cateType", "통합공공임대");
			} else if(categoryType.equals("6")) {
				searchMap.put("cateType", "국민임대");
			} else if(categoryType.equals("7")) {
				searchMap.put("cateType", "공공임대");
			} else if(categoryType.equals("8")) {
				searchMap.put("cateType", "영구임대");
			} else if(categoryType.equals("9")) {
				searchMap.put("cateType", "행복주택");
			} else if(categoryType.equals("10")) {
				searchMap.put("cateType", "장기전세");
			} else if(categoryType.equals("11")) {
				searchMap.put("cateType", "신축다세대");
			} else if(categoryType.equals("12")) {
				searchMap.put("cateType", "매입임대");
			} else if(categoryType.equals("13")) {
				searchMap.put("cateType", "전세임대");
			} else if(categoryType.equals("14")) {
				searchMap.put("cateType", "집주인임대");
			} else if(categoryType.equals("15")) {
				searchMap.put("cateType", "분양·임대상가(입찰)");
			} else if(categoryType.equals("16")) {
				searchMap.put("cateType", "임대상가(입찰)");
			} else if(categoryType.equals("17")) {
				searchMap.put("cateType", "임대상가(공모·심사)");
			} else if(categoryType.equals("18")) {
				searchMap.put("cateType", "임대상가(추첨)");
			} else if(categoryType.equals("19")) {
				searchMap.put("cateType", "분양주택");
			} else if(categoryType.equals("20")) {
				searchMap.put("cateType", "신혼희망타운");
			} else if(categoryType.equals("21")) {
				searchMap.put("cateType", "기타");
			}
		}
		return mapper.selectNoticeCount(searchMap);
	}


	@Override
	public ApplyNotice findNoticeByRnum(int rnum) {
		ApplyNotice an = mapper.selectNoticeByRnum(rnum);
		return an;
	}


	@Override
	public List<ApplyNoticeAttach> findApplyAttach(String bbs_sn) {
		return mapper.selectNoticeAttach(bbs_sn);
	}


	@Override
	public List<AptLttotPblancDetail> getAptLttotList(Map<String, String> param) {
		return mapper.selectAptLttotList(param);
	}
	
	@Override
	public List<UrbtyOfctlLttotPblancDetail> getUrdtyList1(Map<String, String> param) {
		return uMapper.selectUrbtyList1(param);
	}
	
	@Override
	public List<UrbtyOfctlLttotPblancDetail> getUrdtyList2(Map<String, String> param) {
		return uMapper.selectUrbtyList2(param);
	}
	
	@Override
	public List<UrbtyOfctlLttotPblancDetail> getUrdtyList3(Map<String, String> param) {
		return uMapper.selectUrbtyList3(param);
	}
	
	@Override
	public List<UrbtyOfctlLttotPblancDetail> getUrdtyList4(Map<String, String> param) {
		return uMapper.selectUrbtyList4(param);
	}

	@Override
	public int getApplyNotiTotalCount() {
		return mapper.selectNoticeTotalCount();
	}

	@Override
	public List<RemndrLttotPblancDetail> getRemndrList1(Map<String, String> param) {
		return rMapper.selectRemndrList1(param);
	}

	@Override
	public List<RemndrLttotPblancDetail> getRemndrList2(Map<String, String> param) {
		return rMapper.selectRemndrList2(param);
	}
	
	@Override
	public List<AptLttotPblancDetail> getAptSpcList(Map<String, String> param) {
		return mapper.selectAptSpcList(param);
	}

}
