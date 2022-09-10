package com.kh.realfinal.landterm.model.vo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class LandTerm {
	
	private String dic_title; //부동산 용어 이름
	private String dic_content;//부동산 용어 설명
	
	
}
