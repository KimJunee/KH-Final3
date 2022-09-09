package com.kh.realfinal.landterm.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.realfinal.landterm.model.vo.LandTerm;

public interface LandTermDao {
	int insertLandTerm(SqlSessionTemplate session, LandTerm lt);
}
