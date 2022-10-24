package com.kh.realfinal.financialsupervisory.model.vo;

import java.util.List;

import com.kh.realfinal.mypageFinPro.model.vo.MypageFinance;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class InstallmentSavings {
	private String finType;
	private int id; // 주키 
	private String dclsMonth; // 공시 제출월 [YYYYMM]
	private int finCoNo; // 금융회사 코드
	private String korCoNm; // 금융회사 명
//	private String korCoImageUrl; // 금융회사 이미지 url
	private String finPrdtCd; // ** 금융상품코드
	private String finPrdtNm; // 금융상품명
	private String joinWay; // 가입방법
	private String mtrtInt; // 만기 후 이자율
	private String spclCnd; // 우대조건
	private int joinDeny; // 가입제한 Ex) 1:제한없음, 2:서민전용, 3:일부제한
	private String joinMember; // 가입대상
	private String etcNote; // 기타 유의사항
	private int maxLimit; // 최고한도
	private String dclsStrtDay; // 공시 시작일
	private String dclsEndDay; // 공시 종료일
	private String finCoSubmDay; // 금융회사 제출일 [YYYYMMDDHH24MI]
	private List<InstallmentSavingsOption> installOptionList;

}
