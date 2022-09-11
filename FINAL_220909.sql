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

-- 정기예금 API
CREATE TABLE FIXDEPOSIT (
    FIXDEPO_DCLS_MONTH DATE,                    -- 공시 제출월 [YYYYMM]
    FIXDEPO_FIN_CO_NO NUMBER PRIMARY KEY,	    -- 금융회사 코드
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
    FIXDEPO_DCLS_STRT_DAY DATE,	                -- 공시 시작일 [YYYYMMDD]
    FIXDEPO_DCLS_END_DAY DATE,	                -- 공시 종료일
    FIXDEPO_FIN_CO_SUBM_DAY DATE,               -- 금융회사 제출일 [YYYYMMDDHH24MI]
    FIXDEPO_INTR_RATE_TYPE VARCHAR2(10),	    -- 저축 금리 유형
    FIXDEPO_INTR_RATE_TYPE_NM VARCHAR2(100),    -- 저축 금리 유형명
    FIXDEPO_SAVE_TRM NUMBER,		            -- 저축 기간 [단위: 개월]
    FIXDEPO_INTR_RATE NUMBER,		            -- 저축 금리 [소수점 2자리]
    FIXDEPO_INTR_RATE2 NUMBER		            -- 최고 우대금리 [소수점 2자리]
    );

-- 적금 API
CREATE TABLE INSTLSAVING (
    INSSVN_DCLS_MONTH DATE,			        -- 공시 제출월 [YYYYMM]
    INSSVN_FIN_CO_NO NUMBER PRIMARY KEY,	-- 금융회사 코드
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
    INSSVN_DCLS_STRT_DAY DATE,		        -- 공시 시작일
    INSSVN_DCLS_END_DAY DATE,		        -- 공시 종료일
    INSSVN_FIN_CO_SUBM_DAY DATE,		    -- 금융회사 제출일 [YYYYMMDDHH24MI]
    INSSVN_INTR_RATE_TYPE VARCHAR2(10),		-- 저축 금리 유형
    INSSVN_INTR_RATE_TYPE_NM VARCHAR2(100),	-- 저축 금리 유형명
    INSSVN_RSRV_TYPE VARCHAR2(10),			-- 적립 유형
    INSSVN_RSRV_TYPE_NM VARCHAR2(1000),		-- 적립 유형명
    INSSVN_SAVE_TRM NUMBER,			        -- 저축 기간 [단위: 개월]
    INSSVN_INTR_RATE NUMBER,			    -- 저축 금리 [소수점 2자리]
    INSSVN_INTR_RATE2 NUMBER			    -- 최고 우대금리 [소수점 2자리]
);

-- 전세자금대출 API
CREATE TABLE LEASELOAN (
    LEASELOAN_DCLS_MONTH DATE,		            -- 공시 제출월 [YYYYMM]
    LEASELOAN_FIN_CO_NO NUMBER PRIMARY KEY,		-- 금융회사 코드
    LEASELOAN_KOR_CO_NM VARCHAR2(1000),			-- 금융회사 명
    LEASELOAN_FIN_PRDT_CD VARCHAR2(1000), 		-- 금융상품 코드
    LEASELOAN_FIN_PRDT_NM VARCHAR2(1000),		-- 금융상품명
    LEASELOAN_JOIN_WAY VARCHAR2(1000),			-- 가입방법
    LEASELOAN_LOAN_INCI_EXPN VARCHAR2(1000),	-- 대출 부대비용
    LEASELOAN_ERLY_RPAY_FEE VARCHAR2(1000),		-- 중도상환 수수료
    LEASELOAN_DLY_RATE VARCHAR2(1000),	    	-- 연체 이자율
    LEASELOAN_LOAN_LMT VARCHAR2(1000),			-- 대출한도
    LEASELOAN_DCLS_STRT_DAY DATE,		        -- 공시 시작일
    LEASELOAN_DCLS_END_DAY DATE,		        -- 공시 종료일
    LEASELOAN_FIN_CO_SUBM_DAY DATE,	            -- 금융회사 제출일 [YYYYMMDDHH24MI]
    LEASELOAN_RPAY_TYPE VARCHAR2(10),			-- 대출상환유형 코드
    LEASELOAN_RPAY_TYPE_NM VARCHAR2(1000),		-- 대출상환유형
    LEASELOAN_LEND_RATE_TYPE VARCHAR2(10),	    -- 대출금리유형 코드
    LEASELOAN_LEND_RATE_TYPE_NM VARCHAR2(100),	-- 대출금리유형
    LEASELOAN_LEND_RATE_MIN	NUMBER,	            -- 대출금리_최저 [소수점 2자리]
    LEASELOAN_LEND_RATE_MAX NUMBER,		        -- 대출금리_최고 [소수점 2자리]
    LEASELOAN_LEND_RATE_AVG NUMBER		        -- 전월 취급 평균금리 [소수점 2자리]
);

-- 개인신용대출 API
CREATE TABLE CREDITLOAN (
    CREDITLOAN_DCLS_MONTH DATE,				            -- 공시 제출월 [YYYYMM]
    CREDITLOAN_FIN_CO_NO NUMBER PRIMARY KEY,			-- 금융회사코드
    CREDITLOAN_KOR_CO_NM VARCHAR2(1000),				-- 금융회사 명
    CREDITLOAN_FIN_PRDT_CD VARCHAR2(1000),				-- 금융상품코드
    CREDITLOAN_FIN_PRDT_NM VARCHAR2(1000),			    -- 금융상품명
    CREDITLOAN_JOIN_WAY	VARCHAR2(1000),				    -- 가입방법
    CREDITLOAN_CRDT_PRDT_TYPE NUMBER,			        -- 대출종류 코드
    CREDITLOAN_CRDT_PRDT_TYPE_NM VARCHAR2(1000),		-- 대출종류명
    CREDITLOAN_CB_NAME VARCHAR2(1000),					-- CB 회사명
    CREDITLOAN_DCLS_STRT_DAY DATE,			            -- 공시 시작일
    CREDITLOAN_DCLS_END_DAY	DATE,			            -- 공시 종료일
    CREDITLOAN_FIN_CO_SUBM_DAY DATE,			        -- 금융회사 제출일 [YYYYMMDDHH24MI]
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
--------------------------------------------------------------------------------
-- 지수님 금융용어
DROP TABLE FINANCIALTERM;
CREATE TABLE FINANCIALTERM(
fnceDictNm VARCHAR2(1000), --금융용어명
ksdFnceDictDescContent CLOB --용어설명
);

SELECT * FROM financialterm;

INSERT INTO financialterm (fnceDictNm, ksdFnceDictDescContent) VALUES
('직접청약(直接請約)', '유가증권예탁관련 실무용어로서 신주인수권이 배정된 실질주주가 발행회사에 대하여 그 주식을 인수할 것을 직접 신청하는 행위를 말한다.');

DELETE FROM financialterm;
commit;


------------------------------------------

-- 안예은 부동산 용어 파싱 테스트
DROP TABLE LANDTERM;
CREATE TABLE LANDTERM(

DIC_TITLE VARCHAR2(1000), --부동산용어명
DIC_CONTENT CLOB --용어설명
);

SELECT * FROM LANDTERM;

--INSERT INTO LANDTERM (DIC_TITLE, DIC_CONTENT) VALUES
--('부동산 용어', '840개 잘 들어갔니?');

-- DELETE FROM LANDTERM;
commit;

------------------------------------------------------------------------------------------------
--김지수 주식시세정보 파싱
DROP TABLE STOCKPRICE;  주식 시세 정보
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
INSERT INTO STOCKPRICE (basDt, srtnCd, isinCd, itmsNm, mrktCtg, clpr, vs, fltRt, mkp, hipr, lopr, trqu
, trPrc, lstgStCnt, mrktTotAmt) 
VALUES('20220907','900110','HK0000057197','이스트아시아홀딩스'
,'KOSDAQ', 184,-5,-2.65,190,190,183,831756,153893148,219932050,40467497200);

SELECT * FROM STOCKPRICE;

--코스피이면서 시가총액순으로 나열한것
SELECT * FROM STOCKPRICE WHERE MRKTCTG ='KOSPI' AND basDt ='20220907' ORDER BY mrktTotAmt DESC;

DELETE FROM STOCKPRICE;

commit;

