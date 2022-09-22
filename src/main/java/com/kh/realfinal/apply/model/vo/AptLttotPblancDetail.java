package com.kh.realfinal.apply.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class AptLttotPblancDetail {

    private String bsns_mby_nm;                   // 사업주체명(시행사)
    private String cnstrct_entrps_nm;             // 건설업체명(시공사)
    private String cntrct_cncls_bgnde;            // 계약 시작일
    private String cntrct_cncls_endde;            // 계약 종료일
    private String gnrl_rnk1_crsparea_rcept_pd;   // 1순위 접수일 해당지역
    private String gnrl_rnk1_etc_area_rcptde_pd;  // 1순위 접수일 기타지역
    private String gnrl_rnk1_etc_gg_rcptde_pd;    // 1순위 접수일 경기지역
    private String gnrl_rnk2_crsparea_rcept_pd;   // 2순위 접수일 해당지역
    private String gnrl_rnk2_etc_area_rcptde_pd;  // 2순위 접수일 기타지역
    private String gnrl_rnk2_etc_gg_rcptde_pd;    // 2순위 접수일 경기지역
    private String hmpg_adres;                    // 홈페이지 주소
    private String house_dtl_secd;                // 주택 상세 구분 코드
    private String house_dtl_secd_nm;             // 주택 상세 구분 코드명
    private String house_manage_no;               // 주택 관리 번호
    private String house_nm;                      // 주택명
    private String house_secd;                    // 주택 구분 코드
    private String house_secd_nm;                 // 주택 구분 코드명
    private String hssply_adres;                  // 공급 위치
    private String hssply_zip;                    // 공급 위치 우편번호
    private String imprmn_bsns_at;                // 정비사업
    private String lrscl_bldlnd_at;               // 대규모 택지개발지구
    private String mdat_trget_area_secd;          // 조정 대상 지역
    private String mdhs_telno;                    // 문의처
    private String mvn_prearnge_ym;               // 입주 예정월
    private String npln_prvopr_public_house_at;   // 수도권 내 민영
    private String parcprc_uls_at;                // 분양가 상한제
    private String pblanc_no;                     // 공고번호
    private String przwner_presnatn_de;           // 당첨자 발표일
    private String public_house_earth_at;         // 공공주택지구
    private String rcept_bgnde;                   // 청약 접수 시작일
    private String rcept_endde;                   // 청약 접수 종료일
    private String rcrit_pblanc_de;               // 모집 공고일
    private String rent_secd;                     // 분양 구분 코드
    private String rent_secd_nm;                  // 분양 구분 코드명
    private String speclt_rdn_earth_at;           // 투기 과열 지구
    private String spsply_rcept_bgnde;            // 특별공급 접수 시작일
    private String spsply_rcept_endde;            // 특별공급 접수 종료일
    private String subscrpt_area_code;            // 공급 지역 코드
    private String subscrpt_area_code_nm;         // 공급 지역명
    private String tot_suply_hshldco;             // 공급 규모
}
