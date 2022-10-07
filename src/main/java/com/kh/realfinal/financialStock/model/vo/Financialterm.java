package com.kh.realfinal.financialStock.model.vo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Financialterm {
	private String fnceDictNm; //금융용어이름
	private String ksdFnceDictDescContent; //금융용어 설명
}
