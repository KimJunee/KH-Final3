package com.kh.realfinal.apply.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.realfinal.apply.model.vo.ApplyNotice;
import com.kh.realfinal.apply.model.vo.ApplyNoticeAttach;
import com.kh.realfinal.apply.model.vo.AptLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.AptLttotPblancMdl;

@Mapper
public interface ApplyInfoApiMapper {
	int insertAptLtto(AptLttotPblancDetail aptLotto);
	
	int insertAptLttoMdl(AptLttotPblancMdl aptMdl);
	
	int insertApplyNotice(ApplyNotice applyNotice);
	
	int insertApplyNoticeAttach(ApplyNoticeAttach applyNotiAttach);
}
