package com.kh.realfinal.apply.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.realfinal.apply.model.vo.AptLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.AptLttotPblancMdl;

@Mapper
public interface AptLttotPblancDetailMapper {
	int insertAptLtto(AptLttotPblancDetail aptLotto);
	
	int insertAptLttoMdl(AptLttotPblancMdl aptMdl);
}
