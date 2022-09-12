package com.kh.realfinal.publicservice.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.realfinal.publicservice.model.vo.PublicService;

@Mapper
public interface PublicServiceMapper {
	int insertPublicService(PublicService ps);
}
