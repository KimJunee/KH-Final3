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

-- 주택형별 - 오피스텔/도시형/민간임대 분양정보 상세 [총 데이터 2096개] (안예은)
DROP TABLE URBTYMDL;
CREATE TABLE URBTYMDL (
    PBLANC_NO	VARCHAR2(1000)	NULL,
	HOUSE_MANAGE_NO	NUMBER	NULL,
	MODEL_NO	NUMBER	NULL,
	GP	VARCHAR2(1000)	NULL,
	TP	VARCHAR2(1000)	NULL,
	EXCLUSE_AR	NUMBER	NULL,
	SUPLY_HSHLDCO	NUMBER	NULL,
	SUPLY_AMOUNT	VARCHAR2(1000)	NULL,
	SUBSCRPT_REQST_AMOUNT	VARCHAR2(1000)	NULL
);

SELECT * FROM URBTYMDL;
SELECT COUNT(*) FROM URBTYMDL;


----------------------------------------------------------------

-- 주택형별 - APT 무순위/잔여세대 분양정보 상세 [총 데이터 1760개] (안예은)
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

SELECT * FROM REMNDRMDL;
SELECT COUNT(*) FROM REMNDRMDL;

-- 주택관리번호 = 공고번호 : 주키 
--select PBLANC_NO from URBTYOFCTLLTTOTPBLANCDETAIL
--order by PBLANC_NO desc;

-- 공고번호에 포함된 다수의 MODEL_NO 확인
--select MODEL_NO
--from REMNDRMDL
--where PBLANC_NO = '2022910218';


----------------------------------------------------------------

-- APT 무순위/잔여세대 분양정보 상세 [총 데이터 547개] (안예은)
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

SELECT * FROM REMNDRLTTOTPBLANCDETAIL;


----------------------------------------------------------------

-- 청약 오피스텔/도시형/민간임대 분양정보 상세 [총 데이터 303개] (안예은)
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

SELECT * FROM URBTYOFCTLLTTOTPBLANCDETAIL;

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