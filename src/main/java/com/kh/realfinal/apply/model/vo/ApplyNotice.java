package com.kh.realfinal.apply.model.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@Builder
@AllArgsConstructor
public class ApplyNotice {
	
	private int rnum; 			// 글번호
	private String bbs_sn; 			// 번호
	private String ccr_cnnt_sys_ds_cd; // 고객센터연계시스템구분코드
	private String ais_tp_cd_nm; 	// 유형
	private String bbs_tl; 			// 제목
	private String dep_nm; 			// 담당부서
	private String bbs_wou_dttm; 	// 게시일
	private String link_url; 		// 공지사항상세 URL
	
	private String bbs_dtl_cts; 	// 내용
	
}
