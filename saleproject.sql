-- 

CREATE TABLE IMFODEPT(
    DEPTNO  NUMBER(14) CONSTRAINT PK_DEPT PRIMARY KEY,       -- 부서코드
    DEPT VARCHAR2(14),                                       -- 부서명
    LOC VARCHAR2(13),                                        -- 부서위치
    YEARSALE NUMBER(10),                                     -- 부서별 연 수입
    MONTHSALE NUMBER(10)                                    -- 부서별 월 수입
);

CREATE TABLE IMFOEMP(
    MNUM NUMBER(10) CONSTRAINT PK_IMFOEMP PRIMARY KEY,       -- 사원번호
    MNAME VARCHAR2(50),                                      -- 이름
    DEPTNO NUMBER(14) CONSTRAINT FK_DEPTNO REFERENCES DEPT , -- 부서코드
    DEPT VARCHAR2(14),                                       -- 부서명
    JOB VARCHAR2(9),                                         -- 직책
    REGDATE DATE,                                            -- 입사날짜
    SAL NUMBER(7,2),                                         -- 급여
    COMM NUMBER(7,2)                                         -- 성과급
);

    
DROP TABLE PROJECT;
DROP TABLE project;
DROP TABLE IMFODEPT;