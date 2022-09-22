package com.kh.realfinal.apply.model.mapper;

import org.apache.ibatis.annotations.Mapper;
import com.kh.realfinal.apply.model.vo.RemndrMdl;

@Mapper
public interface RemndrMdlMapper {
	int insertRemndrMdl(RemndrMdl rm);
}
