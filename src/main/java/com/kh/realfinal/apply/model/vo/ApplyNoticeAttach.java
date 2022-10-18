package com.kh.realfinal.apply.model.vo;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ApplyNoticeAttach {
	
	private String bbs_sn; 				// 번호
	private String ccr_cnnt_sys_ds_cd;  // 고객센터연계시스템구분코드
	private String cmn_ahfl_nm; 		// 첨부파일명
	private String ahfl_url; 			// 첨부파일 다운로드 url
}
