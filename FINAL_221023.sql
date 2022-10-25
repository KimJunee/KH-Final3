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
-----------------------------------------------------------
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@ DDl / DML @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

--########## 사용자, 게시판, 댓글 ###########################################################
--########## 사용자
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
	USER_PASSWORD VARCHAR2(1000),   -- 비밀번호
	USER_EMAIL VARCHAR2(100),       -- E-Mail
	USER_STATUS	VARCHAR2(1) DEFAULT 'Y' CHECK(USER_STATUS IN('Y', 'N'))  -- 사용자상태
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

--########## 게시판
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
	BOARD_STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (BOARD_STATUS IN('Y', 'N'))  -- 게시글상태
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

--########## 댓글
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

--########## 뉴스, 오피니언 ################################################################
--########## 뉴스
DROP SEQUENCE SEQ_NEWS_NO;
CREATE SEQUENCE SEQ_NEWS_NO;

DROP TABLE NEWS;
CREATE TABLE NEWS (
        NEWS_NO NUMBER PRIMARY KEY,
        TITLE VARCHAR2(1000),
        LINK VARCHAR2(1000),
        PUBDATE VARCHAR2(1000),
        DESCRIPTION VARCHAR2(2000),
        IMAGE VARCHAR2(1000),
        CATEGORY VARCHAR2(1000)        
);

--########## 뉴스 댓글
DROP SEQUENCE SEQ_N_REPLY_NO;
CREATE SEQUENCE SEQ_N_REPLY_NO;

DROP TABLE NEWS_REPLY;
CREATE TABLE NEWS_REPLY (
	N_REPLY_NO NUMBER PRIMARY KEY,    -- 댓글번호
    N_WRITER_NO NUMBER,		          -- 글쓴이번호
    NEWS_NO NUMBER,                -- 게시글번호
	N_REPLY_CONTENT CLOB,           -- 내용
	N_REPLY_REGISTER DATE,             -- 등록날짜
    N_REPLY_MODIFY DATE               -- 수정날짜
);

-- #################오피니언##############################
DROP SEQUENCE SEQ_OPINIONNO;
CREATE SEQUENCE SEQ_OPINIONNO;
DROP TABLE OPINION;
CREATE TABLE OPINION(
    OPINIONNO NUMBER PRIMARY KEY,
    TITLE VARCHAR2(1000),
    LINK VARCHAR2(1000),
    IMAGEURL VARCHAR2(1000),
    COLUMNIST VARCHAR2(1000),
    CONTENT CLOB,
    PUBDATE DATE,
    HIT NUMBER DEFAULT 0 NOT NULL
);
/*
UPDATE OPINION SET COLUMNIST = '한기봉' WHERE OPINIONNO = 7;
UPDATE OPINION SET COLUMNIST = '정태남 이탈리아 건축사' WHERE OPINIONNO = 19;
UPDATE OPINION SET COLUMNIST = '김상균' WHERE OPINIONNO = 28;
UPDATE OPINION SET COLUMNIST = '김준' WHERE OPINIONNO = 29;
UPDATE OPINION SET COLUMNIST = '한기봉' WHERE OPINIONNO = 33;
UPDATE OPINION SET COLUMNIST = '김상균' WHERE OPINIONNO = 39;
UPDATE OPINION SET COLUMNIST = '정태남 이탈리아 건축사' WHERE OPINIONNO = 40;
UPDATE OPINION SET COLUMNIST = '한기봉' WHERE OPINIONNO = 42;
UPDATE OPINION SET COLUMNIST = '김상균' WHERE OPINIONNO = 44;
*/
--########## 오피니언 댓글
DROP SEQUENCE SEQ_O_REPLY_NO;
CREATE SEQUENCE SEQ_O_REPLY_NO;

DROP TABLE OPINION_REPLY;
CREATE TABLE OPINION_REPLY (
	O_REPLY_NO NUMBER PRIMARY KEY,    -- 댓글번호
    O_WRITER_NO NUMBER,		          -- 글쓴이번호
    OPINIONNO NUMBER,                -- 게시글번호
	O_REPLY_CONTENT CLOB,           -- 내용
	O_REPLY_REGISTER DATE,             -- 등록날짜
    O_REPLY_MODIFY DATE               -- 수정날짜
);

COMMENT ON TABLE CARDCUT_REPLY IS '댓글';
COMMENT ON COLUMN  CARDCUT_REPLY.C_REPLY_NO IS '댓글번호';
COMMENT ON COLUMN  CARDCUT_REPLY.C_USER_NO IS '사용자번호';
COMMENT ON COLUMN  CARDCUT_REPLY.C_BOARD_NO IS '게시글번호';
COMMENT ON COLUMN  CARDCUT_REPLY.C_REPLY_CONTENT IS '내용';
COMMENT ON COLUMN  CARDCUT_REPLY.C_REPLY_REGISTER IS '등록날짜';

--########## 금융상품 #####################################################################
--########## 주택담보대출
DROP TABLE MORTGAGELOAN;
CREATE TABLE MORTGAGELOAN (
	MORTGAGE_ID NUMBER, 
	MORTGAGE_DCLS_MONTH VARCHAR2(1000 BYTE), 
	MORTGAGE_FIN_CO_NO NUMBER, 
	MORTGAGE_KOR_CO_NM VARCHAR2(1000 BYTE), 
	MORTGAGE_FIN_PRDT_CD VARCHAR2(1000 BYTE), 
	MORTGAGE_FIN_PRDT_NM VARCHAR2(1000 BYTE), 
	MORTGAGE_JOIN_WAY VARCHAR2(1000 BYTE), 
	MORTGAGE_LOAN_INCI_EXPN VARCHAR2(1000 BYTE), 
	MORTGAGE_ERLY_RPAY_FEE VARCHAR2(1000 BYTE), 
	MORTGAGE_DLY_RATE VARCHAR2(1000 BYTE), 
	MORTGAGE_LOAN_LMT VARCHAR2(1000 BYTE), 
	MORTGAGE_DCLS_STRT_DAY VARCHAR2(1000 BYTE), 
	MORTGAGE_DCLS_END_DAY VARCHAR2(1000 BYTE), 
	MORTGAGE_FIN_CO_SUBM_DAY VARCHAR2(1000 BYTE), 
	FINTYPE VARCHAR2(10 BYTE) DEFAULT '3'
);

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

--########## 정기예금
DROP SEQUENCE SEQ_FIXDEPOSIT_NO;
CREATE SEQUENCE SEQ_FIXDEPOSIT_NO
  START WITH 1 INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 9999   
  CYCLE 
  NOCACHE;

DROP TABLE FIXDEPOSIT;
CREATE TABLE FIXDEPOSIT (	
	FIXDEPOSIT_ID NUMBER, 
	FIXDEPO_DCLS_MONTH VARCHAR2(1000 BYTE), 
	FIXDEPO_FIN_CO_NO NUMBER, 
	FIXDEPO_KOR_CO_NM VARCHAR2(1000 BYTE), 
	FIXDEPO_FIN_PRDT_CD VARCHAR2(1000 BYTE), 
	FIXDEPO_FIN_PRDT_NM VARCHAR2(1000 BYTE), 
	FIXDEPO_JOIN_WAY VARCHAR2(1000 BYTE), 
	FIXDEPO_MTRT_INT VARCHAR2(1000 BYTE), 
	FIXDEPO_SPCL_CND VARCHAR2(1000 BYTE), 
	FIXDEPO_JOIN_DENY NUMBER, 
	FIXDEPO_JOIN_MEMBER VARCHAR2(1000 BYTE), 
	FIXDEPO_ETC_NOTE VARCHAR2(1000 BYTE), 
	FIXDEPO_MAX_LIMIT VARCHAR2(1000 BYTE), 
	FIXDEPO_DCLS_STRT_DAY VARCHAR2(1000 BYTE), 
	FIXDEPO_DCLS_END_DAY VARCHAR2(1000 BYTE), 
	FIXDEPO_FIN_CO_SUBM_DAY VARCHAR2(1000 BYTE), 
	FINTYPE VARCHAR2(10 BYTE) DEFAULT '2' 
); 

DROP TABLE FIXDEPOSIT_OPTION;
CREATE TABLE FIXDEPOSIT_OPTION (
	FIXDEPOSIT_NO NUMBER, 
	FIXDEPOSIT_ID NUMBER, 
	INTR_RATE_TYPE VARCHAR2(10 BYTE), -- 저축 금리 유형
	INTR_RATE_TYPE_NM VARCHAR2(50 BYTE), -- 저축 금리 유형
	SAVE_TRM NUMBER, -- 저축 기간 [단위: 개월]
	INTR_RATE NUMBER, -- 저축 금리 [소수점 2자리]
	INTR_RATE2 NUMBER -- 최고 우대금리 [소수점 2자리]
);

--########## 적금
DROP SEQUENCE SEQ_INSSVN_NO;
CREATE SEQUENCE SEQ_INSSVN_NO
	START WITH 1 INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9999   
	CYCLE 
	NOCACHE;

DROP TABLE INSTLSAVING;
CREATE TABLE INSTLSAVING (	
	INSSVN_ID NUMBER, 
	INSSVN_DCLS_MONTH VARCHAR2(1000 BYTE), 
	INSSVN_FIN_CO_NO NUMBER, 
	INSSVN_KOR_CO_NM VARCHAR2(1000 BYTE), 
	INSSVN_FIN_PRDT_CD VARCHAR2(1000 BYTE), 
	INSSVN_FIN_PRDT_NM VARCHAR2(1000 BYTE), 
	INSSVN_JOIN_WAY VARCHAR2(1000 BYTE), 
	INSSVN_MTRT_INT VARCHAR2(1000 BYTE), 
	INSSVN_SPCL_CND VARCHAR2(1000 BYTE), 
	INSSVN_JOIN_DENY NUMBER, 
	INSSVN_JOIN_MEMBER VARCHAR2(1000 BYTE), 
	INSSVN_ETC_NOTE VARCHAR2(1000 BYTE), 
	INSSVN_MAX_LIMIT NUMBER, 
	INSSVN_DCLS_STRT_DAY VARCHAR2(1000 BYTE), 
	INSSVN_DCLS_END_DAY VARCHAR2(1000 BYTE), 
	INSSVN_FIN_CO_SUBM_DAY VARCHAR2(1000 BYTE), 
	FINTYPE VARCHAR2(10 BYTE) DEFAULT '1'
); 

DROP TABLE INSSVN_OPTION;
CREATE TABLE INSSVN_OPTION (
	INSSVN_NO NUMBER, 
	INSSVN_ID NUMBER, 
	INTR_RATE_TYPE VARCHAR2(10 BYTE), 
	INTR_RATE_TYPE_NM VARCHAR2(100 BYTE), 
	RSRV_TYPE VARCHAR2(10 BYTE), 
	RSRV_TYPE_NM VARCHAR2(1000 BYTE), 
	SAVE_TRM NUMBER, 
	INTR_RATE NUMBER, 
	INTR_RATE2 NUMBER
);

--########## 전세자금대출 API
DROP SEQUENCE SEQ_LEASELOAN_NO;
CREATE SEQUENCE SEQ_LEASELOAN_NO
	START WITH 1 INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9999   
	CYCLE 
	NOCACHE;

DROP TABLE LEASELOAN;
CREATE TABLE LEASELOAN (
	LEASELOAN_ID NUMBER, 
	LEASELOAN_DCLS_MONTH VARCHAR2(1000 BYTE), 
	LEASELOAN_FIN_CO_NO NUMBER, 
	LEASELOAN_KOR_CO_NM VARCHAR2(1000 BYTE), 
	LEASELOAN_FIN_PRDT_CD VARCHAR2(1000 BYTE), 
	LEASELOAN_FIN_PRDT_NM VARCHAR2(1000 BYTE), 
	LEASELOAN_JOIN_WAY VARCHAR2(1000 BYTE), 
	LEASELOAN_LOAN_INCI_EXPN VARCHAR2(1000 BYTE), 
	LEASELOAN_ERLY_RPAY_FEE VARCHAR2(1000 BYTE), 
	LEASELOAN_DLY_RATE VARCHAR2(1000 BYTE), 
	LEASELOAN_LOAN_LMT VARCHAR2(1000 BYTE), 
	LEASELOAN_DCLS_STRT_DAY VARCHAR2(1000 BYTE), 
	LEASELOAN_DCLS_END_DAY VARCHAR2(1000 BYTE), 
	LEASELOAN_FIN_CO_SUBM_DAY VARCHAR2(1000 BYTE), 
	FINTYPE VARCHAR2(10 BYTE) DEFAULT '4'
); 

DROP TABLE LEASELOAN_OPTION;
CREATE TABLE LEASELOAN_OPTION (
	LEASELOAN_NO NUMBER, 
	LEASELOAN_ID NUMBER, 
	LEASELOAN_RPAY_TYPE VARCHAR2(10 BYTE), 
	LEASELOAN_RPAY_TYPE_NM VARCHAR2(1000 BYTE), 
	LEASELOAN_LEND_RATE_TYPE VARCHAR2(10 BYTE), 
	LEASELOAN_LEND_RATE_TYPE_NM VARCHAR2(100 BYTE), 
	LEASELOAN_LEND_RATE_MIN NUMBER, 
	LEASELOAN_LEND_RATE_MAX NUMBER, 
	LEASELOAN_LEND_RATE_AVG NUMBER
); 

--########## 금융용어, 주식시세 #############################################################
--########## 금융용어
DROP TABLE FINANCIALTERM;
CREATE TABLE FINANCIALTERM(
	FNCEDICTNM VARCHAR2(1000), --금융용어명
	KSDFNCEDICTDESCCONTENT CLOB --용어설명
);
--INSERT INTO financialterm (fnceDictNm, ksdFnceDictDescContent) VALUES('직접청약(直接請約)', '유가증권예탁관련 실무용어로서 신주인수권이 배정된 실질주주가 발행회사에 대하여 그 주식을 인수할 것을 직접 신청하는 행위를 말한다.');

--########## 주식시세정보
DROP TABLE STOCKPRICE;  --주식 시세 정보
CREATE TABLE STOCKPRICE( --주식시세정보 테이블
	BASDT VARCHAR2(1000), -- 기준일자
	SRTNCD VARCHAR2(1000), -- 종목 코드보다 짧으면서 유일성이 보장되는 코드(6자리)
	ISINCD 	VARCHAR2(1000), -- 국제 채권 식별 번호. 유가증권(채권)의 국제인증 고유번호
	ITMSNM 	VARCHAR2(1000), -- 유가증권 국제인증 고유번호 코드 이름
	MRKTCTG VARCHAR2(1000), -- 주식의 시장 구분 (KOSPI/KOSDAQ/KONEX 중 1)
	CLPR NUMBER, -- 정규시장의 매매시간종료시까지 형성되는 최종가격
	VS NUMBER, -- 전일 대비 등락
	FLTRT NUMBER, -- 전일 대비 등락에 따른 비율
	MKP NUMBER, -- 정규시장의 매매시간개시후 형성되는 최초가격
	HIPR NUMBER, -- 하루 중 가격의 최고치
	LOPR NUMBER, -- 하루 중 가격의 최저치
	TRQU NUMBER, -- 체결수량의 누적 합계
	TRPRC NUMBER, -- 거래건 별 체결가격 * 체결수량의 누적 합계
	LSTGSTCNT NUMBER, -- 종목의 상장주식수
	MRKTTOTAMT NUMBER --종가 * 상장주식수
);

--INSERT INTO STOCKPRICE (basDt, srtnCd, isinCd, itmsNm, mrktCtg, clpr, vs, fltRt, mkp, hipr, lopr, trqu, trPrc, lstgStCnt, mrktTotAmt) 
--VALUES('20220907','900110','HK0000057197','이스트아시아홀딩스','KOSDAQ', 184,-5,-2.65,190,190,183,831756,153893148,219932050,40467497200);

--########## 환율정보
DROP TABLE EXCHANGERATE; -- 환율정보
CREATE TABLE EXCHANGERATE(
	DOLLAR NUMBER, --달러(원)
	YUAN NUMBER,   --위안(원)
	THEDATE VARCHAR2(1000) --일자(년월일)
);

--INSERT INTO EXCHANGERATE (DOLLAR, YUAN, THEDATE) VALUES(1157.20, 179.20, '2021-09-01');

--########## 지수시세
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

--########## 부동산청약 ###################################################################
--########## APT분양정보 상세 및 APT 분양정보 주택형별 상세
DROP TABLE APT_LTTOT_PBLANC_DETAIL CASCADE CONSTRAINTS;
CREATE TABLE APT_LTTOT_PBLANC_DETAIL (
	APT_APPLY_NO NUMBER PRIMARY KEY,
	HOUSE_MANAGE_NO	VARCHAR2(1000),
	BSNS_MBY_NM	VARCHAR2(1000),
	CNSTRCT_ENTRPS_NM	VARCHAR2(1000),
	CNTRCT_CNCLS_BGNDE	VARCHAR2(1000),
	CNTRCT_CNCLS_ENDDE	VARCHAR2(1000),
	GNRL_RNK1_CRSPAREA_RCEPT_PD	VARCHAR2(1000),
	GNRL_RNK1_ETC_AREA_RCPTDE_PD	VARCHAR2(1000),
	GNRL_RNK1_ETC_GG_RCPTDE_PD	VARCHAR2(1000),
	GNRL_RNK2_CRSPAREA_RCEPT_PD	VARCHAR2(1000),
	GNRL_RNK2_ETC_AREA_RCPTDE_PD	VARCHAR2(1000),
	GNRL_RNK2_ETC_GG_RCPTDE_PD	VARCHAR2(1000),
	HMPG_ADRES	VARCHAR2(1000),
	HOUSE_DTL_SECD	VARCHAR2(1000),
	HOUSE_DTL_SECD_NM	VARCHAR2(1000),
	HOUSE_NM 	VARCHAR2(1000),
	HOUSE_SECD	VARCHAR2(1000),
	HOUSE_SECD_NM	VARCHAR2(1000),
	HSSPLY_ADRES	VARCHAR2(1000),
	HSSPLY_ZIP 	VARCHAR2(1000),
	IMPRMN_BSNS_AT	VARCHAR2(1000),
	LRSCL_BLDLND_AT	VARCHAR2(1000),
	MDAT_TRGET_AREA_SECD	VARCHAR2(1000),
	MDHS_TELNO	VARCHAR2(1000),
	MVN_PREARNGE_YM	VARCHAR2(1000),
	NPLN_PRVOPR_PUBLIC_HOUSE_AT	VARCHAR2(1000),
	PARCPRC_ULS_AT	VARCHAR2(1000),
	PBLANC_NO	 VARCHAR2(1000),
	PRZWNER_PRESNATN_DE	VARCHAR2(1000),
	PUBLIC_HOUSE_EARTH_AT	VARCHAR2(1000),
	RCEPT_BGNDE	VARCHAR2(1000),
	RCEPT_ENDDE	VARCHAR2(1000),
	RCRIT_PBLANC_DE	VARCHAR2(1000),
	RENT_SECD	VARCHAR2(1000),
	RENT_SECD_NM	VARCHAR2(1000),
	SPECLT_RDN_EARTH_AT	VARCHAR2(1000),
	SPSPLY_RCEPT_BGNDE	VARCHAR2(1000),
	SPSPLY_RCEPT_ENDDE	VARCHAR2(1000),
	SUBSCRPT_AREA_CODE	VARCHAR2(1000),
	SUBSCRPT_AREA_CODE_NM	VARCHAR2(1000),
	TOT_SUPLY_HSHLDCO	VARCHAR2(1000)
);

DROP SEQUENCE APT_SQ_NO;
CREATE SEQUENCE APT_SQ_NO;

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

----########## 청약 공지사항 및 상세(첨부파일)
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

DROP TABLE APPLY_NOTICE_ATTACH CASCADE CONSTRAINTS;
CREATE TABLE APPLY_NOTICE_ATTACH (
	BBS_SN	VARCHAR2(1000),
	CCR_CNNT_SYS_DS_CD VARCHAR2(1000),
	CMN_AHFL_NM VARCHAR2(1000),
	AHFL_URL VARCHAR2(1000)
);
	
--########## %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%예은님

--########## 정치 ########################################################################
--########## 카드한컷
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

--########## 카드한컷_댓글작성
DROP SEQUENCE SEQ_C_REPLY_NO;
CREATE SEQUENCE SEQ_C_REPLY_NO;

DROP TABLE CARDCUT_REPLY;
CREATE TABLE CARDCUT_REPLY (
	C_REPLY_NO NUMBER PRIMARY KEY,    -- 댓글번호
    C_REPLY_CONTENT VARCHAR2(1000),   -- 내용
    C_CARDCUT_NO NUMBER,              -- 카드컷뉴스번호
    C_WRITER_NO VARCHAR2(200),        -- 댓글쓴이번호
    C_USER_NO NUMBER,		          -- 사용자번호
	C_REPLY_REGISTER DATE,            -- 등록날짜
    C_REPLY_MODIFY DATE               -- 수정날짜
);

COMMENT ON TABLE CARDCUT_REPLY IS '댓글';
COMMENT ON COLUMN  CARDCUT_REPLY.C_REPLY_NO IS '댓글번호';
COMMENT ON COLUMN  CARDCUT_REPLY.C_REPLY_CONTENT IS '내용';
COMMENT ON COLUMN  CARDCUT_REPLY.C_CARDCUT_NO IS '카드컷뉴스번호';
COMMENT ON COLUMN  CARDCUT_REPLY.C_WRITER_NO IS '댓글쓴이번호';
COMMENT ON COLUMN  CARDCUT_REPLY.C_USER_NO IS '사용자번호';
COMMENT ON COLUMN  CARDCUT_REPLY.C_REPLY_REGISTER IS '등록날짜';
COMMENT ON COLUMN  CARDCUT_REPLY.C_REPLY_MODIFY IS '수정날짜';
 

-- INSERT INTO CARDCUT_REPLY VALUES(SEQ_C_REPLY_NO.NEXTVAL, '소피도 한드아아아아앙', 1, 1, 1, SYSDATE, SYSDATE);
--SELECT * FROM CARDCUT_REPLY;


--########## 국회의원별 프로필 상세 내용(사진포함)

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

--########## 국회의원별 대표발의법안

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

COMMIT;

/*
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@ Query @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

--########## 사용자, 게시판, 댓글 ############################################################
--## 갯수
SELECT COUNT(*)
    FROM BOARD B
    JOIN USER_T U ON(B.WRITER_NO = U.USER_NO)
    WHERE B.BOARD_STATUS = 'Y'      
        AND B.BOARD_LIST_NO = 1
        AND U.USER_NO LIKE '%누구%'
        AND B.BOARD_TITLE LIKE '%1%'
        AND B.BOARD_CONTENT LIKE '%1%' 
    ORDER BY B.BOARD_NO DESC;

--## 카테고리별 게시판 목록
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
    AND B.BOARD_LIST_NO = 1
    AND B.BOARD_TITLE LIKE '%'||#{titleKeyword}||'%'
ORDER BY B.BOARD_NO DESC;

--## 메인 인기글
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
ORDER BY B.BOARD_NO DESC;

--## 사이드 커뮤니티 인기글 : 부동산메인 2개
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

--## 사이드 커뮤니티 인기글 : 국회의원현황 6개
SELECT ROWNUM, POLITICS.*
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
    
--## 사이드 커뮤니티 인기글 : 메인, 커뮤니티상세 6개
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

--## 게시글 보기
SELECT 
    B.BOARD_NO, B.BOARD_TITLE, B.WRITER_NO, U.USER_ID, U.USER_NICKNAME, U2.USER_NICKNAME AS R_USER_NICKNAME,
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
AND B.BOARD_NO = 1
ORDER BY R.REPLY_REGISTER DESC;

--## 게시글 등록
INSERT INTO BOARD (
    BOARD_NO, 
    WRITER_NO, 
    BOARD_LIST_NO, 
    BOARD_HIT, 
    BOARD_TITLE, 
    BOARD_CONTENT, 
    BOARD_REGISTER, 
    BOARD_MODIFY, 
    BOARD_ORIGINALFILENAME, 
    BOARD_RENAMEDFILENAME, 
    BOARD_STATUS
) VALUES (
    SEQ_BOARD_NO.NEXTVAL, 
    1, 
    1, 
    0, 
    '야호', 
    '만세', 
    SYSDATE, 
    SYSDATE, 
    NVL('01.jpg',''), 
    NVL('01어쩌구.jpg',''), 
    DEFAULT
);
-- SELECT SEQ_BOARD_NO.CURRVAL FROM DUAL;

--## 조회수 증가
UPDATE BOARD 
SET BOARD_HIT = 10
WHERE BOARD_NO = 1;

--## 게시글 수정
UPDATE BOARD 
SET BOARD_TITLE = '하잉', 
    BOARD_CONTENT = '빠잉', 
    BOARD_LIST_NO = 2, 
    BOARD_ORIGINALFILENAME = '03.jpg', 
    BOARD_RENAMEDFILENAME = '03어쩌구.jpg',
    BOARD_MODIFY = SYSDATE
WHERE BOARD_NO = 1;

--## 게시글 삭제
UPDATE BOARD 
SET STATUS='N' 
WHERE BOARD_NO = 2;

--## 댓글 등록
INSERT INTO REPLY 
    (REPLY_NO,REPLY_CONTENT,WRITER_NO,BOARD_NO,REPLY_REGISTER,REPLY_MODIFY)
        VALUES(
            SEQ_REPLY_NO.NEXTVAL, '하잉하잉', 2, 1, SYSDATE, SYSDATE);

--## 댓글 삭제
DELETE REPLY WHERE BOARD_NO = 1;

--########## 금융용어, 주식시세 ##############################################################
--코스피이면서 시가총액순으로 나열한것
SELECT * FROM STOCKPRICE WHERE MRKTCTG ='KOSPI' AND basDt ='20220907' ORDER BY mrktTotAmt DESC;

-- 적금 데이터 확인 (Total 300건 : 은행 - 64건 / 여신전문금융 - 0건 / 저축은행 - 236건 / 보험 - 0건 / 금융투자 - 0건)
SELECT COUNT(*)FROM INSTLSAVING;
-- 적금 옵션 확인
SELECT COUNT(*)
FROM(
	SELECT INSSVN_ID
	FROM INSSVN_OPTION
	GROUP BY INSSVN_ID
	ORDER BY INSSVN_ID
);

-- 전세자금대출 데이터 확인 (Total 47건 : 은행 - 32건 / 여신전문금융 - 0건 / 저축은행 - 6건 / 보험 - 9건 / 금융투자 - 0건)
SELECT COUNT(*) FROM LEASELOAN;

-- 옵션 확인
SELECT COUNT(*)
FROM(
	SELECT LEASELOAN_ID
	FROM LEASELOAN_OPTION
	GROUP BY LEASELOAN_ID
	ORDER BY LEASELOAN_ID
);

-- 개인신용대출 데이터 확인 (Total 119건 : 은행 - 45건 / 여신전문금융 - 31건 / 저축은행 - 34건 / 보험 - 9건 / 금융투자 - 0건)
SELECT COUNT(*) FROM CREDITLOAN;

-- 옵션 확인 (은행 4건, 보험 1건 옵션 없음 - 114건이 정상)
SELECT COUNT(*)
FROM(
	SELECT CREDITLOAN_ID
	FROM CREDITLOAN_OPTION
	GROUP BY CREDITLOAN_ID
	ORDER BY CREDITLOAN_ID
);

--########## 정치 #########################################################################
-- 모든 국회의원 검색
SELECT * FROM MNA_PROFILE;

-- 개별 국회의원 검색 
-- select * from MNA_PROFILE where HG_NM = '배현진' ;

-- 1번째 국회의원 검색
SELECT MNA_PROFILE_NO, HG_NM, UNITS, SEX_GBN_NM, HJ_NM, ENG_NM, BTH_DATE, 
POLY_NM, ORIG_NM, ELECT_GBN_NM, CMITS, REELE_GBN_NM, TEL_NO, E_MAIL, 
HOMEPAGE, STAFF, SECRETARY, SECRETARY2, ASSEM_ADDR, MEM_TITLE, 
JPGLINK FROM MNA_PROFILE WHERE  MNA_PROFILE_NO = 1;

-- 대표발의법안 전체 검색
SELECT * FROM MNA_LEGISLATION;

*/