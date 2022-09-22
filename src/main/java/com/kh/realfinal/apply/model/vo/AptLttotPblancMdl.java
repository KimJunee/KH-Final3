package com.kh.realfinal.apply.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AptLttotPblancMdl {
	private String etc_hshldco;					// 특별공급-기타 세대수
	private String house_manage_no;				// 주택관리번호
	private String house_ty;					// 주택형
	private String instt_recomend_hshldco;		// 특별공급-기관추천 세대수
	private String lfe_frst_hshldco;			// 특별공급-생애최초 세대수
	private String lttot_top_amount;			// 공급금액 (분양최고금액)
	private String mnych_hshldco;				// 특별공급-다자녀가구 세대수
	private String model_no;					// 모델번호
	private String nwwds_hshldco;				// 특별공급-신혼부부 세대수
	private String old_parnts_suport_hshldco;	// 특별공급-노부모부양 세대수
	private String pblanc_no;					// 공고번호
	private String spsply_hshldco;				// 특별공급세대수
	private String suply_ar;					// 공급면적
	private String suply_hshldco;				// 일반공급세대수
	private String transr_instt_enfsn_hshldco;	// 특별공급-이전기관 세대수
	
}
