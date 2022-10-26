package com.kh.realfinal.apply.model.service;

import java.util.List;
import java.util.Map;

import com.kh.realfinal.apply.model.vo.ApplyNotice;
import com.kh.realfinal.apply.model.vo.ApplyNoticeAttach;
import com.kh.realfinal.apply.model.vo.AptLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.AptLttotPblancMdl;
import com.kh.realfinal.apply.model.vo.RemndrLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.UrbtyOfctlLttotPblancDetail;
import com.kh.realfinal.common.util.PageInfo;

public interface ApplyInfoService {
	//API관련
	int saveAptLttotService(AptLttotPblancDetail apd);
	int saveAptLttotMdlService(AptLttotPblancMdl am);
	int saveApplyNoticeService(ApplyNotice an);
	int saveApplyNoticeAttachService(ApplyNoticeAttach ana);
	
	//청약 공지
	List<ApplyNotice> getApplyNoticeList(PageInfo pageInfo, Map<String, String> param, String categoryType);
	int getApplyNoticeCount(Map<String, String> param, String categoryType);
	int getApplyNotiTotalCount();
	ApplyNotice findNoticeByRnum(int rnum);
	List<ApplyNoticeAttach> findApplyAttach(String bbs_sn);
	
	//청약 캘린더
	List<AptLttotPblancDetail> getAptLttotList(Map<String, String> param);
	List<UrbtyOfctlLttotPblancDetail> getUrdtyList1(Map<String, String> param);
	List<UrbtyOfctlLttotPblancDetail> getUrdtyList2(Map<String, String> param);
	List<UrbtyOfctlLttotPblancDetail> getUrdtyList3(Map<String, String> param);
	List<UrbtyOfctlLttotPblancDetail> getUrdtyList4(Map<String, String> param);
	List<RemndrLttotPblancDetail> getRemndrList1(Map<String, String> param);
	List<RemndrLttotPblancDetail> getRemndrList2(Map<String, String> param);
	List<AptLttotPblancDetail> getAptSpcList(Map<String, String> param);
		
	//청약 메인
	List<ApplyNotice> getApplyNotiListForMain(Map<String, String> param);
}
