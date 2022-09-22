package com.kh.realfinal.apply.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.realfinal.apply.model.vo.UrbtyMdl;

@Mapper
public interface UrbtyMdlMapper {
	int insertUrbtyMdl(UrbtyMdl um);
}
