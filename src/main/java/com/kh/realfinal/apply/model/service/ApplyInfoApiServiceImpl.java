package com.kh.realfinal.apply.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.apply.model.mapper.ApplyInfoMapper;
import com.kh.realfinal.apply.model.vo.ApplyNotice;
import com.kh.realfinal.apply.model.vo.ApplyNoticeAttach;
import com.kh.realfinal.apply.model.vo.AptLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.AptLttotPblancMdl;
import com.kh.realfinal.common.util.PageInfo;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ApplyInfoApiServiceImpl implements ApplyInfoApiService {

	private final ApplyInfoMapper mapper;
	
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
	public List<ApplyNotice> getApplyNoticeList(PageInfo pageInfo, Map<String, String> param) {
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
		
		
		
		return mapper.selectNoticeList(rb, searchMap);
	}


	@Override
	public int getApplyNoticeCount(Map<String, String> param) {
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
	public int getApplyNotiTotalCount() {
		return mapper.selectNoticeTotalCount();
	}

}
