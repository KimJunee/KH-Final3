package com.kh.realfinal.apply.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.realfinal.apply.model.vo.RemndrLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.RemndrMdl;

@Mapper
public interface RemndrLttotPblancDetailMapper {
	int insertRemndrLttotPblancDetail(RemndrLttotPblancDetail rd);
	
	int insertRemndrMdl(RemndrMdl rm);
}
