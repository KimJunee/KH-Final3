package com.kh.realfinal.apply.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.realfinal.apply.model.vo.RemndrLttotPblancDetail;

@Mapper
public interface RemndrLttotPblancDetailMapper {
	int insertRemndrLttotPblancDetail(RemndrLttotPblancDetail rd);
}
