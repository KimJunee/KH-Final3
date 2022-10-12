package com.kh.realfinal.apply.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.realfinal.apply.model.vo.UrbtyOfctlLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.UrbtyMdl;

@Mapper
public interface UrbtyOfctlLttotPblancDetailMapper {
	int insertUrbtyOfctlLttotPblancDetail(UrbtyOfctlLttotPblancDetail ud);

	int insertUrbtyMdl(UrbtyMdl um);
}
