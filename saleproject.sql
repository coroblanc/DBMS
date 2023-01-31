-- 

CREATE TABLE IMFODEPT(
    DEPTNO  NUMBER(14) CONSTRAINT PK_DEPT PRIMARY KEY,       -- 부서코드
    DEPT VARCHAR2(14),                                       -- 부서명
    YEARSALE NUMBER(30),                                     -- 부서별 총 연봉
    MONTHSALE NUMBER(30)                                     -- 부서별 총 월급
);

CREATE TABLE IMFOEMP(
    MNUM NUMBER(10) CONSTRAINT PK_IMFOEMP PRIMARY KEY,       -- 사원번호
    MNAME VARCHAR2(10),                                      -- 이름
    DEPTNO NUMBER(14) CONSTRAINT FK_DEPTNO REFERENCES IMFODEPT , -- 부서코드
    JOB VARCHAR2(9),                                         -- 직책
    REGDATE DATE,                                            -- 입사날짜
    SAL NUMBER(30),                                         -- 연봉
    COMM NUMBER(30)                                         -- 월급
);


SELECT mnum, mname, deptno from IMFOEMP where deptno = 1000 or deptno = 2000
order by 1;

SELECT e.mnum, e.mname, e.deptno, d.deptno, d.dept -- 중복이 생기게 됨.

    FROM IMFOEMP e, imfodept d
    WHERE e.deptno = 1000
    or e.deptno = 2000
    AND e.deptno = d.deptno
    order by e.deptno, d.deptno;

SELECT e.mnum, e.mname, e.deptno, d.deptno, d.dept
    FROM IMFOEMP e, imfodept d
    WHERE (e.deptno = 1000 OR e.deptno = 2000) -- 부서가 10이거나 20인 사원 선택        
    AND e.deptno = d.deptno     -- 사원과 부서 결합
    ORDER BY d.deptno;  
    
DROP TABLE IMFOEMP;
DROP TABLE IMFODEPT;
SELECT * FROM IMFODEPT ORDER BY DEPTNO ASC;
SELECT * FROM IMFOEMP ORDER BY MNUM ASC;
DELETE FROM IMFODEPT WHERE DEPTNO = 1000;

INSERT INTO IMFODEPT VALUES(1000, '총무부서', '396000000', '33000000'); 
INSERT INTO IMFODEPT VALUES(2000, '인사부서', '264000000', '22000000'); 
INSERT INTO IMFODEPT VALUES(3000, '기획부서', '312000000', '26000000'); 
INSERT INTO IMFODEPT VALUES(4000, '영업부서', '254400000', '21200000'); 

DELETE FROM IMFOEMP WHERE DEPTNO = 3000;
UPDATE IMFOEMP SET JOB='주임' WHERE  MNUM = 3004;
UPDATE IMFOEMP SET MNAME='방주임' WHERE  MNUM = 3004;


INSERT INTO IMFOEMP VALUES(1001, '홍길동', 1000, '부장',
    '2012.03.23', '120000000', '10000000'); 
INSERT INTO IMFOEMP VALUES(1002, '김과장', 1000, '과장',
    '2015.07.24', '96000000', '8000000'); 
INSERT INTO IMFOEMP VALUES(1003, '이대리', 1000, '대리',
    '2017.04.13', '72000000', '6000000'); 
INSERT INTO IMFOEMP VALUES(1004, '박주임', 1000, '주임',
    '2019.07.21', '60000000', '5000000'); 
INSERT INTO IMFOEMP VALUES(1005, '김사원', 1000, '사원',
    '2020.01.20', '48000000', '4000000'); 
    
INSERT INTO IMFOEMP VALUES(2001, '최부장', 2000, '부장',
    '2013.07.06', '90000000', '7500000'); 
INSERT INTO IMFOEMP VALUES(2002, '이과장', 2000, '과장',
    '2016.02.11', '64800000', '5400000'); 
INSERT INTO IMFOEMP VALUES(2003, '김대리', 2000, '대리',
    '2019.12.13', '45600000', '3800000'); 
INSERT INTO IMFOEMP VALUES(2004, '한사원', 2000, '사원',
    '2020.10.21', '33600000', '2800000'); 
INSERT INTO IMFOEMP VALUES(2005, '박사원', 2000, '사원',
    '2021.06.20', '30000000', '2500000'); 
    
INSERT INTO IMFOEMP VALUES(3001, '이부장', 3000, '부장',
    '2012.08.13', '99600000', '8300000'); 
INSERT INTO IMFOEMP VALUES(3002, '최과장', 3000, '과장',
    '2015.09.01', '61200000', '5100000'); 
INSERT INTO IMFOEMP VALUES(3003, '박대리', 3000, '대리',
    '2018.02.13', '50400000', '4200000'); 
INSERT INTO IMFOEMP VALUES(3004, '방주임', 3000, '주임',
    '2019.04.11', '39600000', '3300000'); 
INSERT INTO IMFOEMP VALUES(3005, '금사원', 3000, '사원',
    '2020.03.02', '32400000', '2700000'); 
INSERT INTO IMFOEMP VALUES(3006, '유사원', 3000, '사원',
    '2022.07.20', '28800000', '2400000'); 
    
INSERT INTO IMFOEMP VALUES(4001, '김부장', 4000, '부장',
    '2015.07.21', '102000000', '8500000'); 
INSERT INTO IMFOEMP VALUES(4002, '이과장', 4000, '과장',
    '2018.11.16', '68400000', '5700000'); 
INSERT INTO IMFOEMP VALUES(4003, '한대리', 4000, '대리',
    '2019.01.13', '49200000', '4100000'); 
INSERT INTO IMFOEMP VALUES(4004, '홍사원', 4000, '사원',
    '2021.08.09', '34800000', '2900000'); 



