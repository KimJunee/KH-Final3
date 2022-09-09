package com.kh.realfinal.landterm.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.realfinal.landterm.model.vo.LandTerm;

@Repository
public class LandTermDaoImpl implements LandTermDao{
	
	@Override
	public int insertLandTerm(SqlSessionTemplate session, LandTerm lt) {
		System.out.println(lt);
		return session.insert("LandTermMapper.insertLandTerm", lt);
	}
}
