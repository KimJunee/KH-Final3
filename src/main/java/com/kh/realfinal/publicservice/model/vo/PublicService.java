package com.kh.realfinal.publicservice.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PublicService {
	private String serviceId; // 서비스ID
	private String serviceName; // 서비스명
	private String servicePurpose; // 서비스목적
	private String selecttionCriteria; // 선정기준
	private String documents; // 구비서류
	private String organizationName; // 소관기관명
	private String contactPhone; // 문의처 전화번호
	private String deadline; // 신청기한
	private String applicationMethod; // 신청방법
	private String siteUrl; // 신청사이트 URL
	private String receptionOrgName; // 접수기관명
	private String supportContent; // 지원내용
	private String supportTarget; // 지원대상
	private String supportType; // 지원유형(EX 현금)
	private String statute; // 법령
	
}
