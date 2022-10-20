package com.kh.realfinal.apply.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

import com.kh.realfinal.apply.model.vo.ApplyNotice;
import com.kh.realfinal.apply.model.vo.ApplyNoticeAttach;
import com.kh.realfinal.apply.model.vo.AptLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.AptLttotPblancMdl;

@Mapper
public interface ApplyInfoMapper {
	
	//-------------------------------------------api 파싱
	int insertAptLtto(AptLttotPblancDetail aptLotto);
	int insertAptLttoMdl(AptLttotPblancMdl aptMdl);
	int insertApplyNotice(ApplyNotice applyNotice);
	int insertApplyNoticeAttach(ApplyNoticeAttach applyNotiAttach);
	
	
	//-------------------------------------------청약 공지사항
	List<ApplyNotice> selectNoticeList(RowBounds rowBounds, Map<String, String> map);
	int selectNoticeCount(Map<String, String> map);
	ApplyNotice selectNoticeByRnum(int rnum);
	List<ApplyNoticeAttach> selectNoticeAttach(@Param("bbs_sn") String bbs_sn);
	List<AptLttotPblancDetail> selectAptLttotList(Map<String, String> map);
	
	
	// 청약상세페이지 - apt
	AptLttotPblancDetail selectAptNo(String no);
	AptLttotPblancMdl selectAptMdlNo(String no);

}
