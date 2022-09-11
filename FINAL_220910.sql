/* 
-- ���� ����
CREATE USER FINAL
IDENTIFIED BY FINAL
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE temp;
-- ���� ����
GRANT CONNECT TO FINAL;
GRANT RESOURCE TO FINAL;
GRANT dba TO FINAL;
GRANT CREATE TABLE TO FINAL;
ALTER USER FINAL DEFAULT TABLESPACE USERS;
*/

-- ���⿹�� API

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
    FIXDEPO_TOP_FIN_GRP_NO NUMBER,              -- �ǿ��ڵ�
    FIXDEPO_DCLS_MONTH VARCHAR2(1000),          -- ���� ����� [YYYYMM]
    FIXDEPO_FIN_CO_NO NUMBER,	                -- ����ȸ�� �ڵ�
    FIXDEPO_KOR_CO_NM VARCHAR2(1000),		    -- ����ȸ���
    FIXDEPO_FIN_PRDT_CD VARCHAR2(1000),	        -- ������ǰ �ڵ�
    FIXDEPO_FIN_PRDT_NM VARCHAR2(1000),	        -- ���� ��ǰ��
    FIXDEPO_JOIN_WAY VARCHAR2(1000),		    -- ���� ���
    FIXDEPO_MTRT_INT VARCHAR2(1000),		    -- ���� �� ������
    FIXDEPO_SPCL_CND VARCHAR2(1000),		    -- �������
    FIXDEPO_JOIN_DENY NUMBER,		            -- �������� EX) 1:���Ѿ���, 2:��������, 3:�Ϻ�����
    FIXDEPO_JOIN_MEMBER VARCHAR2(1000),	        -- ���Դ��
    FIXDEPO_ETC_NOTE VARCHAR2(1000),		    -- ��Ÿ ���ǻ���
    FIXDEPO_MAX_LIMIT VARCHAR2(1000),		    -- �ְ��ѵ�
    FIXDEPO_DCLS_STRT_DAY VARCHAR2(1000),	    -- ���� ������ [YYYYMMDD]
    FIXDEPO_DCLS_END_DAY VARCHAR2(1000),	    -- ���� ������
    FIXDEPO_FIN_CO_SUBM_DAY VARCHAR2(1000),     -- ����ȸ�� ������ [YYYYMMDDHH24MI]
    FIXDEPO_INTR_RATE_TYPE VARCHAR2(10),	    -- ���� �ݸ� ����
    FIXDEPO_INTR_RATE_TYPE_NM VARCHAR2(100),    -- ���� �ݸ� ������
    FIXDEPO_SAVE_TRM NUMBER,		            -- ���� �Ⱓ [����: ����]
    FIXDEPO_INTR_RATE NUMBER,		            -- ���� �ݸ� [�Ҽ��� 2�ڸ�]
    FIXDEPO_INTR_RATE2 NUMBER		            -- �ְ� ���ݸ� [�Ҽ��� 2�ڸ�]
    );
    
DROP TABLE FIXDEPOSIT_OPTION;
CREATE TABLE FIXDEPOSIT_OPTION(
    FIXDEPOSIT_ID number, 
    INTR_RATE_TYPE VARCHAR2(10),
    INTR_RATE_TYPE_NM CLOB,
    SAVE_TRM number,
    INTR_RATE number,
    INTR_RATE2 number
);

commit;

/* ���⿹�� ������ Ȯ�� (Total 342�� : ���� - 49�� / ������������ - 0�� / �������� - 293�� / ���� - 0�� / �������� - 0��)
select count(*)
from fixdeposit
;

-- �ɼ� Ȯ��
select count(*)
from(
select fixdeposit_id
from fixdeposit_option
group by fixdeposit_id
order by fixdeposit_id
);
*/

-- ���� API
DROP TABLE INSTLSAVING;
CREATE TABLE INSTLSAVING (
    INSSVN_TOP_FIN_GRP_NO NUMBER,           -- �ǿ��ڵ�
    INSSVN_DCLS_MONTH DATE,			        -- ���� ����� [YYYYMM]
    INSSVN_FIN_CO_NO NUMBER PRIMARY KEY,	-- ����ȸ�� �ڵ�
    INSSVN_KOR_CO_NM VARCHAR2(1000),		-- ����ȸ�� ��
    INSSVN_FIN_PRDT_CD VARCHAR2(1000),		-- ������ǰ�ڵ�
    INSSVN_FIN_PRDT_NM VARCHAR2(1000),		-- ������ǰ��
    INSSVN_JOIN_WAY VARCHAR2(1000),			-- ���Թ��
    INSSVN_MTRT_INT VARCHAR2(1000),			-- ���� �� ������
    INSSVN_SPCL_CND VARCHAR2(1000),			-- �������
    INSSVN_JOIN_DENY NUMBER,			    -- �������� EX) 1:���Ѿ���, 2:��������, 3:�Ϻ�����
    INSSVN_JOIN_MEMBER VARCHAR2(1000),		-- ���Դ��
    INSSVN_ETC_NOTE VARCHAR2(1000),			-- ��Ÿ ���ǻ���
    INSSVN_MAX_LIMIT NUMBER,			    -- �ְ��ѵ�
    INSSVN_DCLS_STRT_DAY DATE,		        -- ���� ������
    INSSVN_DCLS_END_DAY DATE,		        -- ���� ������
    INSSVN_FIN_CO_SUBM_DAY DATE,		    -- ����ȸ�� ������ [YYYYMMDDHH24MI]
    INSSVN_INTR_RATE_TYPE VARCHAR2(10),		-- ���� �ݸ� ����
    INSSVN_INTR_RATE_TYPE_NM VARCHAR2(100),	-- ���� �ݸ� ������
    INSSVN_RSRV_TYPE VARCHAR2(10),			-- ���� ����
    INSSVN_RSRV_TYPE_NM VARCHAR2(1000),		-- ���� ������
    INSSVN_SAVE_TRM NUMBER,			        -- ���� �Ⱓ [����: ����]
    INSSVN_INTR_RATE NUMBER,			    -- ���� �ݸ� [�Ҽ��� 2�ڸ�]
    INSSVN_INTR_RATE2 NUMBER			    -- �ְ� ���ݸ� [�Ҽ��� 2�ڸ�]
);

-- �����ڱݴ��� API
DROP TABLE LEASELOAN;
CREATE TABLE LEASELOAN (
    LEASELOAN_TOP_FIN_GRP_NO NUMBER,            -- �ǿ��ڵ�
    LEASELOAN_DCLS_MONTH DATE,		            -- ���� ����� [YYYYMM]
    LEASELOAN_FIN_CO_NO NUMBER PRIMARY KEY,		-- ����ȸ�� �ڵ�
    LEASELOAN_KOR_CO_NM VARCHAR2(1000),			-- ����ȸ�� ��
    LEASELOAN_FIN_PRDT_CD VARCHAR2(1000), 		-- ������ǰ �ڵ�
    LEASELOAN_FIN_PRDT_NM VARCHAR2(1000),		-- ������ǰ��
    LEASELOAN_JOIN_WAY VARCHAR2(1000),			-- ���Թ��
    LEASELOAN_LOAN_INCI_EXPN VARCHAR2(1000),	-- ���� �δ���
    LEASELOAN_ERLY_RPAY_FEE VARCHAR2(1000),		-- �ߵ���ȯ ������
    LEASELOAN_DLY_RATE VARCHAR2(1000),	    	-- ��ü ������
    LEASELOAN_LOAN_LMT VARCHAR2(1000),			-- �����ѵ�
    LEASELOAN_DCLS_STRT_DAY DATE,		        -- ���� ������
    LEASELOAN_DCLS_END_DAY DATE,		        -- ���� ������
    LEASELOAN_FIN_CO_SUBM_DAY DATE,	            -- ����ȸ�� ������ [YYYYMMDDHH24MI]
    LEASELOAN_RPAY_TYPE VARCHAR2(10),			-- �����ȯ���� �ڵ�
    LEASELOAN_RPAY_TYPE_NM VARCHAR2(1000),		-- �����ȯ����
    LEASELOAN_LEND_RATE_TYPE VARCHAR2(10),	    -- ����ݸ����� �ڵ�
    LEASELOAN_LEND_RATE_TYPE_NM VARCHAR2(100),	-- ����ݸ�����
    LEASELOAN_LEND_RATE_MIN	NUMBER,	            -- ����ݸ�_���� [�Ҽ��� 2�ڸ�]
    LEASELOAN_LEND_RATE_MAX NUMBER,		        -- ����ݸ�_�ְ� [�Ҽ��� 2�ڸ�]
    LEASELOAN_LEND_RATE_AVG NUMBER		        -- ���� ��� ��ձݸ� [�Ҽ��� 2�ڸ�]
);

-- ���νſ���� API
DROP TABLE CREDITLOAN;
CREATE TABLE CREDITLOAN (
    CREDITLOAN_TOP_FIN_GRP_NO NUMBER,                   -- �ǿ��ڵ�
    CREDITLOAN_DCLS_MONTH DATE,				            -- ���� ����� [YYYYMM]
    CREDITLOAN_FIN_CO_NO NUMBER PRIMARY KEY,			-- ����ȸ���ڵ�
    CREDITLOAN_KOR_CO_NM VARCHAR2(1000),				-- ����ȸ�� ��
    CREDITLOAN_FIN_PRDT_CD VARCHAR2(1000),				-- ������ǰ�ڵ�
    CREDITLOAN_FIN_PRDT_NM VARCHAR2(1000),			    -- ������ǰ��
    CREDITLOAN_JOIN_WAY	VARCHAR2(1000),				    -- ���Թ��
    CREDITLOAN_CRDT_PRDT_TYPE NUMBER,			        -- �������� �ڵ�
    CREDITLOAN_CRDT_PRDT_TYPE_NM VARCHAR2(1000),		-- ����������
    CREDITLOAN_CB_NAME VARCHAR2(1000),					-- CB ȸ���
    CREDITLOAN_DCLS_STRT_DAY DATE,			            -- ���� ������
    CREDITLOAN_DCLS_END_DAY	DATE,			            -- ���� ������
    CREDITLOAN_FIN_CO_SUBM_DAY DATE,			        -- ����ȸ�� ������ [YYYYMMDDHH24MI]
    CREDITLOAN_CRDT_LEND_RATE_TYPE VARCHAR2(10),		-- �ݸ����� �ڵ�
    CREDITLOAN_CRDT_LEND_TYPE_NM VARCHAR2(1000),	    -- �ݸ�����
    CREDITLOAN_CRDT_GRAD_1	NUMBER,			            -- 900�� �ʰ� [�Ҽ��� 2�ڸ�]
    CREDITLOAN_CRDT_GRAD_4	NUMBER,			            -- 801~900�� [�Ҽ��� 2�ڸ�]
    CREDITLOAN_CRDT_GRAD_5	NUMBER,			            -- 701~800�� [�Ҽ��� 2�ڸ�]
    CREDITLOAN_CRDT_GRAD_6	NUMBER,			            -- 601~700�� [�Ҽ��� 2�ڸ�]
    CREDITLOAN_CRDT_GRAD_10	NUMBER,			            -- 501~600�� [�Ҽ��� 2�ڸ�]
    CREDITLOAN_CRDT_GRAD_11	NUMBER,			            -- 401~500�� [�Ҽ��� 2�ڸ�]
    CREDITLOAN_CRDT_GRAD_12	NUMBER,			            -- 301~400�� [�Ҽ��� 2�ڸ�]
    CREDITLOAN_CRDT_GRAD_13	NUMBER,			            -- 300�� ���� [�Ҽ��� 2�ڸ�]
    CREDITLOAN_CRDT_GRAD_AVG NUMBER			            -- ��� �ݸ� [�Ҽ��� 2�ڸ�]
);
--------------------------------------------------------------------------------
-- ������ ������� (1350��)
DROP TABLE FINANCIALTERM;
CREATE TABLE FINANCIALTERM(
fnceDictNm VARCHAR2(1000), --��������
ksdFnceDictDescContent CLOB --����
);

SELECT * FROM financialterm;

INSERT INTO financialterm (fnceDictNm, ksdFnceDictDescContent) VALUES
('����û��(�������)', '�������ǿ�Ź���� �ǹ����μ� �����μ����� ������ �������ְ� ����ȸ�翡 ���Ͽ� �� �ֽ��� �μ��� ���� ���� ��û�ϴ� ������ ���Ѵ�.');

DELETE FROM financialterm;
commit;


------------------------------------------

-- �ȿ��� �ε��� ��� �Ľ� �׽�Ʈ (840��)
DROP TABLE LANDTERM;
CREATE TABLE LANDTERM(

DIC_TITLE VARCHAR2(1000), --�ε������
DIC_CONTENT CLOB --����
);

SELECT * FROM LANDTERM;

--INSERT INTO LANDTERM (DIC_TITLE, DIC_CONTENT) VALUES
--('�ε��� ���', '840�� �� ����?');

-- DELETE FROM LANDTERM;
commit;
