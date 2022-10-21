/* 
-- 유저 생성
CREATE USER FINAL
IDENTIFIED BY FINAL
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE temp;
-- 권한 설정
GRANT CONNECT TO FINAL;
GRANT RESOURCE TO FINAL;
GRANT dba TO FINAL;
GRANT CREATE TABLE TO FINAL;
ALTER USER FINAL DEFAULT TABLESPACE USERS;
*/
----------------------------------------------------------------
-- 주택담보대출(김태임)

DROP TABLE MORTGAGELOAN;
CREATE TABLE MORTGAGELOAN (
	MORTGAGE_ID	NUMBER	NOT NULL,
	MORTGAGE_DCLS_MONTH	VARCHAR2(1000)	NULL,
	MORTGAGE_FIN_CO_NO	NUMBER	NULL,
	MORTGAGE_KOR_CO_NM	VARCHAR2(1000)	NULL,
	MORTGAGE_FIN_PRDT_CD	VARCHAR2(1000)	NULL,
	MORTGAGE_FIN_PRDT_NM	VARCHAR2(1000)	NULL,
	MORTGAGE_JOIN_WAY	VARCHAR2(1000)	NULL,
	MORTGAGE_LOAN_INCI_EXPN	VARCHAR2(1000)	NULL,
	MORTGAGE_ERLY_RPAY_FEE	VARCHAR2(1000)	NULL,
	MORTGAGE_DLY_RATE	VARCHAR2(1000)	NULL,
	MORTGAGE_LOAN_LMT	VARCHAR2(1000)	NULL,
	MORTGAGE_DCLS_STRT_DAY	VARCHAR2(1000)	NULL,
	MORTGAGE_DCLS_END_DAY	VARCHAR2(1000)	NULL,
	MORTGAGE_FIN_CO_SUBM_DAY	VARCHAR2(1000)	NULL
);

SELECT * FROM MORTGAGELOAN;

DROP TABLE MORTGAGELOAN_OPTION;
CREATE TABLE MORTGAGELOAN_OPTION (
	MORTGAGE_NO	NUMBER	NOT NULL,
	MORTGAGE_ID	NUMBER	NOT NULL,
	MORTGAGE_MRTG_TYPE	VARCHAR2(10)	NULL,
	MORTGAGE_MRTG_TYPE_NM	VARCHAR2(100)	NULL,
	MORTGAGE_RPAY_TYPE	VARCHAR2(10)	NULL,
	MORTGAGE_RPAY_TYPE_NM	VARCHAR2(1000)	NULL,
	MORTGAGE_LEND_RATE_TYPE	VARCHAR2(10)	NULL,
	MORTGAGE_LEND_RATE_TYPE_NM	VARCHAR2(100)	NULL,
	MORTGAGE_LEND_RATE_MIN	NUMBER	NULL,
	MORTGAGE_LEND_RATE_MAX	NUMBER	NULL,
	MORTGAGE_LEND_RATE_AVG	NUMBER	NULL
);

SELECT * FROM MORTGAGELOAN_OPTION;
------------------------------------------------------------------------------------------------------

-- 청약 - APT분양정보 상세 및 APT 분양정보 주택형별 상세 DB INSERT(수정ver1) (이미향)
DROP TABLE APT_LTTOT_PBLANC_DETAIL CASCADE CONSTRAINTS;
CREATE TABLE APT_LTTOT_PBLANC_DETAIL (
	APT_APPLY_NO NUMBER PRIMARY KEY,
	house_manage_no	VARCHAR2(1000),
	bsns_mby_nm	VARCHAR2(1000),
	cnstrct_entrps_nm	VARCHAR2(1000),
	cntrct_cncls_bgnde	VARCHAR2(1000),
	cntrct_cncls_endde	VARCHAR2(1000),
	gnrl_rnk1_crsparea_rcept_pd	VARCHAR2(1000),
	gnrl_rnk1_etc_area_rcptde_pd	VARCHAR2(1000),
	gnrl_rnk1_etc_gg_rcptde_pd	VARCHAR2(1000),
	gnrl_rnk2_crsparea_rcept_pd	VARCHAR2(1000),
	gnrl_rnk2_etc_area_rcptde_pd	VARCHAR2(1000),
	gnrl_rnk2_etc_gg_rcptde_pd	VARCHAR2(1000),
	hmpg_adres	VARCHAR2(1000),
	house_dtl_secd	VARCHAR2(1000),
	house_dtl_secd_nm	VARCHAR2(1000),
	house_nm 	VARCHAR2(1000),
	house_secd	VARCHAR2(1000),
	house_secd_nm	VARCHAR2(1000),
	hssply_adres	VARCHAR2(1000),
	hssply_zip 	VARCHAR2(1000),
	imprmn_bsns_at	VARCHAR2(1000),
	lrscl_bldlnd_at	VARCHAR2(1000),
	mdat_trget_area_secd	VARCHAR2(1000),
	mdhs_telno	VARCHAR2(1000),
	mvn_prearnge_ym	VARCHAR2(1000),
	npln_prvopr_public_house_at	VARCHAR2(1000),
	parcprc_uls_at	VARCHAR2(1000),
	pblanc_no	 VARCHAR2(1000),
	przwner_presnatn_de	VARCHAR2(1000),
	public_house_earth_at	VARCHAR2(1000),
	rcept_bgnde	VARCHAR2(1000),
	rcept_endde	VARCHAR2(1000),
	rcrit_pblanc_de	VARCHAR2(1000),
	rent_secd	VARCHAR2(1000),
	rent_secd_nm	VARCHAR2(1000),
	speclt_rdn_earth_at	VARCHAR2(1000),
	spsply_rcept_bgnde	VARCHAR2(1000),
	spsply_rcept_endde	VARCHAR2(1000),
	subscrpt_area_code	VARCHAR2(1000),
	subscrpt_area_code_nm	VARCHAR2(1000),
	tot_suply_hshldco	VARCHAR2(1000)
);

DROP SEQUENCE APT_SQ_NO;
CREATE SEQUENCE APT_SQ_NO;

SELECT * FROM APT_LTTOT_PBLANC_DETAIL;
select count(*) from APT_LTTOT_PBLANC_DETAIL;

DROP TABLE APT_LTTOT_PBLANC_MDL CASCADE CONSTRAINTS;
CREATE TABLE APT_LTTOT_PBLANC_MDL (
	HOUSE_MANAGE_NO	VARCHAR2(1000),
	ETC_HSHLDCO	VARCHAR2(1000),
	HOUSE_TY	VARCHAR2(1000),
	INSTT_RECOMEND_HSHLDCO	VARCHAR2(1000),
	LFE_FRST_HSHLDCO	VARCHAR2(1000),
	LTTOT_TOP_AMOUNT	VARCHAR2(1000),
	MNYCH_HSHLDCO	VARCHAR2(1000),
	MODEL_NO	VARCHAR2(1000),
	NWWDS_HSHLDCO	VARCHAR2(1000),
	OLD_PARNTS_SUPORT_HSHLDCO	VARCHAR2(1000),
	PBLANC_NO	VARCHAR2(1000),
	SPSPLY_HSHLDCO	VARCHAR2(1000),
	SUPLY_AR VARCHAR2(1000),
	SUPLY_HSHLDCO	VARCHAR2(1000),
	TRANSR_INSTT_ENFSN_HSHLDCO	VARCHAR2(1000)
);

DROP SEQUENCE APT_MDL_SQ_NO;
CREATE SEQUENCE APT_MDL_SQ_NO;

SELECT * FROM APT_LTTOT_PBLANC_MDL;
select count(*) from APT_LTTOT_PBLANC_MDL;


-- 청약 공지사항 및 상세(첨부파일)
DROP TABLE APPLY_NOTICE CASCADE CONSTRAINTS;
CREATE TABLE APPLY_NOTICE (
	BBS_SN VARCHAR2(1000),
	CCR_CNNT_SYS_DS_CD NUMBER,
	RNUM NUMBER,
	AIS_TP_CD_NM VARCHAR2(1000),
	BBS_TL	VARCHAR2(1000),
	DEP_NM	VARCHAR2(1000),
	BBS_WOU_DTTM	VARCHAR2(1000),
	LINK_URL VARCHAR2(1000),
	BBS_DTL_CTS CLOB
);

SELECT * FROM APPLY_NOTICE;
select count(*) from APPLY_NOTICE;
SELECT * FROM APPLY_NOTICE order by RNUM asc;

DROP TABLE APPLY_NOTICE_ATTACH CASCADE CONSTRAINTS;
CREATE TABLE APPLY_NOTICE_ATTACH (
	BBS_SN	VARCHAR2(1000),
	CCR_CNNT_SYS_DS_CD VARCHAR2(1000),
	CMN_AHFL_NM VARCHAR2(1000),
	AHFL_URL VARCHAR2(1000)
);

SELECT * FROM APPLY_NOTICE_ATTACH;
select count(*) from APPLY_NOTICE_ATTACH;

-------------------------------------------------------------------------------------------------------


-- APT 무순위/잔여세대 분양정보 상세 [총 데이터 571개] (안예은)
DROP TABLE REMNDRLTTOTPBLANCDETAIL;
CREATE TABLE REMNDRLTTOTPBLANCDETAIL (
    HOUSE_MANAGE_NO	NUMBER	NOT NULL,
	PBLANC_NO	VARCHAR2(1000)	NOT NULL,
	HOUSE_NM	VARCHAR2(1000)	NULL,
	HOUSE_SECD	NUMBER	NULL,
	HOUSE_SECD_NM	VARCHAR2(1000)	NULL,
	HSSPLY_ZIP	NUMBER	NULL,
	HSSPLY_ADRES	VARCHAR2(1000)	NULL,
	TOT_SUPLY_HSHLDCO	NUMBER	NULL,
	RCRIT_PBLANC_DE	VARCHAR2(1000)	NULL,
	SUBSCRPT_RCEPT_BGNDE	VARCHAR2(1000)	NULL,
	SUBSCRPT_RCEPT_ENDDE	VARCHAR2(1000)	NULL,
	SPSPLY_RCEPT_BGNDE	VARCHAR2(1000)	NULL,
	SPSPLY_RCEPT_ENDDE	VARCHAR2(1000)	NULL,
	GNRL_RCEPT_RCPTDE	VARCHAR2(1000)	NULL,
	GNRL_RCEPT_ENDDE	VARCHAR2(1000)	NULL,
	PRZWNER_PRESNATN_DE	VARCHAR2(1000)	NULL,
	CNTRCT_CNCLS_BGNDE	VARCHAR2(1000)	NULL,
	CNTRCT_CNCLS_ENDDE	VARCHAR2(1000)	NULL,
	HMPG_ADRES	VARCHAR2(1000)	NULL,
	BSNS_MBY_NM	VARCHAR2(1000)	NULL,
	MDHS_TELNO	VARCHAR2(500)	NULL,
	MVN_PREARNGE_YM	VARCHAR2(1000)	NULL
);

--SELECT * FROM REMNDRLTTOTPBLANCDETAIL order by HOUSE_MANAGE_NO desc;
--SELECT COUNT(*) FROM REMNDRLTTOTPBLANCDETAIL;
-- 571

-- 중복찾기
--SELECT
-- HOUSE_MANAGE_NO,
-- HOUSE_NM,
-- HSSPLY_ADRES,
-- COUNT(*)
--FROM REMNDRLTTOTPBLANCDETAIL
--GROUP BY HOUSE_MANAGE_NO, HOUSE_NM, HSSPLY_ADRES
--HAVING COUNT(*) > 1;

--------------------------------------------------------

-- 주택형별 - APT 무순위/잔여세대 분양정보 상세 [총 데이터 1824개] (안예은)
DROP TABLE REMNDRMDL;
CREATE TABLE REMNDRMDL (
	HOUSE_MANAGE_NO	NUMBER	NOT NULL,
	PBLANC_NO	VARCHAR2(1000)	NULL,
	MODEL_NO	NUMBER	NULL,
	HOUSE_TY	VARCHAR2(1000)	NULL,
	SUPPLY_AR	VARCHAR2(1000)	NULL,
	SUPLY_HSHLDCO	VARCHAR2(1000)	NULL,
	SPSPLY_HSHLDCO	VARCHAR2(1000)	NULL,
	LTTOT_TOP_AMOUNT	VARCHAR2(1000)	NULL
);

--SELECT * FROM REMNDRMDL order by PBLANC_NO desc;
--SELECT COUNT(*) FROM REMNDRMDL;
-- 1824

-- 중복찾기
--SELECT
-- HOUSE_MANAGE_NO,
-- MODEL_NO,
-- LTTOT_TOP_AMOUNT,
-- COUNT(*)
--FROM REMNDRMDL
--GROUP BY HOUSE_MANAGE_NO, MODEL_NO,LTTOT_TOP_AMOUNT
--HAVING COUNT(*) > 1;

-- 주택관리번호 = 공고번호 : 주키 
--select PBLANC_NO from URBTYOFCTLLTTOTPBLANCDETAIL
--order by PBLANC_NO desc;

-- 공고번호에 포함된 다수의 MODEL_NO 확인
--select MODEL_NO
--from REMNDRMDL
--where PBLANC_NO = '2022910218';


----------------------------------------------------------------

-- 청약 오피스텔/도시형/민간임대 분양정보 상세 [총 데이터 315개] (안예은)
-- HSSPLY_HSHLDCO - null 데이터라서 삭제
-- MDHS_TELNO - 파싱시 문제 발생, string으로 설정 
DROP TABLE URBTYOFCTLLTTOTPBLANCDETAIL;
CREATE TABLE URBTYOFCTLLTTOTPBLANCDETAIL (
	PBLANC_NO	VARCHAR2(1000)	NULL,
	HOUSE_MANAGE_NO	NUMBER	NULL,
	HOUSE_NM	VARCHAR2(1000)	NULL,
	HOUSE_SECD	NUMBER	NULL,
	HOUSE_SECD_NM	VARCHAR2(1000)	NULL,
	HOUSE_DTL_SECD	NUMBER	NULL,
	HOUSE_DTL_SECD_NM	VARCHAR2(1000)	NULL,
	SEARCH_HOUSE_SECD	NUMBER	NULL,
	HSSPLY_ZIP	NUMBER	NULL,
	TOT_SUPLY_HSHLDCO	NUMBER	NULL,
	RCRIT_PBLANC_DE	VARCHAR2(1000)	NULL,
	SUBSCRPT_RCEPT_BGNDE	VARCHAR2(1000)	NULL,
	SUBSCRPT_RCEPT_ENDDE	VARCHAR2(1000)	NULL,
	PRZWNER_PRESNATN_DE	VARCHAR2(1000)	NULL,
	CNTRCT_CNCLS_BGNDE	VARCHAR2(1000)	NULL,
	CNTRCT_CNCLS_ENDDE	VARCHAR2(1000)	NULL,
	HMPG_ADRES	VARCHAR2(1000)	NULL,
	BSNS_MBY_NM	VARCHAR2(1000)	NULL,
	MDHS_TELNO	VARCHAR2(1000)	NULL,
	MVN_PREARNGE_YM	VARCHAR2(1000)	NULL,
	HSSPLY_ADRES	VARCHAR2(1000)	NULL
);

--SELECT * FROM URBTYOFCTLLTTOTPBLANCDETAIL;
--SELECT COUNT(*) FROM URBTYOFCTLLTTOTPBLANCDETAIL;
-- 315

-----------------------------------------

-- 주택형별 - 오피스텔/도시형/민간임대 분양정보 상세 [총 데이터 2159개] (안예은)
DROP TABLE URBTYMDL;
CREATE TABLE URBTYMDL (
    HOUSE_MANAGE_NO	NUMBER	NULL,
    PBLANC_NO	VARCHAR2(1000)	NULL,
	MODEL_NO	NUMBER	NULL,
	GP	VARCHAR2(1000)	NULL,
	TP	VARCHAR2(1000)	NULL,
	EXCLUSE_AR	NUMBER	NULL,
	SUPLY_HSHLDCO	NUMBER	NULL,
	SUPLY_AMOUNT	VARCHAR2(1000)	NULL,
	SUBSCRPT_REQST_AMOUNT	VARCHAR2(1000)	NULL
);

--SELECT * FROM URBTYMDL;
--SELECT COUNT(*) FROM URBTYMDL;
-- 2159



----------------------------------------------------------------

-- 공공서비스 API(김태임)
DROP TABLE PUBLICSERVICE;
CREATE TABLE PUBLICSERVICE (
    SERVICEID VARCHAR2(15) PRIMARY KEY, -- 서비스ID
    SERVICENAME VARCHAR2(200), -- 서비스명
    SERVICEPURPOSE VARCHAR2(1000), -- 서비스목적
    SELECTTIONCRITERIA CLOB, -- 선정기준
    DOCUMENTS CLOB, -- 구비서류
    ORGANIZATIONNAME VARCHAR2(100), -- 소관기관명
    CONTACTPHONE VARCHAR2(50), -- 문의처 전화번호
    DEADLINE VARCHAR2(300), -- 신청기한
    APPLICATIONMETHOD CLOB, -- 신청방법
    SITEURL VARCHAR2(200), -- 신청사이트 URL
    RECEPTIONORGNAME VARCHAR2(300), -- 접수기관명
    SUPPORTCONTENT CLOB, -- 지원내용
    SUPPORTTARGET CLOB, -- 지원대상
    SUPPORTTYPE VARCHAR2(200), -- 지원유형(EX 현금)
    STATUTE VARCHAR2(1000) -- 법령
);

SELECT * FROM PUBLICSERVICE;

----------------------------------------------------------------

-- 정기예금 API

DROP SEQUENCE SEQ_FIXDEPOSIT_NO;
CREATE SEQUENCE SEQ_FIXDEPOSIT_NO
  START WITH 1 INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 9999   
  CYCLE 
  NOCACHE;

DROP TABLE FIXDEPOSIT;
CREATE TABLE FIXDEPOSIT (
    FIXDEPOSIT_ID NUMBER PRIMARY KEY,           -- 
    FIXDEPO_TOP_FIN_GRP_NO NUMBER,              -- 권역코드
    FIXDEPO_DCLS_MONTH VARCHAR2(1000),          -- 공시 제출월 [YYYYMM]
    FIXDEPO_FIN_CO_NO NUMBER,	                -- 금융회사 코드
    FIXDEPO_KOR_CO_NM VARCHAR2(1000),		    -- 금융회사명
    FIXDEPO_FIN_PRDT_CD VARCHAR2(1000),	        -- 금융상품 코드
    FIXDEPO_FIN_PRDT_NM VARCHAR2(1000),	        -- 금융 상품명
    FIXDEPO_JOIN_WAY VARCHAR2(1000),		    -- 가입 방법
    FIXDEPO_MTRT_INT VARCHAR2(1000),		    -- 만기 후 이자율
    FIXDEPO_SPCL_CND VARCHAR2(1000),		    -- 우대조건
    FIXDEPO_JOIN_DENY NUMBER,		            -- 가입제한 EX) 1:제한없음, 2:서민전용, 3:일부제한
    FIXDEPO_JOIN_MEMBER VARCHAR2(1000),	        -- 가입대상
    FIXDEPO_ETC_NOTE VARCHAR2(1000),		    -- 기타 유의사항
    FIXDEPO_MAX_LIMIT VARCHAR2(1000),		    -- 최고한도
    FIXDEPO_DCLS_STRT_DAY VARCHAR2(1000),	    -- 공시 시작일 [YYYYMMDD]
    FIXDEPO_DCLS_END_DAY VARCHAR2(1000),	    -- 공시 종료일
    FIXDEPO_FIN_CO_SUBM_DAY VARCHAR2(1000),     -- 금융회사 제출일 [YYYYMMDDHH24MI]
    FIXDEPO_INTR_RATE_TYPE VARCHAR2(10),	    -- 저축 금리 유형
    FIXDEPO_INTR_RATE_TYPE_NM VARCHAR2(100),    -- 저축 금리 유형명
    FIXDEPO_SAVE_TRM NUMBER,		            -- 저축 기간 [단위: 개월]
    FIXDEPO_INTR_RATE NUMBER,		            -- 저축 금리 [소수점 2자리]
    FIXDEPO_INTR_RATE2 NUMBER		            -- 최고 우대금리 [소수점 2자리]
    );
    
DROP TABLE FIXDEPOSIT_OPTION;
CREATE TABLE FIXDEPOSIT_OPTION(
    FIXDEPOSIT_ID number,                       -- 
    INTR_RATE_TYPE VARCHAR2(10),                -- 저축 금리 유형
    INTR_RATE_TYPE_NM CLOB,                     -- 저축 금리 유형명
    SAVE_TRM number,                            -- 저축 기간 [단위: 개월]
    INTR_RATE number,                           -- 저축 금리 [소수점 2자리]
    INTR_RATE2 number                           -- 최고 우대금리 [소수점 2자리]
);

commit;

/* 정기예금 데이터 확인 (Total 342건 : 은행 - 49건 / 여신전문금융 - 0건 / 저축은행 - 293건 / 보험 - 0건 / 금융투자 - 0건)
select count(*)
from fixdeposit
;

-- 옵션 확인
select count(*)
from(
select fixdeposit_id
from fixdeposit_option
group by fixdeposit_id
order by fixdeposit_id
);
*/

-- 적금 API

DROP SEQUENCE SEQ_INSSVN_NO;
CREATE SEQUENCE SEQ_INSSVN_NO
  START WITH 1 INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 9999   
  CYCLE 
  NOCACHE;

DROP TABLE INSTLSAVING;
CREATE TABLE INSTLSAVING (
    INSSVN_ID NUMBER PRIMARY KEY,           -- 
    INSSVN_TOP_FIN_GRP_NO NUMBER,           -- 권역코드
    INSSVN_DCLS_MONTH VARCHAR2(1000),		-- 공시 제출월 [YYYYMM]
    INSSVN_FIN_CO_NO NUMBER,	            -- 금융회사 코드
    INSSVN_KOR_CO_NM VARCHAR2(1000),		-- 금융회사 명
    INSSVN_FIN_PRDT_CD VARCHAR2(1000),		-- 금융상품코드
    INSSVN_FIN_PRDT_NM VARCHAR2(1000),		-- 금융상품명
    INSSVN_JOIN_WAY VARCHAR2(1000),			-- 가입방법
    INSSVN_MTRT_INT VARCHAR2(1000),			-- 만기 후 이자율
    INSSVN_SPCL_CND VARCHAR2(1000),			-- 우대조건
    INSSVN_JOIN_DENY NUMBER,			    -- 가입제한 EX) 1:제한없음, 2:서민전용, 3:일부제한
    INSSVN_JOIN_MEMBER VARCHAR2(1000),		-- 가입대상
    INSSVN_ETC_NOTE VARCHAR2(1000),			-- 기타 유의사항
    INSSVN_MAX_LIMIT NUMBER,			    -- 최고한도
    INSSVN_DCLS_STRT_DAY VARCHAR2(1000),	-- 공시 시작일
    INSSVN_DCLS_END_DAY VARCHAR2(1000),		-- 공시 종료일
    INSSVN_FIN_CO_SUBM_DAY VARCHAR2(1000),	-- 금융회사 제출일 [YYYYMMDDHH24MI]
    INSSVN_INTR_RATE_TYPE VARCHAR2(10),		-- 저축 금리 유형
    INSSVN_INTR_RATE_TYPE_NM VARCHAR2(100),	-- 저축 금리 유형명
    INSSVN_RSRV_TYPE VARCHAR2(10),			-- 적립 유형
    INSSVN_RSRV_TYPE_NM VARCHAR2(1000),		        -- 적립 유형명
    INSSVN_SAVE_TRM NUMBER,			        -- 저축 기간 [단위: 개월]
    INSSVN_INTR_RATE NUMBER,			    -- 저축 금리 [소수점 2자리]
    INSSVN_INTR_RATE2 NUMBER			    -- 최고 우대금리 [소수점 2자리]
);

DROP TABLE INSSVN_OPTION;
CREATE TABLE INSSVN_OPTION(
    INSSVN_ID NUMBER,                       -- 
    INTR_RATE_TYPE VARCHAR2(10),		-- 저축 금리 유형
    INTR_RATE_TYPE_NM VARCHAR2(100),	-- 저축 금리 유형명
    RSRV_TYPE VARCHAR2(10),			-- 적립 유형
    RSRV_TYPE_NM VARCHAR2(1000),		        -- 적립 유형명
    SAVE_TRM NUMBER,			        -- 저축 기간 [단위: 개월]
    INTR_RATE NUMBER,			    -- 저축 금리 [소수점 2자리]
    INTR_RATE2 NUMBER			    -- 최고 우대금리 [소수점 2자리]
);

/* 적금 데이터 확인 (Total 300건 : 은행 - 64건 / 여신전문금융 - 0건 / 저축은행 - 236건 / 보험 - 0건 / 금융투자 - 0건)
select count(*)
from INSTLSAVING
;

-- 옵션 확인
select count(*)
from(
select INSSVN_ID
from INSSVN_OPTION
group by INSSVN_ID
order by INSSVN_ID
);
*/

-- 전세자금대출 API
DROP SEQUENCE SEQ_LEASELOAN_NO;
CREATE SEQUENCE SEQ_LEASELOAN_NO
  START WITH 1 INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 9999   
  CYCLE 
  NOCACHE;

DROP TABLE LEASELOAN;
CREATE TABLE LEASELOAN (
    LEASELOAN_ID NUMBER PRIMARY KEY,            -- 
    LEASELOAN_TOP_FIN_GRP_NO NUMBER,            -- 권역코드
    LEASELOAN_DCLS_MONTH VARCHAR2(1000),		-- 공시 제출월 [YYYYMM]
    LEASELOAN_FIN_CO_NO NUMBER,		            -- 금융회사 코드
    LEASELOAN_KOR_CO_NM VARCHAR2(1000),			-- 금융회사 명
    LEASELOAN_FIN_PRDT_CD VARCHAR2(1000), 		-- 금융상품 코드
    LEASELOAN_FIN_PRDT_NM VARCHAR2(1000),		-- 금융상품명
    LEASELOAN_JOIN_WAY VARCHAR2(1000),			-- 가입방법
    LEASELOAN_LOAN_INCI_EXPN VARCHAR2(1000),	-- 대출 부대비용
    LEASELOAN_ERLY_RPAY_FEE VARCHAR2(1000),		-- 중도상환 수수료
    LEASELOAN_DLY_RATE VARCHAR2(1000),	    	-- 연체 이자율
    LEASELOAN_LOAN_LMT VARCHAR2(1000),			-- 대출한도
    LEASELOAN_DCLS_STRT_DAY VARCHAR2(1000),		-- 공시 시작일
    LEASELOAN_DCLS_END_DAY VARCHAR2(1000),		-- 공시 종료일
    LEASELOAN_FIN_CO_SUBM_DAY VARCHAR2(1000),	-- 금융회사 제출일 [YYYYMMDDHH24MI]
    LEASELOAN_RPAY_TYPE VARCHAR2(10),			-- 대출상환유형 코드
    LEASELOAN_RPAY_TYPE_NM VARCHAR2(1000),		-- 대출상환유형
    LEASELOAN_LEND_RATE_TYPE VARCHAR2(10),	    -- 대출금리유형 코드
    LEASELOAN_LEND_RATE_TYPE_NM VARCHAR2(100),	-- 대출금리유형
    LEASELOAN_LEND_RATE_MIN	NUMBER,	            -- 대출금리_최저 [소수점 2자리]
    LEASELOAN_LEND_RATE_MAX NUMBER,		        -- 대출금리_최고 [소수점 2자리]
    LEASELOAN_LEND_RATE_AVG NUMBER		        -- 전월 취급 평균금리 [소수점 2자리]
);

DROP TABLE LEASELOAN_OPTION;
CREATE TABLE LEASELOAN_OPTION(
    LEASELOAN_ID NUMBER,                        -- 
    LEASELOAN_RPAY_TYPE VARCHAR2(10),			-- 대출상환유형 코드
    LEASELOAN_RPAY_TYPE_NM VARCHAR2(1000),		-- 대출상환유형
    LEASELOAN_LEND_RATE_TYPE VARCHAR2(10),	    -- 대출금리유형 코드
    LEASELOAN_LEND_RATE_TYPE_NM VARCHAR2(100),	-- 대출금리유형
    LEASELOAN_LEND_RATE_MIN	NUMBER,	            -- 대출금리_최저 [소수점 2자리]
    LEASELOAN_LEND_RATE_MAX NUMBER,		        -- 대출금리_최고 [소수점 2자리]
    LEASELOAN_LEND_RATE_AVG NUMBER		        -- 전월 취급 평균금리 [소수점 2자리]
);

/* 전세자금대출 데이터 확인 (Total 47건 : 은행 - 32건 / 여신전문금융 - 0건 / 저축은행 - 6건 / 보험 - 9건 / 금융투자 - 0건)
select count(*)
from LEASELOAN
;

-- 옵션 확인
select count(*)
from(
select LEASELOAN_ID
from LEASELOAN_OPTION
group by LEASELOAN_ID
order by LEASELOAN_ID
);
*/

-- 개인신용대출 API
DROP SEQUENCE SEQ_CREDITLOAN_NO;
CREATE SEQUENCE SEQ_CREDITLOAN_NO
  START WITH 1 INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 9999   
  CYCLE 
  NOCACHE;

DROP TABLE CREDITLOAN;
CREATE TABLE CREDITLOAN (
    CREDITLOAN_ID NUMBER PRIMARY KEY,                   -- 
    CREDITLOAN_TOP_FIN_GRP_NO NUMBER,                   -- 권역코드
    CREDITLOAN_DCLS_MONTH VARCHAR2(1000),				-- 공시 제출월 [YYYYMM]
    CREDITLOAN_FIN_CO_NO NUMBER,			            -- 금융회사코드
    CREDITLOAN_KOR_CO_NM VARCHAR2(1000),				-- 금융회사 명
    CREDITLOAN_FIN_PRDT_CD VARCHAR2(1000),				-- 금융상품코드
    CREDITLOAN_FIN_PRDT_NM VARCHAR2(1000),			    -- 금융상품명
    CREDITLOAN_JOIN_WAY	VARCHAR2(1000),				    -- 가입방법
    CREDITLOAN_CRDT_PRDT_TYPE NUMBER,			        -- 대출종류 코드
    CREDITLOAN_CRDT_PRDT_TYPE_NM VARCHAR2(1000),		-- 대출종류명
    CREDITLOAN_CB_NAME VARCHAR2(1000),					-- CB 회사명
    CREDITLOAN_DCLS_STRT_DAY VARCHAR2(1000),			-- 공시 시작일
    CREDITLOAN_DCLS_END_DAY	VARCHAR2(1000),			    -- 공시 종료일
    CREDITLOAN_FIN_CO_SUBM_DAY VARCHAR2(1000),			-- 금융회사 제출일 [YYYYMMDDHH24MI]
    CREDITLOAN_CRDT_LEND_RATE_TYPE VARCHAR2(10),		-- 금리구분 코드
    CREDITLOAN_CRDT_LEND_TYPE_NM VARCHAR2(1000),	    -- 금리구분
    CREDITLOAN_CRDT_GRAD_1	NUMBER,			            -- 900점 초과 [소수점 2자리]
    CREDITLOAN_CRDT_GRAD_4	NUMBER,			            -- 801~900점 [소수점 2자리]
    CREDITLOAN_CRDT_GRAD_5	NUMBER,			            -- 701~800점 [소수점 2자리]
    CREDITLOAN_CRDT_GRAD_6	NUMBER,			            -- 601~700점 [소수점 2자리]
    CREDITLOAN_CRDT_GRAD_10	NUMBER,			            -- 501~600점 [소수점 2자리]
    CREDITLOAN_CRDT_GRAD_11	NUMBER,			            -- 401~500점 [소수점 2자리]
    CREDITLOAN_CRDT_GRAD_12	NUMBER,			            -- 301~400점 [소수점 2자리]
    CREDITLOAN_CRDT_GRAD_13	NUMBER,			            -- 300점 이하 [소수점 2자리]
    CREDITLOAN_CRDT_GRAD_AVG NUMBER			            -- 평균 금리 [소수점 2자리]
);

DROP TABLE CREDITLOAN_OPTION;
CREATE TABLE CREDITLOAN_OPTION(
    CREDITLOAN_ID NUMBER,                               -- 
    CREDITLOAN_CRDT_LEND_RATE_TYPE VARCHAR2(10),		-- 금리구분 코드
    CREDITLOAN_CRDT_LEND_TYPE_NM VARCHAR2(1000),	    -- 금리구분
    CREDITLOAN_CRDT_GRAD_1	NUMBER,			            -- 900점 초과 [소수점 2자리]
    CREDITLOAN_CRDT_GRAD_4	NUMBER,			            -- 801~900점 [소수점 2자리]
    CREDITLOAN_CRDT_GRAD_5	NUMBER,			            -- 701~800점 [소수점 2자리]
    CREDITLOAN_CRDT_GRAD_6	NUMBER,			            -- 601~700점 [소수점 2자리]
    CREDITLOAN_CRDT_GRAD_10	NUMBER,			            -- 501~600점 [소수점 2자리]
    CREDITLOAN_CRDT_GRAD_11	NUMBER,			            -- 401~500점 [소수점 2자리]
    CREDITLOAN_CRDT_GRAD_12	NUMBER,			            -- 301~400점 [소수점 2자리]
    CREDITLOAN_CRDT_GRAD_13	NUMBER,			            -- 300점 이하 [소수점 2자리]
    CREDITLOAN_CRDT_GRAD_AVG NUMBER			            -- 평균 금리 [소수점 2자리]
);

/* 개인신용대출 데이터 확인 (Total 119건 : 은행 - 45건 / 여신전문금융 - 31건 / 저축은행 - 34건 / 보험 - 9건 / 금융투자 - 0건)
select count(*)
from CREDITLOAN
;

-- 옵션 확인 (은행 4건, 보험 1건 옵션 없음 - 114건이 정상)
select count(*)
from(
select CREDITLOAN_ID
from CREDITLOAN_OPTION
group by CREDITLOAN_ID
order by CREDITLOAN_ID
);
*/
--------------------------------------------------------------------------------
-- 지수님 금융용어 (1350건)
DROP TABLE FINANCIALTERM;
CREATE TABLE FINANCIALTERM(
fnceDictNm VARCHAR2(1000), --금융용어명
ksdFnceDictDescContent CLOB --용어설명
);

SELECT * FROM financialterm;

--INSERT INTO financialterm (fnceDictNm, ksdFnceDictDescContent) VALUES
--('직접청약(直接請約)', '유가증권예탁관련 실무용어로서 신주인수권이 배정된 실질주주가 발행회사에 대하여 그 주식을 인수할 것을 직접 신청하는 행위를 말한다.');

DELETE FROM financialterm;
commit;


------------------------------------------------------------------------------------------------
--김지수 주식시세정보 파싱
DROP TABLE STOCKPRICE;  --주식 시세 정보
CREATE TABLE STOCKPRICE( --주식시세정보 테이블
basDt VARCHAR2(1000), -- 기준일자
srtnCd VARCHAR2(1000), -- 종목 코드보다 짧으면서 유일성이 보장되는 코드(6자리)
isinCd 	VARCHAR2(1000), -- 국제 채권 식별 번호. 유가증권(채권)의 국제인증 고유번호
itmsNm 	VARCHAR2(1000), -- 유가증권 국제인증 고유번호 코드 이름
mrktCtg VARCHAR2(1000), -- 주식의 시장 구분 (KOSPI/KOSDAQ/KONEX 중 1)
clpr number, -- 정규시장의 매매시간종료시까지 형성되는 최종가격
vs number, -- 전일 대비 등락
fltRt number, -- 전일 대비 등락에 따른 비율
mkp number, -- 정규시장의 매매시간개시후 형성되는 최초가격
hipr number, -- 하루 중 가격의 최고치
lopr number, -- 하루 중 가격의 최저치
trqu number, -- 체결수량의 누적 합계
trPrc number, -- 거래건 별 체결가격 * 체결수량의 누적 합계
lstgStCnt number, -- 종목의 상장주식수
mrktTotAmt number --종가 * 상장주식수
);
--INSERT INTO STOCKPRICE (basDt, srtnCd, isinCd, itmsNm, mrktCtg, clpr, vs, fltRt, mkp, hipr, lopr, trqu
--, trPrc, lstgStCnt, mrktTotAmt) 
--VALUES('20220907','900110','HK0000057197','이스트아시아홀딩스'
--,'KOSDAQ', 184,-5,-2.65,190,190,183,831756,153893148,219932050,40467497200);

SELECT * FROM STOCKPRICE;

--코스피이면서 시가총액순으로 나열한것
SELECT * FROM STOCKPRICE WHERE MRKTCTG ='KOSPI' AND basDt ='20220907' ORDER BY mrktTotAmt DESC;

DELETE FROM STOCKPRICE;

commit;
------------------------------------------------------------------------------------------------
--환율정보 DB

DROP TABLE EXCHANGERATE; -- 환율정보
CREATE TABLE EXCHANGERATE(
DOLLAR NUMBER, --달러(원)
YUAN NUMBER,   --위안(원)
THEDATE VARCHAR2(1000) --일자(년월일)
);

SELECT * FROM EXCHANGERATE;

--INSERT INTO EXCHANGERATE (DOLLAR, YUAN, THEDATE) 
--VALUES(1157.20, 179.20, '2021-09-01');


DELETE FROM EXCHANGERATE;
commit;
---------------------------------------------------------------------------
DROP TABLE INDEXPRICE; --지수시세 테이블
CREATE TABLE INDEXPRICE(
BASDT  VARCHAR2(1000), --기준일자         
IDXNM  VARCHAR2(1000), --지수의 명칭       
IDXCSF VARCHAR2(1000), --지수의 분류명칭   
CLPR   NUMBER, --정규시장의 매매시간종료시까지 형성되는 최종가격(종가)       
VS     NUMBER, --전일 대비 등락            
FLTRT  NUMBER, --전일 대비 등락에 따른 비율     
MKP    NUMBER, --정규시장의 매매시간개시후 형성되는 최초가격       
HIPR   NUMBER, --하루 중 지수의 최고치     
LOPR   NUMBER, --하루 중 지수의 최저치
TRQU   NUMBER, --지수에 포함된 종목의 거래량 총합
TRPRC  NUMBER, --지수에 포함된 종목의 거래대금 총합
LSTGMRKTTOTAMT NUMBER, --지수에 포함된 종목의 시가총액
LSYREDVSFLTRG NUMBER, --지수의 전년말대비 등락폭
LSYREDVSFLTRT NUMBER, --지수의 전년말대비 등락율
YRWRCRDHGST   NUMBER, --지수의 연중최고치
YRWRCRDHGSTDT VARCHAR2(1000), --지수가 연중최고치를 기록한 날짜
YRWRCRDLWST NUMBER,  --지수의 연중최저치
YRWRCRDLWSTDT VARCHAR2(1000) --지수가 연중최저치를 기록한 날짜
);

------------------------------------------------------------------------------------------------
-- 사용자
DROP SEQUENCE SEQ_USER_NO;
CREATE SEQUENCE SEQ_USER_NO
  START WITH 1 INCREMENT BY 1
  MAXVALUE 9999999   
  CYCLE 
  NOCACHE;

DROP TABLE USER_T;
CREATE TABLE USER_T(
	USER_NO	NUMBER PRIMARY KEY,     -- 사용자번호
	USER_ID	VARCHAR2(40),           -- ID
    USER_NAME VARCHAR2(40),         -- 이름
	USER_NICKNAME VARCHAR2(40),     -- 닉네임
    USER_PHONE VARCHAR2(100),       -- 핸드폰
	USER_PASSWORD VARCHAR2(1000),     -- 비밀번호
	USER_EMAIL VARCHAR2(100),       -- E-Mail
	USER_STATUS	VARCHAR2(1) DEFAULT 'Y' CHECK(USER_STATUS IN('Y', 'N'))
);

COMMENT ON TABLE USER_T IS '사용자';
COMMENT ON COLUMN  USER_T.USER_NO IS '사용자번호';
COMMENT ON COLUMN  USER_T.USER_ID IS 'ID';
COMMENT ON COLUMN  USER_T.USER_NAME IS '이름';
COMMENT ON COLUMN  USER_T.USER_NICKNAME IS '닉네임';
COMMENT ON COLUMN  USER_T.USER_PHONE IS '핸드폰';
COMMENT ON COLUMN  USER_T.USER_PASSWORD IS '비밀번호';
COMMENT ON COLUMN  USER_T.USER_EMAIL IS 'E-Mail';
COMMENT ON COLUMN  USER_T.USER_STATUS IS '상태';

-- INSERT INTO USER_T VALUES(SEQ_USER_NO.NEXTVAL, 'test01', '김와우', '건물주가될테야', '01011112222', 'qlalf12', 'test01@gmail.com', DEFAULT);

SELECT * FROM USER_T;

-- 찜하기
DROP SEQUENCE SEQ_LIKE_NO;
CREATE SEQUENCE SEQ_LIKE_NO
  START WITH 1 INCREMENT BY 1
  MAXVALUE 9999999   
  CYCLE 
  NOCACHE;

DROP TABLE LIKE_T;
CREATE TABLE LIKE_T (
    LIKE_T_NO NUMBER PRIMARY KEY,   -- 찜번호
    USER_NO NUMBER,                 -- 사용자번호
    LIKE_THIS VARCHAR2(1000),       -- 찜상세(상품,부동산,뉴스)
    LIKE_TYPE NUMBER,               -- 찜타입(금융상품:1/부동산:2/뉴스:3)
    LIKE_DATE DATE                  -- 등록일
);

COMMENT ON TABLE LIKE_T IS '찜하기';
COMMENT ON COLUMN  LIKE_T.LIKE_T_NO IS '찜번호';
COMMENT ON COLUMN  LIKE_T.USER_NO IS '사용자번호';
COMMENT ON COLUMN  LIKE_T.LIKE_THIS IS '찜상세';
COMMENT ON COLUMN  LIKE_T.LIKE_TYPE IS '찜타입';
COMMENT ON COLUMN  LIKE_T.LIKE_DATE IS '등록일';

-- INSERT INTO LIKE_T VALUES(SEQ_LIKE_NO.NEXTVAL, '1', '1', '1', SYSDATE);

-- 게시판
DROP SEQUENCE SEQ_BOARD_NO;
CREATE SEQUENCE SEQ_BOARD_NO
  START WITH 1 INCREMENT BY 1
  MAXVALUE 9999999   
  CYCLE 
  NOCACHE;

DROP TABLE BOARD;
CREATE TABLE BOARD (
    BOARD_NO NUMBER PRIMARY KEY,            -- 게시글번호
    WRITER_NO NUMBER,  		                -- 글쓴이번호
    BOARD_LIST_NO NUMBER,                   -- 게시판 구분
    BOARD_HIT NUMBER,                       -- 조회수
    BOARD_TITLE	VARCHAR2(1000),             -- 제목
    BOARD_CONTENT CLOB,                     -- 내용
    BOARD_REGISTER DATE,                    -- 등록일시
    BOARD_MODIFY DATE,                      -- 수정일시
    BOARD_ORIGINALFILENAME VARCHAR2(1000) DEFAULT 'null',  -- 첨부파일원래이름
    BOARD_RENAMEDFILENAME VARCHAR2(1000) DEFAULT 'null',   -- 첨부파일변경이름
    BOARD_STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (BOARD_STATUS IN('Y', 'N'))
);

COMMENT ON TABLE BOARD IS '게시판';
COMMENT ON COLUMN  BOARD.BOARD_NO IS '게시글번호';
COMMENT ON COLUMN  BOARD.WRITER_NO IS '글쓴이번호';
COMMENT ON COLUMN  BOARD.BOARD_LIST_NO IS '게시판 구분';
COMMENT ON COLUMN  BOARD.BOARD_HIT IS '조회수';
COMMENT ON COLUMN  BOARD.BOARD_TITLE IS '제목';
COMMENT ON COLUMN  BOARD.BOARD_CONTENT IS '내용';
COMMENT ON COLUMN  BOARD.BOARD_REGISTER IS '등록일시';
COMMENT ON COLUMN  BOARD.BOARD_MODIFY IS '수정일시';
COMMENT ON COLUMN  BOARD.BOARD_ORIGINALFILENAME IS '첨부파일원래이름';
COMMENT ON COLUMN  BOARD.BOARD_RENAMEDFILENAME IS '첨부파일변경이름';
COMMENT ON COLUMN  BOARD.BOARD_STATUS IS '상태값(Y/N)';

-- INSERT INTO BOARD VALUES(SEQ_BOARD_NO.NEXTVAL, 3, 3, 30, '야호233', '이야호오 신난다아아아ㅏ앙344431', SYSDATE, SYSDATE, '원본이름.jpg', '변경이름.png', DEFAULT);

SELECT  B.BOARD_NO,
        B.BOARD_TITLE, 
        U.USER_NICKNAME, 
        B.BOARD_HIT, 
        B.BOARD_LIST_NO, 
        B.BOARD_ORIGINALFILENAME, 
        B.BOARD_RENAMEDFILENAME, 
        B.BOARD_CONTENT,
        B.BOARD_REGISTER, 
        B.BOARD_MODIFY
FROM BOARD B
JOIN USER_T U ON(B.WRITER_NO = U.USER_NO)
WHERE B.BOARD_STATUS = 'Y'
ORDER BY B.BOARD_NO DESC;

SELECT  B.BOARD_NO,
        B.BOARD_TITLE, 
        U.USER_NICKNAME, 
        B.BOARD_HIT, 
        B.BOARD_LIST_NO, 
        B.BOARD_ORIGINALFILENAME, 
        B.BOARD_RENAMEDFILENAME, 
        B.BOARD_CONTENT,
        B.BOARD_REGISTER, 
        B.BOARD_MODIFY
FROM BOARD B
JOIN USER_T U ON(B.WRITER_NO = U.USER_NO)
WHERE B.BOARD_STATUS = 'Y'
AND B.BOARD_LIST_NO = 2
ORDER BY B.BOARD_NO DESC;

-- 댓글
DROP SEQUENCE SEQ_REPLY_NO;
CREATE SEQUENCE SEQ_REPLY_NO
  START WITH 1 INCREMENT BY 1
  MAXVALUE 9999999   
  CYCLE 
  NOCACHE;

DROP TABLE REPLY;
CREATE TABLE REPLY (
	REPLY_NO NUMBER PRIMARY KEY,    -- 댓글번호
    REPLY_CONTENT CLOB,             -- 내용
    WRITER_NO NUMBER,		        -- 글쓴이번호
    BOARD_NO NUMBER,                -- 게시글번호
	REPLY_REGISTER DATE,            -- 등록날짜
    REPLY_MODIFY DATE               -- 수정날짜
);

COMMENT ON TABLE REPLY IS '댓글';
COMMENT ON COLUMN  REPLY.REPLY_NO IS '댓글번호';
COMMENT ON COLUMN  REPLY.REPLY_CONTENT IS '내용';
COMMENT ON COLUMN  REPLY.WRITER_NO IS '글쓴이번호';
COMMENT ON COLUMN  REPLY.BOARD_NO IS '게시글번호';
COMMENT ON COLUMN  REPLY.REPLY_REGISTER IS '등록날짜';
COMMENT ON COLUMN  REPLY.REPLY_MODIFY IS '수정날짜';

-- INSERT INTO REPLY VALUES(SEQ_REPLY_NO.NEXTVAL, '끼얏호우호우 호우주의보가 예상됩니다', 3, 26, SYSDATE, SYSDATE);

SELECT 
    B.BOARD_NO, B.BOARD_TITLE, U.USER_NICKNAME, U2.USER_NICKNAME,
    B.BOARD_HIT, B.BOARD_ORIGINALFILENAME, B.BOARD_RENAMEDFILENAME, B.BOARD_CONTENT,
    B.BOARD_LIST_NO, B.BOARD_REGISTER, B.BOARD_MODIFY, 
    R.REPLY_NO AS R_REPLY_NO, R.BOARD_NO AS R_BOARD_NO, R.REPLY_CONTENT AS R_REPLY_CONTENT, 
    U2.USER_ID AS R_USER_ID, R.REPLY_REGISTER AS R_REPLY_REGISTER, R.REPLY_MODIFY AS R_REPLY_MODIFY,
    (SELECT COUNT(1) 
        FROM REPLY R 
        WHERE R.BOARD_NO = B.BOARD_NO ) AS REPLY_CNT
FROM BOARD B
JOIN USER_T U ON(B.WRITER_NO = U.USER_NO)
LEFT OUTER JOIN REPLY R ON(B.BOARD_NO = R.BOARD_NO)
LEFT OUTER JOIN USER_T U2 ON(R.WRITER_NO = U2.USER_NO)
WHERE B.BOARD_STATUS='Y' 
AND B.BOARD_NO = 26;

SELECT  B.BOARD_NO,
        B.BOARD_TITLE, 
        U.USER_NICKNAME, 
        B.BOARD_HIT, 
        B.BOARD_LIST_NO, 
        B.BOARD_ORIGINALFILENAME, 
        B.BOARD_RENAMEDFILENAME, 
        B.BOARD_CONTENT,
        B.BOARD_REGISTER, 
        B.BOARD_MODIFY, 
        (SELECT COUNT(1) 
        FROM REPLY R 
        WHERE R.BOARD_NO = B.BOARD_NO ) AS REPLY_CNT
FROM BOARD B
JOIN USER_T U ON(B.WRITER_NO = U.USER_NO)
WHERE B.BOARD_STATUS = 'Y'
AND B.BOARD_LIST_NO = 4
ORDER BY B.BOARD_NO DESC;

SELECT 
    B.BOARD_NO, 
    B.BOARD_TITLE, 
    U.USER_NICKNAME, 
    B.BOARD_HIT, 
    B.BOARD_ORIGINALFILENAME, 
    B.BOARD_RENAMEDFILENAME, 
    B.BOARD_CONTENT,
    B.BOARD_LIST_NO, 
    B.BOARD_REGISTER, 
    B.BOARD_MODIFY
FROM BOARD B
JOIN USER_T U ON(B.WRITER_NO = U.USER_NO)
WHERE B.BOARD_STATUS='Y' 
AND B.BOARD_NO = 26;

-- 내글보기
SELECT  
    B.BOARD_NO, 
    U.USER_NO,
    B.BOARD_TITLE, 
    B.BOARD_LIST_NO, 
    B.BOARD_REGISTER, 
    B.BOARD_MODIFY
FROM BOARD B
JOIN USER_T U ON(B.WRITER_NO = U.USER_NO)
WHERE B.BOARD_STATUS='Y' 
AND U.USER_NO = 1
ORDER BY B.BOARD_NO DESC;

-- 내 댓글 갯수
SELECT COUNT(1)
    FROM REPLY R
    JOIN USER_T U ON (R.WRITER_NO = U.USER_NO)
    JOIN BOARD B ON (B.BOARD_NO = R.BOARD_NO)
    WHERE B.BOARD_STATUS = 'Y'
        AND U.USER_NO = 2
ORDER BY B.BOARD_NO DESC;

-- 내 댓글보기
SELECT 
    B.BOARD_NO, B.BOARD_TITLE, B.BOARD_LIST_NO, U.USER_NO, 
    R.REPLY_NO AS R_REPLY_NO, R.BOARD_NO AS R_BOARD_NO, R.REPLY_CONTENT AS R_REPLY_CONTENT, 
    R.REPLY_REGISTER AS R_REPLY_REGISTER, R.REPLY_MODIFY AS R_REPLY_MODIFY
FROM BOARD B
LEFT OUTER JOIN REPLY R ON(B.BOARD_NO = R.BOARD_NO)
JOIN USER_T U ON(R.WRITER_NO = U.USER_NO)
WHERE B.BOARD_STATUS='Y' 
AND U.USER_NO = 2
ORDER BY R.REPLY_NO DESC;

-- 부동산메인 사이드게시글 2개
SELECT REALESTATE.*
FROM (
    SELECT
        B.BOARD_NO, 
        B.BOARD_TITLE,
        B.WRITER_NO,
        B.BOARD_REGISTER,
        U.USER_NICKNAME
    FROM BOARD B
    JOIN USER_T U ON(B.WRITER_NO = U.USER_NO)
    WHERE B.BOARD_STATUS='Y'
    AND B.BOARD_LIST_NO = 2
    ORDER BY B.BOARD_REGISTER DESC
    ) REALESTATE
WHERE ROWNUM <= 2;

-- 정치 국회의원 사이드게시글 6개
SELECT POLITICS.*
FROM (
    SELECT
        B.BOARD_NO,
        B.BOARD_TITLE,
        B.WRITER_NO,
        B.BOARD_REGISTER,
        U.USER_NICKNAME
    FROM BOARD B
    JOIN USER_T U ON(B.WRITER_NO = U.USER_NO)
    WHERE B.BOARD_STATUS='Y'
    AND B.BOARD_LIST_NO = 1
    ORDER BY B.BOARD_REGISTER DESC
    ) POLITICS
WHERE ROWNUM <= 6;

-- 메인, 커뮤니티상세 사이드게시글 6개
SELECT ROWNUM, SIDEBOARD.*
FROM (
    SELECT
        B.BOARD_NO,
        B.BOARD_TITLE,
        B.WRITER_NO,
        B.BOARD_REGISTER,
        U.USER_NICKNAME
    FROM BOARD B
    JOIN USER_T U ON(B.WRITER_NO = U.USER_NO)
    WHERE B.BOARD_STATUS='Y'
    ORDER BY B.BOARD_REGISTER DESC
    ) SIDEBOARD
WHERE ROWNUM <= 6;

SELECT 
    R.reply_no,B.BOARD_NO, B.BOARD_TITLE as BOARD_TITLE, B.BOARD_LIST_NO, U.USER_NO, 
    R.REPLY_NO AS REPLY_NO, R.BOARD_NO AS BOARD_NO, R.REPLY_CONTENT AS REPLY_CONTENT, 
    R.REPLY_REGISTER AS REPLY_REGISTER, R.REPLY_MODIFY AS REPLY_MODIFY
FROM BOARD B
    LEFT OUTER JOIN REPLY R ON(B.BOARD_NO = R.BOARD_NO)
    JOIN USER_T U ON(R.WRITER_NO = U.USER_NO)
WHERE B.BOARD_STATUS='Y' 
    AND U.USER_NO = 2
ORDER BY R.REPLY_REGISTER DESC
;
        
 UPDATE reply set
 REPLY_REGISTER = sysdate
 where REPLY_REGISTER is null
 ;
 
--------------------------------------------------------------------------------
-- [정치] 전소피아 총 4개의 TABLE
--------------------------------------------------------------------------------
-- 1. 카드한컷
DROP SEQUENCE SEQ_CARDCUT_NO;
CREATE SEQUENCE SEQ_CARDCUT_NO;

DROP TABLE CARDCUT;
CREATE TABLE CARDCUT (
    CARDCUT_NO NUMBER PRIMARY KEY,  -- 뉴스 번호
	TITLE	VARCHAR2(1000),	        -- 뉴스이름
    LINK	VARCHAR2(1000),	    	-- 뉴스링크
	PUBDATE	DATE,	    	        -- 뉴스일자
	DESCRIPTION	CLOB	            -- 뉴스내용
);

SELECT * FROM CARDCUT;
--------------------------------------------------------------------------------
-- 2. 카드한컷_댓글작성
DROP SEQUENCE SEQ_C_REPLY_NO;
CREATE SEQUENCE SEQ_C_REPLY_NO;

DROP TABLE CARDCUT_REPLY;
CREATE TABLE CARDCUT_REPLY (
	C_REPLY_NO NUMBER PRIMARY KEY,    -- 댓글번호
    C_USER_NO NUMBER,		          -- 사용자번호
    C_BOARD_NO NUMBER,                -- 게시글번호
	C_REPLY_CONTENT VARCHAR2(1000),   -- 내용
	C_REPLY_REGISTER DATE             -- 등록날짜
);

COMMENT ON TABLE CARDCUT_REPLY IS '댓글';
COMMENT ON COLUMN  CARDCUT_REPLY.C_REPLY_NO IS '댓글번호';
COMMENT ON COLUMN  CARDCUT_REPLY.C_USER_NO IS '사용자번호';
COMMENT ON COLUMN  CARDCUT_REPLY.C_BOARD_NO IS '게시글번호';
COMMENT ON COLUMN  CARDCUT_REPLY.C_REPLY_CONTENT IS '내용';
COMMENT ON COLUMN  CARDCUT_REPLY.C_REPLY_REGISTER IS '등록날짜';

-- INSERT INTO CARDCUT_REPLY VALUES(SEQ_C_REPLY_NO.NEXTVAL, 1, 1, '소피도 한드아아아아앙', SYSDATE);
SELECT * FROM CARDCUT_REPLY;
-------------------------------------------------------------------------------- 
-- 3. 국회의원별 프로필 상세 내용(사진포함)

DROP SEQUENCE SEQ_MNA_PROFILE_NO;
CREATE SEQUENCE SEQ_MNA_PROFILE_NO;

DROP TABLE MNA_PROFILE;
CREATE TABLE MNA_PROFILE (
        MNA_PROFILE_NO NUMBER PRIMARY KEY, -- 국회의원 번호
        HG_NM	VARCHAR2(200),	 --	이름
        UNITS	VARCHAR2(200),	    --	대수
        SEX_GBN_NM	VARCHAR2(100),	--	성별
        HJ_NM	VARCHAR2(200),	    --	한자명
        ENG_NM	VARCHAR2(200),	    --	영문명칭
        BTH_DATE	DATE,       	--	생년월일
        POLY_NM	VARCHAR2(200),	    --	정당명
        ORIG_NM	VARCHAR2(200),	    --	지역
        ELECT_GBN_NM	VARCHAR2(200),	--	선거구구분
        CMITS	VARCHAR2(1000),  	--	소속위원회
        REELE_GBN_NM	VARCHAR2(200),	--	당선횟수
        TEL_NO	VARCHAR2(200),	    --	전화번호
        E_MAIL	VARCHAR2(1000), 	--	이메일
        HOMEPAGE	VARCHAR2(1000),	--	홈페이지
        STAFF	VARCHAR2(1000), 	--	보좌관
        SECRETARY	VARCHAR2(1000),	--	선임비서관
        SECRETARY2	VARCHAR2(1000),	--	비서관
        ASSEM_ADDR	VARCHAR2(1000),	--	의원실안내
        MEM_TITLE	CLOB,           --	주요약력
        JPGLINK	    VARCHAR2(2000)	 -- 국회의원 프로필 사진
);

-- 모든 국회의원 검색
SELECT * FROM MNA_PROFILE;

-- 개별 국회의원 검색 
-- select * from MNA_PROFILE where HG_NM = '배현진' ;

/* 1번째 국회의원 검색
SELECT MNA_PROFILE_NO, HG_NM, UNITS, SEX_GBN_NM, HJ_NM, ENG_NM, BTH_DATE, 
POLY_NM, ORIG_NM, ELECT_GBN_NM, CMITS, REELE_GBN_NM, TEL_NO, E_MAIL, 
HOMEPAGE, STAFF, SECRETARY, SECRETARY2, ASSEM_ADDR, MEM_TITLE, 
JPGLINK FROM MNA_PROFILE WHERE  MNA_PROFILE_NO = 1;
*/
--------------------------------------------------------------------------------
-- 4. 국회의원별 대표발의법안

DROP SEQUENCE SEQ_MNA_LEGISLATION_NO;
CREATE SEQUENCE SEQ_MNA_LEGISLATION_NO;

DROP TABLE MNA_LEGISLATION;
CREATE TABLE MNA_LEGISLATION (
        MNA_LEGISLATION_NO NUMBER PRIMARY KEY, --  번호
        BILL_NO NUMBER,	            --	의안번호
        RST_PROPOSER VARCHAR2(200),	--	이름
        AGE	VARCHAR2(1000),      	--	대수
        BILL_NAME	VARCHAR2(1000),	--	의안명
        PROPOSER	VARCHAR2(1000),	--	제안자
        COMMITTEE	VARCHAR2(1000),	--	소관위원회
        PROPOSE_DT	VARCHAR2(1000),	--	제안일
        PROC_RESULT	VARCHAR2(1000), --	처리상태
        DETAIL_LINK	VARCHAR2(1000)	--	상세페이지
);

-- 대표발의법안 전체 검색
SELECT * FROM MNA_LEGISLATION;
--------------------------------------------------------------------------------
COMMIT;