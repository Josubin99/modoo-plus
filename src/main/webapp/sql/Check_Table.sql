-- 테이블확인
show TABLES;

-- 테이블삭제(순서지키기)
DROP TABLE ORDERDETAIL;
DROP TABLE MORDER;
DROP TABLE ADDRESS;
DROP TABLE DIB;
DROP TABLE PRODUCT;
DROP TABLE CATEGORY;

drop table COMMENT;
drop table SUE;
drop table APPLICANT;
drop table SUECATEGORY;
drop table BOARD;
DROP TABLE MEMBER;
/*drop table NOTICE;*/
/*DROP TABLE NOTICECATEGORY;*/

-- 정보조회
select * from MEMBER;
select * from DIB;
select * from PRODUCT;
select * from ADDRESS;
select * from CATEGORY;
select * from MORDER;
select * from ORDERDETAIL;

select * from suecategory;
select * from comment;
select * from sue;
select * from board;
select * from applicant;

select * from BOARD;
/*--관리자*/

INSERT INTO MEMBER
(MNUM, MID, MPW, MNAME, MEMAIL)
VALUES(-1, 'admin', 'abc123123123', '관리자', 'modoo.shop.3@gmail.com');

-- MEMBER 샘플 데이터
INSERT INTO MEMBER
(MNUM,MID,MPW,MNAME,MEMAIL,MTEL,MPOINT,ZIPCODE,USERADDR,DETAILADDR,MDATE,KAKAO)
VALUES (1,'polodltjdgns','abc123123123','이성훈','polodltjdgns@naver.com','01026119577',2000,'01094','서울 강북구 인수봉로52길 42-3','1층',SYSDATE(),'일반');

INSERT INTO MEMBER
(MNUM,MID,MPW,MNAME,MEMAIL,MTEL,MPOINT,ZIPCODE,USERADDR,DETAILADDR,MDATE,KAKAO)
VALUES (2,'hong','abc123123123','홍길동','hong1234@naver.com','01012341234',2000,'01094','서울 강북구 인수봉로52길 42-3','1층','2023-02-19','일반');

INSERT INTO MEMBER
(MNUM,MID,MPW,MNAME,MEMAIL,MTEL,MPOINT,ZIPCODE,USERADDR,DETAILADDR,MDATE,KAKAO)
VALUES (3,'timo','abc123123123','김티모','timo1234@naver.com','01012345678',2000,'01094','서울 강북구 인수봉로52길 42-3','1층',SYSDATE(),'일반');

INSERT INTO MEMBER
(MNUM,MID,MPW,MNAME,MEMAIL,MTEL,MPOINT,ZIPCODE,USERADDR,DETAILADDR,MDATE,KAKAO)
VALUES (4,'amomo','abc123123123','아무무','timo1@naver.com','01012345678',2000,'01094','서울 강북구 인수봉로52길 42-3','1층',SYSDATE(),'일반');

INSERT INTO MEMBER
(MNUM,MID,MPW,MNAME,MEMAIL,MTEL,MPOINT,ZIPCODE,USERADDR,DETAILADDR,MDATE,KAKAO)
VALUES (5,'ari','abc123123123','아리','timo12@naver.com','01012345678',2000,'01094','서울 강북구 인수봉로52길 42-3','1층',SYSDATE(),'일반');

INSERT INTO MEMBER
(MNUM,MID,MPW,MNAME,MEMAIL,MTEL,MPOINT,ZIPCODE,USERADDR,DETAILADDR,MDATE,KAKAO)
VALUES (6,'park','abc123123123','박씨','timo123@naver.com','01012345678',2000,'01094','서울 강북구 인수봉로52길 42-3','1층',SYSDATE(),'일반');

INSERT INTO MEMBER
(MNUM,MID,MPW,MNAME,MEMAIL,MTEL,MPOINT,ZIPCODE,USERADDR,DETAILADDR,MDATE,KAKAO)
VALUES (7,'lee','abc123123123','이씨','timo12345@naver.com','01012345678',2000,'01094','서울 강북구 인수봉로52길 42-3','1층',SYSDATE(),'일반');

INSERT INTO MEMBER
(MNUM,MID,MPW,MNAME,MEMAIL,MTEL,MPOINT,ZIPCODE,USERADDR,DETAILADDR,MDATE,KAKAO)
VALUES (8,'kim','abc123123123','김씨','timo126@naver.com','01012345678',2000,'01094','서울 강북구 인수봉로52길 42-3','1층',SYSDATE(),'일반');

/* 카테고리 데이터 */
INSERT INTO CATEGORY (CATENUM,CATEL) VALUES(100,'연령별');
INSERT INTO CATEGORY (CATENUM,CATEL,CATEM) VALUES(101,'연령별','4세 미만');
INSERT INTO CATEGORY (CATENUM,CATEL,CATEM) VALUES(102,'연령별','미취학 아동');
INSERT INTO CATEGORY (CATENUM,CATEL,CATEM) VALUES(103,'연령별','초등학교 저학년');
INSERT INTO CATEGORY (CATENUM,CATEL,CATEM) VALUES(104,'연령별','초등학교 고학년');
INSERT INTO CATEGORY (CATENUM,CATEL,CATEM) VALUES(105,'연령별','14세 이상');
INSERT INTO CATEGORY (CATENUM,CATEL) VALUES(200,'1인 추천');
INSERT INTO CATEGORY (CATENUM,CATEL) VALUES(300,'전략');
INSERT INTO CATEGORY (CATENUM,CATEL) VALUES(400,'두뇌');
INSERT INTO CATEGORY (CATENUM,CATEL,CATEM) VALUES(401,'두뇌','퍼즐게임');
INSERT INTO CATEGORY (CATENUM,CATEL,CATEM) VALUES(402,'두뇌','창의수학');
INSERT INTO CATEGORY (CATENUM,CATEL,CATEM) VALUES(403,'두뇌','코딩게임');
INSERT INTO CATEGORY (CATENUM,CATEL,CATEM) VALUES(404,'두뇌','방탈출/추리');
INSERT INTO CATEGORY (CATENUM,CATEL,CATEM) VALUES(405,'두뇌','기억력게임');
INSERT INTO CATEGORY (CATENUM,CATEL) VALUES(500,'파티게임');
INSERT INTO CATEGORY (CATENUM,CATEL,CATEM) VALUES(501,'파티게임','복불복');
INSERT INTO CATEGORY (CATENUM,CATEL) VALUES(600,'카드게임');
INSERT INTO CATEGORY (CATENUM,CATEL) VALUES(700,'사회/과학');
INSERT INTO CATEGORY (CATENUM,CATEL) VALUES(800,'언어/정서');
INSERT INTO CATEGORY (CATENUM,CATEL,CATEM) VALUES(801,'언어/정서','언어쑥쑥');
INSERT INTO CATEGORY (CATENUM,CATEL,CATEM) VALUES(802,'언어/정서','스토리텔링 (감정/대화)');
INSERT INTO CATEGORY (CATENUM,CATEL,CATEM) VALUES(803,'언어/정서','학지사 상담교구');
INSERT INTO CATEGORY (CATENUM,CATEL) VALUES(900,'악세사리');
INSERT INTO CATEGORY (CATENUM,CATEL) VALUES(1000,'New');
INSERT INTO CATEGORY (CATENUM,CATEL) VALUES(1100,'Best');

/*테스트 데이터*/
INSERT INTO MEMBER VALUES(1,'abc','abc','abc','abc','abc',0,'abc','abc','abc',SYSDATE,NULL); 
INSERT INTO MEMBER VALUES(2,'bbb','bbb','bbb','bbb','bbb',0,'bbb','bbb','bbb',SYSDATE,NULL); 

INSERT INTO DIB VALUES(1,2,1,50);
INSERT INTO DIB VALUES(2,3,1,50);
INSERT INTO DIB VALUES(3,4,2,50);
INSERT INTO DIB VALUES(4,5,2,50);

INSERT INTO ADDRESS VALUES(1,1,'AA','AA','AA','AA','AA','AA',0);
INSERT INTO ADDRESS VALUES(2,1,'NN','NN','NN','NN','','MM',0);
INSERT INTO ADDRESS VALUES(3,2,'AA','AA','AA','AA','AA','AA',0);
INSERT INTO ADDRESS VALUES(4,2,'NN','NN','NN','NN','','MM',0);

INSERT INTO MORDER VALUES(1,1,'1','1','1','1','1',SYSDATE,1,0);
INSERT INTO MORDER VALUES(2,1,'1','1','1','1','1',SYSDATE,3,500);
INSERT INTO MORDER VALUES(3,1,'1','1','1','1','1',SYSDATE,4,2000);
INSERT INTO MORDER VALUES(4,2,'1','1','1','1','1',SYSDATE,1,100);
INSERT INTO MORDER VALUES(5,2,'1','1','1','1','1',SYSDATE,4,20);
INSERT INTO MORDER VALUES(6,2,'1','1','1','1','1',SYSDATE,4,15);

INSERT INTO ORDERDETAIL VALUES(1,1,2,4);
INSERT INTO ORDERDETAIL VALUES(2,1,3,3);
INSERT INTO ORDERDETAIL VALUES(3,2,3,5);
INSERT INTO ORDERDETAIL VALUES(4,2,5,7);
INSERT INTO ORDERDETAIL VALUES(5,3,2,2);
INSERT INTO ORDERDETAIL VALUES(6,3,2,1);
INSERT INTO ORDERDETAIL VALUES(7,4,3,5);
INSERT INTO ORDERDETAIL VALUES(9,5,2,7);
INSERT INTO ORDERDETAIL VALUES(10,5,3,10);
INSERT INTO ORDERDETAIL VALUES(11,6,2,1);

-- ADDRESS 샘플 데이터
INSERT INTO ADDRESS (ANUM, MNUM, SHIPNAME, DESTINATION, ZIPCODE, USERADDR, DETAILADDR, TEL, ISDEFAULT) VALUES(4, 1, '이성훈', '집', '01094', '서울 강북구 인수봉로52길 42-3', '1층', '01012341234', '1');
INSERT INTO ADDRESS (ANUM, MNUM, SHIPNAME, DESTINATION, ZIPCODE, USERADDR, DETAILADDR, TEL, ISDEFAULT) VALUES(10, 1, '이성훈', '집2', '63503', '제주특별자치도 서귀포시 대정읍 대한로 632', '집', '01012341234', '0');
INSERT INTO ADDRESS (ANUM, MNUM, SHIPNAME, DESTINATION, ZIPCODE, USERADDR, DETAILADDR, TEL, ISDEFAULT) VALUES(11, 1, '김효경', '학원', '06236', '서울 강남구 테헤란로 146', '3층 코리아IT학원 강남점', '01012341234', '0');

-- PRODUCT 샘플 데이터
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(701, 402, '쿼리도 2020 최신판', 55000, 10000, TIMESTAMP '2022-07-14 00:00:00.000000', '2,4명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/11/47/1000005893/modify_detail_041.jpg', 'http://gi.esmplus.com/pscominc/product/11079/11079body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(703, 401, '원통 젠가 (젠가 실린더)', 32800, 25800, TIMESTAMP '2022-04-19 00:00:00.000000', '1명 이상', 6, '생각투자', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/15/04/16/1000000763/modify_detail_074.jpg', 'http://gi.esmplus.com/pscominc/product/10876/10876body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(705, 802, '젬블로', 39000, 27300, TIMESTAMP '2022-12-18 00:00:00.000000', '1~6명', 6, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/15/04/16/1000002008/modify_detail_039.jpg', 'https://gi.esmplus.com/pstoys/product/5015/5015body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(706, 300, '탑탑 블럭', 18000, 11850, TIMESTAMP '2022-08-03 00:00:00.000000', '1명 이상', 6, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/12/49/1000005944/1000005944_detail_063.jpg', 'http://gi.esmplus.com/pscominc/product/10197/10197body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(709, 200, '러시아워', 32000, 22000, TIMESTAMP '2022-03-07 00:00:00.000000', '1명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/15/04/16/1000000539/modify_detail_035.jpg', 'http://gi.esmplus.com/pstoys/product/14/14body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(710, 405, '아발론 클래식(수학적사고력)', 40000, 26300, TIMESTAMP '2022-09-30 00:00:00.000000', '2명', 7, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/18/04/14/1000006101/1000006101_detail_025.jpg', 'http://gi.esmplus.com/pscominc/product/10354/10354body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(711, 405, '보드게임 주사위 트레이', 4500, 3040, TIMESTAMP '2022-05-24 00:00:00.000000', '1~6명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/19/11/48//1000006998/register_detail_036.jpg', 'http://gi.esmplus.com/pscominc/product/10826/10826body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(712, 200, '(특가) 러시아워(수학적사고력)', 32000, 21120, TIMESTAMP '2022-06-03 00:00:00.000000', '1명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/11/47/1000005826/modify_detail_024.jpg', 'http://gi.esmplus.com/pstoys/product/14/14body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(713, 404, '카르카손 (타일놓기게임 Best)', 33000, 22900, TIMESTAMP '2022-10-15 00:00:00.000000', '2~5명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/11/47/1000005882/1000005882_detail_062.jpg', 'http://gi.esmplus.com/pstoys/product/16/16body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(714, 803, '팬데믹 (협력게임)', 66000, 43560, TIMESTAMP '2022-10-01 00:00:00.000000', '2~4명', 10, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/11/47/1000005797/1000005797_detail_038.jpg', 'http://gi.esmplus.com/pstoys/product/829/829body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(715, 501, '(특가) 로스트 시티-한글판', 25000, 16600, TIMESTAMP '2022-12-18 00:00:00.000000', '2명', 10, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/11/47/1000005762/1000005762_detail_037.jpg', 'http://gi.esmplus.com/pstoys/product/873/873body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(716, 501, '(특가) 폴드잇', 30000, 22000, TIMESTAMP '2023-01-21 00:00:00.000000', '1~5명', 7, '행복한바오밥', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/16/11/47/1000004977/1000004977_detail_089.jpg', 'http://gi.esmplus.com/pstoys/product/3116/3116body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(717, 501, '(특가) 밸런스 빈즈 (균형잡기 논리 퍼즐)', 29000, 11960, TIMESTAMP '2022-07-27 00:00:00.000000', '1명 이상', 5, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/11/47/1000005716/1000005716_detail_036.jpg', 'http://gi.esmplus.com/pstoys/product/923/923body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(718, 802, '(특가) 스트림스new', 25000, 19000, TIMESTAMP '2022-09-24 00:00:00.000000', '1~200명', 7, '행복한바오밥', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/15/04/16/1000004272/modify_detail_096.jpg', 'http://gi.esmplus.com/pstoys/product/3064/3064body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(719, 200, '러시아워 주니어', 30000, 20760, TIMESTAMP '2022-09-18 00:00:00.000000', '1명', 6, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/15/04/16/1000000540/modify_detail_058.jpg', 'https://gi.esmplus.com/pstoys/product/39/39body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(720, 401, '(특가) 체스 앤 체커', 19000, 12500, TIMESTAMP '2022-02-26 00:00:00.000000', '2명', 6, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/11/47/1000005878/1000005878_detail_026.jpg', 'http://gi.esmplus.com/pstoys/product/345/345body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(721, 404, '사그라다 보드게임', 55000, 34020, TIMESTAMP '2022-12-04 00:00:00.000000', '1-4명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/18/11/45//1000006307/register_detail_060.jpg', 'http://gi.esmplus.com/pscominc/product/10407/10407body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(722, 802, '킹도미노', 35000, 23400, TIMESTAMP '2022-11-21 00:00:00.000000', '2~4명', 7, '행복한바오밥', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/16/11/47/1000004979/modify_detail_056.jpg', 'http://gi.esmplus.com/pstoys/product/3115/3115body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(723, 600, 'KBS 도전 골든벨 OX퀴즈게임', 46000, 30800, TIMESTAMP '2022-02-17 00:00:00.000000', '1~5명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/04/15/1000005137/1000005137_detail_025.jpg', 'http://gi.esmplus.com/pstoys/product/927/927body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(724, 802, '젬블로 디럭스', 55000, 40000, TIMESTAMP '2022-05-31 00:00:00.000000', '1~6명', 6, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/15/04/16/1000002009/modify_detail_057.jpg', 'http://gi.esmplus.com/pstoys/product/5016/5016body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(725, 402, '(특가) 뉴 다이아몬드게임', 15000, 10800, TIMESTAMP '2022-02-18 00:00:00.000000', '2~3명', 5, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/11/47/1000005679/1000005679_detail_040.jpg', 'http://gi.esmplus.com/pscominc/product/10168/10168body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(726, 200, '(특가) 러시아워 주니어(수학적사고력)', 30000, 19800, TIMESTAMP '2022-09-08 00:00:00.000000', '1명', 6, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/11/47/1000005828/modify_detail_038.jpg', 'http://gi.esmplus.com/pstoys/product/39/39body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(727, 802, '루빅스 레이스', 30000, 19800, TIMESTAMP '2022-07-27 00:00:00.000000', '2명', 7, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/20/02/06//1000007049/register_detail_030.jpg', 'http://gi.esmplus.com/pscominc/product/10864/10864body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(728, 402, '퀵소(수학적사고력)', 50000, 32400, TIMESTAMP '2023-02-01 00:00:00.000000', '2,4명', 6, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/14/11/46/1000001687/modify_detail_062.jpg', 'http://gi.esmplus.com/pstoys/product/703/703body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(729, 300, '우봉고 미니', 12000, 10500, TIMESTAMP '2022-06-10 00:00:00.000000', '1-4명', 7, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/18/11/46//1000006314/register_detail_062.jpg', 'http://gi.esmplus.com/pscominc/product/10497/10497body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(730, 803, '카르카손', 33000, 23200, TIMESTAMP '2022-04-28 00:00:00.000000', '2~5명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/14/11/46/1000000030/modify_detail_066.jpg', 'http://gi.esmplus.com/pstoys/product/16/16body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(731, 802, '테트리스 듀얼', 33000, 21800, TIMESTAMP '2022-07-08 00:00:00.000000', '2~8명', 4, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/18/12/50//1000006474/modify_detail_07.jpg', 'http://gi.esmplus.com/pscominc/product/10527/10527body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(732, 200, '(특가) 러시아워 딜럭스(수학적사고력)', 37000, 24420, TIMESTAMP '2022-10-24 00:00:00.000000', '1명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/11/47/1000005827/modify_detail_021.jpg', 'http://gi.esmplus.com/pstoys/product/12/12body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(733, 300, '스티키 스틱스', 33000, 24050, TIMESTAMP '2022-03-19 00:00:00.000000', '1~4명', 6, '행복한바오밥', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/14/11/45/1000003608/modify_detail_015.jpg', 'http://gi.esmplus.com/pstoys/product/3024/3024body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(734, 802, '(무료배송) 파이프 워크', 48000, 32300, TIMESTAMP '2022-03-13 00:00:00.000000', '1~4명', 6, '젬블로', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/18/02/05/1000006004/1000006004_detail_038.jpg', 'http://gi.esmplus.com/pscominc/product/10264/10264body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(735, 404, '(특가) 셈셈 수놀이(수의 개념)', 33000, 27210, TIMESTAMP '2022-08-19 00:00:00.000000', '1~4명', 4, '행복한바오밥', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/16/12/49/1000004987/1000004987_detail_021.jpg', 'https://gi.esmplus.com/pstoys/product/3081/3081body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(736, 200, '코잉스', 25000, 20610, TIMESTAMP '2022-06-10 00:00:00.000000', '1명', 5, '행복한바오밥', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/18/01/03/1000005981/modify_detail_030.jpg', 'http://gi.esmplus.com/pscominc/product/10235/10235body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(737, 403, '데드 오브 윈터 : 크로스로드 게임', 69000, 44700, TIMESTAMP '2022-06-05 00:00:00.000000', '2~5명', 14, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/16/08/32/1000004871/modify_detail_04.jpg', 'http://gi.esmplus.com/pstoys/product/886/886body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(738, 200, '러시아워 딜럭스', 37000, 25740, TIMESTAMP '2022-10-17 00:00:00.000000', '1명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/14/11/46/1000000678/modify_detail_089.jpg', 'http://gi.esmplus.com/pstoys/product/12/12body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(739, 404, '체스 앤 체커', 19000, 14600, TIMESTAMP '2022-04-27 00:00:00.000000', '2명', 6, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/1000000995_detail_088.jpg', 'http://gi.esmplus.com/pstoys/product/345/345body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(740, 200, '(특가) 빨간모자 퍼즐게임', 40000, 26500, TIMESTAMP '2022-09-30 00:00:00.000000', '1명', 4, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/11/47/1000005732/1000005732_detail_087.jpg', 'http://gi.esmplus.com/pstoys/product/915/915body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(741, 501, '로스트 시티(한글판)', 25000, 19500, TIMESTAMP '2022-10-30 00:00:00.000000', '2명', 10, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/16/05/20/1000004667/1000004667_detail_079.jpg', 'http://gi.esmplus.com/pstoys/product/873/873body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(742, 402, '이스케이프 룸 : 미니', 16000, 10580, TIMESTAMP '2022-06-21 00:00:00.000000', '1~5명', 12, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/20/02/06//1000007052/register_detail_03.jpg', 'http://gi.esmplus.com/pscominc/product/10861/10861body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(743, 700, 'KBS 도전 골든벨 OX퀴즈게임 주니어', 46000, 31200, TIMESTAMP '2022-03-11 00:00:00.000000', '1~5명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/19/04/17//1000006684/register_detail_080.jpg', 'http://gi.esmplus.com/pscominc/product/10611/10611body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(744, 403, '언락 방탈출게임', 59000, 39500, TIMESTAMP '2022-09-20 00:00:00.000000', '2~6명', 13, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/18/05/22/1000006151/1000006151_detail_089.jpg', 'http://gi.esmplus.com/pscominc/product/10385/10385body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(745, 801, '큐비즈', 25000, 20200, TIMESTAMP '2022-06-06 00:00:00.000000', '3~6명', 8, '행복한바오밥', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/19/01/02//1000006493/modify_detail_028.jpg', 'http://gi.esmplus.com/pscominc/product/10543/10543body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(746, 700, '자이푸르', 30000, 19600, TIMESTAMP '2022-06-04 00:00:00.000000', '2명', 12, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/19/01/05//1000006529/register_detail_022.jpg', 'http://gi.esmplus.com/pscominc/product/10566/10566body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(747, 600, '젬블로 큐', 44000, 31900, TIMESTAMP '2022-02-19 00:00:00.000000', '1~4명', 5, '젬블로', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/15/04/16/1000003300/modify_detail_046.jpg', 'http://gi.esmplus.com/pstoys/product/805/805body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(748, 403, '마이크로 로봇(언플러그드활동)', 22000, 17600, TIMESTAMP '2022-07-08 00:00:00.000000', '2명이상', 8, '행복한바오밥', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/16/10/40/1000004919/modify_detail_094.jpg', 'http://gi.esmplus.com/pstoys/product/3109/3109body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(749, 300, '사건의 재구성/VR게임(협력게임)', 40000, 26600, TIMESTAMP '2022-04-18 00:00:00.000000', '1~4명', 12, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/19/01/04//1000006515/register_detail_045.jpg', 'http://gi.esmplus.com/pscominc/product/10558/10558body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(750, 801, '조이팀버 프리미엄/JOYTIMBER', 10000, 7800, TIMESTAMP '2022-03-17 00:00:00.000000', '1명 이상', 5, '조엔', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/15/04/16/1000003683/modify_detail_014.jpg', 'http://gi.esmplus.com/pstoys/product/4012/4012body_01.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(751, 403, '마구야구왕KR/보드게임', 33000, 26000, TIMESTAMP '2022-11-09 00:00:00.000000', '2명 이상', 5, '아카데미 과학', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/08/35/1000005563/1000005563_detail_047.jpg', 'http://gi.esmplus.com/pscominc/product/10113/10113body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(752, 200, '컬러코드', 36000, 23900, TIMESTAMP '2022-03-01 00:00:00.000000', '1명', 5, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/18/01/01/1000005968/1000005968_detail_01.jpg', 'http://gi.esmplus.com/pscominc/product/10207/10207body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(753, 403, '(특가) 셈셈 테니스(구구단)', 33000, 27210, TIMESTAMP '2022-12-23 00:00:00.000000', '2명or4명', 7, '행복한바오밥', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/16/12/49/1000004990/modify_detail_066.jpg', 'http://gi.esmplus.com/pstoys/openmarket/happybaobab.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(754, 501, '카르카손 확장-여관과 대성당 한국어판', 18000, 13290, TIMESTAMP '2022-12-08 00:00:00.000000', '2~5명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/11/47/1000005764/modify_detail_042.jpg', 'http://gi.esmplus.com/pscominc/product/11424/11424body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(755, 200, '(특가) 아기돼지 삼형제 퍼즐게임', 40000, 26500, TIMESTAMP '2022-04-14 00:00:00.000000', '1명', 3, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/11/47/1000005731/1000005731_detail_050.jpg', 'http://gi.esmplus.com/pstoys/product/914/914body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(756, 803, '(특가) 젬블로 큐', 44000, 31900, TIMESTAMP '2022-05-09 00:00:00.000000', '1~4명', 5, '젬블로', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/11/47/1000005919/1000005919_detail_092.jpg', 'http://gi.esmplus.com/pstoys/product/805/805body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(757, 404, '보약게임 뭉치뭉치/청크말하기 영어게임', 15000, 12980, TIMESTAMP '2022-08-02 00:00:00.000000', '1~5명', 7, '생각투자', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/16/07/27/1000004788/1000004788_detail_093.jpg', 'http://gi.esmplus.com/pstoys/product/5556/5556body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(758, 300, '팬데믹', 66000, 43800, TIMESTAMP '2022-03-26 00:00:00.000000', '2~4명', 10, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/15/01/03/1000004152/1000004152_detail_079.jpg', 'http://gi.esmplus.com/pstoys/product/829/829body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(759, 200, '(특가) 서킷 메이즈', 59000, 38940, TIMESTAMP '2022-08-07 00:00:00.000000', '1명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/11/47/1000005714/1000005714_detail_085.jpg', 'http://gi.esmplus.com/pstoys/product/925/925body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(760, 300, '카후나', 32000, 21900, TIMESTAMP '2022-12-11 00:00:00.000000', '2명', 10, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/18/06/25/1000006161/1000006161_detail_036.jpg', 'http://gi.esmplus.com/pscominc/product/10389/10389body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(761, 404, '루빅스 레이스 + 뿅망치 증정', 32000, 21700, TIMESTAMP '2022-07-04 00:00:00.000000', '2명', 7, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/20/02/07//1000007058/register_detail_047.jpg', 'http://gi.esmplus.com/pscominc/product/10864/10864body_S.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(762, 200, '(특가) 호퍼스', 27000, 18300, TIMESTAMP '2022-09-18 00:00:00.000000', '1명', 5, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/11/47/1000005914/1000005914_detail_071.jpg', 'http://gi.esmplus.com/pstoys/product/25/25body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(763, 801, '인지니어스', 33000, 23900, TIMESTAMP '2023-01-27 00:00:00.000000', '1~4명', 10, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/14/11/46/1000000578/modify_detail_011.jpg', 'http://gi.esmplus.com/pstoys/product/167/167body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(764, 803, '만칼라 스탠다드', 17000, 13000, TIMESTAMP '2022-03-24 00:00:00.000000', '2명', 4, '조엔', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/07/30/1000005304/1000005304_detail_043.jpg', 'http://gi.esmplus.com/pscominc/product/10053/10053body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(765, 200, '(특가) 러시아워 확장팩3(10%)', 8000, 5300, TIMESTAMP '2022-09-11 00:00:00.000000', '1명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/11/47/1000005830/1000005830_detail_086.jpg', 'http://gi.esmplus.com/pstoys/product/62/62body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(766, 600, '쿼리도 주니어', 33000, 21600, TIMESTAMP '2022-11-29 00:00:00.000000', '2~4명', 4, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/19/06/24//1000006754/register_detail_058.jpg', 'http://gi.esmplus.com/pscominc/product/10702/10702body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(767, 801, '로리의 스토리큐브-클래식/Rorys', 17600, 14080, TIMESTAMP '2022-06-27 00:00:00.000000', '1명 이상', 6, '생각투자', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/14/11/46/1000004069/modify_detail_080.jpg', 'http://gi.esmplus.com/pstoys/product/5074/5074body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(768, 403, '(특가) 인지니어스', 33000, 21700, TIMESTAMP '2022-11-27 00:00:00.000000', '1~4명', 10, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/11/47/1000005871/1000005871_detail_015.jpg', 'http://gi.esmplus.com/pstoys/product/167/167body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(769, 404, '(특가) 꽉 잡아 하비', 25000, 13630, TIMESTAMP '2022-09-04 00:00:00.000000', '2명', 6, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/11/47/1000005739/modify_detail_021.jpg', 'http://gi.esmplus.com/pstoys/product/901/901body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(770, 802, '(특가) 퀵소 미니', 35000, 23500, TIMESTAMP '2022-02-22 00:00:00.000000', '2명', 6, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/11/47/1000005895/1000005895_detail_089.jpg', 'http://gi.esmplus.com/pstoys/product/721/721body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(771, 300, '티켓 투 라이드 노르딕(한글판)', 79000, 57390, TIMESTAMP '2023-01-08 00:00:00.000000', '2~3명', 10, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/03/13/1000005110/modify_detail_049.jpg', 'https://gi.esmplus.com/pscominc/product/11497/11497body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(772, 801, '보약게임 바다동물장기', 23000, 16400, TIMESTAMP '2022-05-19 00:00:00.000000', '2명', 8, '생각투자', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/06/26/1000005221/1000005221_detail_046.jpg', 'http://gi.esmplus.com/pstoys/product/5591/5591body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(773, 300, '(특가) 러시아워 쉬프트(수학적사고력)', 39000, 25700, TIMESTAMP '2022-06-11 00:00:00.000000', '2명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/11/47/1000005917/1000005917_detail_079.jpg', 'http://gi.esmplus.com/pstoys/product/842/842body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(774, 200, '루빅스 3X3큐브 - 루빅스큐브', 14000, 10200, TIMESTAMP '2022-11-05 00:00:00.000000', '1명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/15/12/51/1000004091/modify_detail_05.jpg', 'https://gi.esmplus.com/pscominc/product/11520/11520body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(775, 801, '돌 VS 인간', 20000, 13300, TIMESTAMP '2022-12-31 00:00:00.000000', '1~10명이상', 12, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/20/02/06//1000007053/register_detail_084.jpg', 'http://gi.esmplus.com/pscominc/product/10860/10860body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(776, 803, '뉴 다이아몬드게임', 15000, 12800, TIMESTAMP '2022-07-03 00:00:00.000000', '2~3명', 5, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/09/38/1000005615/1000005615_detail_095.jpg', 'http://gi.esmplus.com/pscominc/product/10168/10168body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(777, 600, '금고를 열어라', 36000, 24430, TIMESTAMP '2022-11-14 00:00:00.000000', '1~4명', 7, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/20/04/16//1000007080/register_detail_074.jpg', 'http://gi.esmplus.com/pscominc/product/10879/10879body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(778, 200, '코잉스 스페이스', 25000, 20610, TIMESTAMP '2022-02-03 00:00:00.000000', '1명', 8, '행복한바오밥', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/19/04/14//1000006652/register_detail_050.jpg', 'http://gi.esmplus.com/pscominc/product/10601/10601body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(779, 802, 'Six 칼라메모리/집중력 향상 메모리게임/식스칼라메모리', 10000, 8000, TIMESTAMP '2022-11-17 00:00:00.000000', '2명', 5, '조엔', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/07/30/1000005294/1000005294_detail_052.jpg', 'http://gi.esmplus.com/pscominc/product/10042/10042body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(780, 600, '로리의 스토리큐브-액션/Rorys', 17600, 14080, TIMESTAMP '2023-01-13 00:00:00.000000', '1명 이상', 6, '생각투자', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/14/11/46/1000004068/modify_detail_059.jpg', 'http://gi.esmplus.com/pstoys/product/5073/5073body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(781, 403, '로리의 스토리큐브-모험/Rorys', 17600, 14080, TIMESTAMP '2022-11-22 00:00:00.000000', '1명 이상', 6, '생각투자', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/14/11/46/1000004067/modify_detail_076.jpg', 'http://gi.esmplus.com/pstoys/product/5072/5072body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(782, 405, '보약게임 사자를 잡아랏 동물장기', 15000, 12370, TIMESTAMP '2022-05-27 00:00:00.000000', '2명', 7, '생각투자', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/19/10/43//1000006965/register_detail_082.jpg', 'http://gi.esmplus.com/pscominc/product/10749/10749body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(783, 801, '(특가) 매스다이스 주니어', 17000, 6700, TIMESTAMP '2022-11-05 00:00:00.000000', '2명 이상', 6, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/11/47/1000005842/1000005842_detail_084.jpg', 'http://gi.esmplus.com/pstoys/product/626/626body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(784, 403, '밸런스 빈즈 /균형잡기 논리 퍼즐', 29000, 22620, TIMESTAMP '2023-01-20 00:00:00.000000', '1명 이상', 5, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/03/13/1000005108/1000005108_detail_0100.jpg', 'http://gi.esmplus.com/pstoys/product/923/923body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(785, 403, '보약게임 피카픽', 15000, 12520, TIMESTAMP '2022-04-17 00:00:00.000000', '1~5명', 5, '생각투자', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/15/04/14/1000004274/modify_detail_058.jpg', 'http://gi.esmplus.com/pstoys/product/5082/5082body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(786, 600, '보약게임 하이브 콤팩트 보드게임', 25000, 20500, TIMESTAMP '2022-05-13 00:00:00.000000', '2명', 9, '생각투자', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/05/18/1000005151/1000005151_detail_080.jpg', 'http://gi.esmplus.com/pstoys/product/5568/5568body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(787, 401, '캐터펄트 킹덤 (카드 슬리브 증정)', 51700, 33810, TIMESTAMP '2022-10-09 00:00:00.000000', '2인', 8, '보드게임몰', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/21/09/37//1000007589/1000007589_detail_015.jpg', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/editor/goods/220706/T7_5991_143217.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(788, 404, '턴코트', 30000, 23190, TIMESTAMP '2022-10-30 00:00:00.000000', '2명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/1000004971_detail_028.jpg', 'http://gi.esmplus.com/pstoys/product/900/900body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(789, 404, '쿼리도 미니', 35000, 25600, TIMESTAMP '2022-08-09 00:00:00.000000', '2,4명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/14/11/46/1000001692/modify_detail_08.jpg', 'https://gi.esmplus.com/pstoys/product/718/718body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(790, 801, '엘드리치 호러', 80000, 55900, TIMESTAMP '2022-07-30 00:00:00.000000', '1~8명', 14, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/07/30/1000005446/1000005446_detail_073.jpg', 'http://gi.esmplus.com/pscominc/product/10162/10162body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(791, 200, '빨간모자 퍼즐게임', 40000, 29800, TIMESTAMP '2022-04-28 00:00:00.000000', '1명', 4, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/01/04/1000005021/1000005021_detail_087.jpg', 'http://gi.esmplus.com/pstoys/product/915/915body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(792, 402, '원목 주사위 트레이', 20000, 13200, TIMESTAMP '2022-12-07 00:00:00.000000', '1~6명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/19/12/50//1000007009/register_detail_08.jpg', 'http://gi.esmplus.com/pscominc/product/10830/10830body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(793, 200, '(특가) 코드 마스터(프로그래밍의 기초)', 39000, 25740, TIMESTAMP '2022-09-09 00:00:00.000000', '1명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/11/47/1000005768/1000005768_detail_093.jpg', 'http://gi.esmplus.com/pstoys/product/868/868body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(794, 700, '타르기', 28000, 18240, TIMESTAMP '2022-07-24 00:00:00.000000', '2명', 12, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/19/12/50//1000007013/register_detail_022.jpg', 'http://gi.esmplus.com/pscominc/product/10831/10831body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(795, 403, '헥서스 보드게임(교재 별매)', 52000, 42880, TIMESTAMP '2022-12-08 00:00:00.000000', '2~3명', 8, '조엔', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/07/27/1000005243/1000005243_detail_095.jpg', 'http://gi.esmplus.com/pstoys/product/4005/4005body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(796, 200, '마그네틱퍼즐 마녀의숲', 18000, 11870, TIMESTAMP '2022-05-21 00:00:00.000000', '1명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/18/01/01/1000005952/1000005952_detail_03.jpg', 'http://gi.esmplus.com/pscominc/product/10223/10223body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(797, 200, '원목쌓기나무-유럽산비치목', 15000, 12000, TIMESTAMP '2022-10-16 00:00:00.000000', '1명', 5, '조엔', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/14/11/48/1000004123/modify_detail_087.jpg', 'http://gi.esmplus.com/pstoys/product/4027/4027body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(798, 403, '꽉 잡아 하비', 25000, 19500, TIMESTAMP '2022-05-09 00:00:00.000000', '2명', 6, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/16/10/44/1000004972/modify_detail_017.jpg', 'http://gi.esmplus.com/pstoys/product/901/901body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(799, 300, '(특가) 엘드리치 호러', 80000, 54200, TIMESTAMP '2022-10-31 00:00:00.000000', '1~8명', 14, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/11/47/1000005700/1000005700_detail_0100.jpg', 'http://gi.esmplus.com/pscominc/product/10162/10162body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(800, 501, '가블리트/마인드올림피아대회 본선2회 대회종목', 62500, 51540, TIMESTAMP '2022-06-22 00:00:00.000000', '2명', 7, '브레인티져스', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/16/02/08/1000004600/modify_detail_050.jpg', 'http://gi.esmplus.com/pstoys/product/7001/7001body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(801, 700, '보약게임 배고픈 공룡(쥬라기헝거)', 27500, 22680, TIMESTAMP '2022-02-28 00:00:00.000000', '2명', 8, '생각투자', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/19/05/21//1000006706/register_detail_056.jpg', 'http://gi.esmplus.com/pscominc/product/10685/10685body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(802, 404, '코티지 가든', 55000, 33900, TIMESTAMP '2022-11-08 00:00:00.000000', '1~4명', 8, '행복한바오밥', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/07/27/1000005235/1000005235_detail_012.jpg', 'http://gi.esmplus.com/pscominc/product/10006/10006body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(803, 404, '럭키 퍼즐/하나야마', 17600, 13680, TIMESTAMP '2022-06-25 00:00:00.000000', '1명 이상', 5, '생각투자', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/16/06/26/1000004770/modify_detail_078.jpg', 'http://gi.esmplus.com/pstoys/product/5548/5548body_01.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(804, 300, '사그라다 확장 수난의 파사드 (프로모 증정)', 27000, 19900, TIMESTAMP '2022-12-16 00:00:00.000000', '1~6명', 8, '아스모디 코리아', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/19/08/33//1000006815/register_detail_087.jpg', 'http://gi.esmplus.com/pscominc/product/10743/10743body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(805, 803, '(특가) 킹 메이킹', 44000, 18140, TIMESTAMP '2022-12-12 00:00:00.000000', '2명', 7, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/11/47/1000005697/1000005697_detail_065.jpg', 'http://gi.esmplus.com/pscominc/product/10001/10001body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(806, 501, '보약게임 해트릭스', 25000, 17200, TIMESTAMP '2022-05-26 00:00:00.000000', '2명 이상', 6, '생각투자', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/15/04/16/1000004056/modify_detail_094.jpg', 'http://gi.esmplus.com/pstoys/product/5010/5010body1.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(807, 801, '아줄 신트라의 스테인드글라스', 65000, 42000, TIMESTAMP '2022-06-28 00:00:00.000000', '2~4명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/19/03/10//1000006633/register_detail_015.jpg', 'http://gi.esmplus.com/pscominc/product/10590/10590body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(808, 700, '매직 메이즈', 44000, 29300, TIMESTAMP '2022-08-15 00:00:00.000000', '1-8명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/18/10/41/1000006255/1000006255_detail_028.jpg', 'http://gi.esmplus.com/pscominc/product/10475/10475body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(809, 802, '한국사 보드게임 공딱 4편(조선 후기II-휴전 협정)', 29700, 22900, TIMESTAMP '2022-03-25 00:00:00.000000', '2명 이상', 8, '일러스트넷', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/18/02/06/1000006067/1000006067_detail_043.jpg', 'http://gi.esmplus.com/pscominc/product/10296/10296body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(810, 200, '백설공주 퍼즐게임', 40000, 27200, TIMESTAMP '2022-03-29 00:00:00.000000', '1명', 4, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/18/01/01/1000005972/1000005972_detail_077.jpg', 'http://gi.esmplus.com/pscominc/product/10203/10203body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(811, 403, '매스다이스 주니어', 17000, 13140, TIMESTAMP '2022-06-03 00:00:00.000000', '2명 이상', 6, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/1000001694_detail_076.jpg', 'http://gi.esmplus.com/pstoys/product/626/626body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(812, 600, '한국사 보드게임 공딱 3편(조선 건국-조선 후기I)', 29700, 22900, TIMESTAMP '2022-03-15 00:00:00.000000', '2명 이상', 8, '일러스트넷', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/18/02/06/1000006068/1000006068_detail_014.jpg', 'http://gi.esmplus.com/pscominc/product/10295/10295body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(813, 501, '보약게임 Rorys 스토리큐브 - 모험(행탭버전)', 17600, 13680, TIMESTAMP '2022-04-08 00:00:00.000000', '1명이상', 6, '생각투자', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/18/10/40/1000006241/1000006241_detail_022.jpg', 'http://gi.esmplus.com/pscominc/product/10465/10465body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(814, 802, '(특가) 졸리 앤 로저', 22000, 14500, TIMESTAMP '2022-03-19 00:00:00.000000', '2명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/11/47/1000005694/1000005694_detail_049.jpg', 'http://gi.esmplus.com/pscominc/product/10097/10097body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(815, 403, '보약게임 Rorys 스토리큐브 - 액션(행탭버전)', 17600, 13680, TIMESTAMP '2022-08-08 00:00:00.000000', '1명이상', 6, '생각투자', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/18/10/40/1000006242/1000006242_detail_091.jpg', 'http://gi.esmplus.com/pscominc/product/10466/10466body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(816, 402, '타이니 타운', 49000, 31800, TIMESTAMP '2022-07-10 00:00:00.000000', '1~6명', 7, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/20/01/02//1000007021/register_detail_053.jpg', 'http://gi.esmplus.com/pscominc/product/10837/10837body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(817, 600, '뉴 마이 게임 스튜디오', 12000, 9000, TIMESTAMP '2022-12-16 00:00:00.000000', '1~5명', 5, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/19/11/46//1000006973/register_detail_048.jpg', 'http://gi.esmplus.com/pscominc/product/10801/10801body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(818, 600, '(특가) 턴코트', 30000, 20000, TIMESTAMP '2022-07-18 00:00:00.000000', '2명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/11/47/1000005738/1000005738_detail_09.jpg', 'http://gi.esmplus.com/pstoys/product/900/900body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(819, 200, '(특가) 그래비티 메이즈', 49000, 29400, TIMESTAMP '2022-08-04 00:00:00.000000', '1명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/11/47/1000005706/modify_detail_083.jpg', 'http://gi.esmplus.com/pstoys/product/933/933body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(820, 200, '리버 크로싱', 33000, 22000, TIMESTAMP '2022-11-27 00:00:00.000000', '1명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/19/08/33//1000006812/register_detail_078.jpg', 'http://gi.esmplus.com/pscominc/product/10738/10738body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(821, 200, '타워디펜스', 36000, 23900, TIMESTAMP '2022-08-05 00:00:00.000000', '1명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/18/01/01/1000005969/1000005969_detail_010.jpg', 'http://gi.esmplus.com/pscominc/product/10206/10206body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(822, 200, '아기돼지 삼형제 퍼즐게임', 40000, 28800, TIMESTAMP '2022-10-13 00:00:00.000000', '1명', 3, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/01/04/1000005020/1000005020_detail_063.jpg', 'http://gi.esmplus.com/pstoys/product/914/914body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(823, 501, '(특가) 타쑤/타츠 한글판/2인1조 협력/인성게임', 39900, 32900, TIMESTAMP '2023-01-02 00:00:00.000000', '2명', 8, '브레인티져스', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/16/10/40/1000004920/modify_detail_019.jpg', 'http://gi.esmplus.com/pstoys/product/7043/7043body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(824, 803, '엔트리 캐치 더 도그(엔트리/코딩)', 35000, 23100, TIMESTAMP '2022-02-21 00:00:00.000000', '2명/4명', 8, '다즐에듀', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/18/12/49//1000006366/modify_detail_067.jpg', 'http://gi.esmplus.com/pscominc/product/10508/10508body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(825, 300, '(특가) 보약게임 스피드 스낵바', 20000, 13400, TIMESTAMP '2022-06-07 00:00:00.000000', '2명', 8, '생각투자', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/16/12/52/1000005004/modify_detail_02.jpg', 'http://gi.esmplus.com/pstoys/product/5576/5576body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(826, 802, '몰키', 75000, 56250, TIMESTAMP '2023-01-18 00:00:00.000000', '2명이상', 8, '행복한바오밥', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/18/10/40/1000006245/modify_detail_096.jpg', 'http://gi.esmplus.com/pscominc/product/10469/10469body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(827, 405, '스카라비야', 39000, 25500, TIMESTAMP '2023-01-07 00:00:00.000000', '1~4명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/19/06/26//1000006780/register_detail_055.jpg', 'http://gi.esmplus.com/pscominc/product/10704/10704body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(828, 405, '킹도미노 확장 - 거인의시대', 30000, 18600, TIMESTAMP '2022-03-04 00:00:00.000000', '3~6명', 8, '행복한바오밥', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/19/01/02//1000006491/modify_detail_033.jpg', 'http://gi.esmplus.com/pscominc/product/10545/10545body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(829, 803, '수학시리즈 쿵이와 함께 하는 피자파티', 33000, 29380, TIMESTAMP '2022-02-25 00:00:00.000000', '2명 이상', 5, '일러스트넷', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/18/02/06/1000006074/modify_detail_078.jpg', 'http://gi.esmplus.com/pscominc/product/10289/10289body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(830, 200, '(특가) 카타미노', 32000, 21100, TIMESTAMP '2022-04-12 00:00:00.000000', '1명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/11/47/1000005883/1000005883_detail_018.jpg', 'http://gi.esmplus.com/pstoys/product/623/623body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(831, 200, '[루빅스] 3x3x3 루빅스보이드/루빅스큐브', 19800, 15360, TIMESTAMP '2023-02-02 00:00:00.000000', '1명', 8, '루빅스', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/15/12/51/1000004078/modify_detail_013.jpg', 'http://gi.esmplus.com/pstoys/product/5142/5142body_01.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(832, 700, '(특가) 보약게임 버블리팝', 29000, 17280, TIMESTAMP '2022-11-23 00:00:00.000000', '1~2명', 8, '생각투자', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/07/28/1000005251/modify_detail_089.jpg', 'http://gi.esmplus.com/pscominc/product/10094/10094body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(833, 801, '이그니스', 47000, 38760, TIMESTAMP '2022-12-06 00:00:00.000000', '2명', 8, '브레인티져스', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/16/02/08/1000004569/modify_detail_020.jpg', 'http://gi.esmplus.com/pstoys/product/7032/7032body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(834, 401, '보약게임 피카 폴라베어', 17600, 13780, TIMESTAMP '2023-01-06 00:00:00.000000', '1~5명', 5, '생각투자', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/15/04/14/1000004275/1000004275_detail_018.jpg', 'http://gi.esmplus.com/pstoys/product/5513/5513body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(835, 200, '마그네틱퍼즐 치즈쏙쏙', 18000, 11870, TIMESTAMP '2022-04-05 00:00:00.000000', '1명', 6, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/18/01/01/1000005956/1000005956_detail_054.jpg', 'http://gi.esmplus.com/pscominc/product/10219/10219body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(836, 405, '초록바나나그램스 워크북', 6000, 4800, TIMESTAMP '2022-09-24 00:00:00.000000', '1~4명', 5, '생각투자', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/20/04/14//1000007073/register_detail_019.jpg', 'http://gi.esmplus.com/pscominc/product/10875/10875body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(837, 600, '더하기빼기 게임 Arithmetic Lotto', 22000, 14670, TIMESTAMP '2023-01-28 00:00:00.000000', '1~6명', 5, '에듀카코리아', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/18/08/33/1000006208/1000006208_detail_079.jpg', 'http://gi.esmplus.com/pscominc/product/10425/10425body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(838, 501, '트리오비전 [TRIOVISION]', 28000, 22400, TIMESTAMP '2022-12-13 00:00:00.000000', '1~6명', 8, '조엔', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/commonimg/ico_noimg_500.gif', 'http://gi.esmplus.com/pstoys/product/4002/4002body_01.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(839, 300, '(특가) 보약게임 파이어 퀘스트', 33000, 17300, TIMESTAMP '2023-01-28 00:00:00.000000', '1~8명', 8, '생각투자', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/18/01/01/1000005950/1000005950_detail_096.jpg', 'http://gi.esmplus.com/pscominc/product/10225/10225body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(840, 405, '두 잇', 15000, 9830, TIMESTAMP '2022-07-09 00:00:00.000000', '2명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/19/11/47//1000006978/register_detail_03.jpg', 'http://gi.esmplus.com/pscominc/product/10806/10806body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(841, 200, '컬러폴드', 17000, 11140, TIMESTAMP '2022-12-24 00:00:00.000000', '1명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/19/02/08//1000006547/register_detail_076.jpg', 'http://gi.esmplus.com/pscominc/product/10581/10581body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(842, 401, '미니 자석 바둑(단면) M-056/명인랜드', 12000, 8650, TIMESTAMP '2022-08-12 00:00:00.000000', '2명', 5, '명인랜드', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/16/06/26/1000004746/modify_detail_033.jpg', 'http://gi.esmplus.com/pstoys/product/8502/8502body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(843, 300, '틱택투', 38000, 25200, TIMESTAMP '2022-09-10 00:00:00.000000', '2명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/19/05/21//1000006714/register_detail_068.jpg', 'http://gi.esmplus.com/pscominc/product/10667/10667body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(844, 600, '[언플러그드] 페이퍼링 듀얼(언플러그드활동)', 28000, 19500, TIMESTAMP '2022-07-21 00:00:00.000000', '2명', 8, '다즐에듀', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/18/12/49//1000006379/register_detail_066.jpg', 'http://gi.esmplus.com/pscominc/product/10521/10521body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(845, 405, '한밤의유령사냥(2인용)/보드게임', 55000, 43480, TIMESTAMP '2022-05-10 00:00:00.000000', '2명', 6, '아카데미 과학', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/08/35/1000005565/modify_detail_016.jpg', 'http://gi.esmplus.com/pscominc/product/10115/10115body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(846, 403, '고트리오', 18000, 11790, TIMESTAMP '2022-12-04 00:00:00.000000', '2~3명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/19/05/21//1000006713/register_detail_01.jpg', 'http://gi.esmplus.com/pscominc/product/10668/10668body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(847, 200, '마그네틱퍼즐 노아의방주', 18000, 11870, TIMESTAMP '2022-02-23 00:00:00.000000', '1명', 5, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/18/01/01/1000005951/1000005951_detail_048.jpg', 'http://gi.esmplus.com/pscominc/product/10224/10224body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(848, 803, '(특가) 롱 케미스트리 Wrong Chemistry /원소기호/브레인티져스', 32400, 26720, TIMESTAMP '2023-01-07 00:00:00.000000', '2명 이상', 8, '브레인티져스', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/16/07/27/1000004781/modify_detail_032.jpg', 'http://gi.esmplus.com/pstoys/product/7042/7042body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(849, 401, '헥서스 활용교재', 8000, 6100, TIMESTAMP '2022-09-20 00:00:00.000000', '2~3명', 8, '조엔', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/07/27/1000005242/1000005242_detail_082.jpg', 'http://gi.esmplus.com/pstoys/product/4004/4004body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(850, 401, '락 미 아르키메데스', 70000, 46600, TIMESTAMP '2022-03-11 00:00:00.000000', '2명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/19/05/21//1000006718/register_detail_035.jpg', 'http://gi.esmplus.com/pscominc/product/10657/10657body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(851, 501, '솔레니아', 53000, 33800, TIMESTAMP '2022-09-04 00:00:00.000000', '1~4명', 10, '행복한바오밥', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/19/04/14//1000006653/register_detail_086.jpg', 'http://gi.esmplus.com/pscominc/product/10600/10600body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(852, 200, '코드 논리회로 프로그래밍(언플러그드활동)', 26000, 17400, TIMESTAMP '2022-12-15 00:00:00.000000', '1명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/18/11/44/1000006306/1000006306_detail_081.jpg', 'http://gi.esmplus.com/pscominc/product/10489/10489body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(853, 200, '코드 길찾기 알고리즘(언플러그드활동)', 26000, 17400, TIMESTAMP '2022-10-17 00:00:00.000000', '1명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/18/11/44/1000006305/1000006305_detail_048.jpg', 'http://gi.esmplus.com/pscominc/product/10488/10488body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(854, 501, '스콰드로', 50000, 32260, TIMESTAMP '2022-02-13 00:00:00.000000', '2명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/19/08/35//1000006929/register_detail_051.jpg', 'http://gi.esmplus.com/pscominc/product/10759/10759body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(855, 802, '모리스 앤 솔리테어', 25000, 20000, TIMESTAMP '2022-09-02 00:00:00.000000', '2명', 6, '조엔', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/07/30/1000005309/1000005309_detail_018.jpg', 'http://gi.esmplus.com/pscominc/product/10058/10058body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(856, 200, '셜록', 65000, 43280, TIMESTAMP '2022-09-11 00:00:00.000000', '1명', 10, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/19/05/21//1000006715/register_detail_044.jpg', 'http://gi.esmplus.com/pscominc/product/10666/10666body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(857, 803, '모자익스', 19000, 13200, TIMESTAMP '2022-08-14 00:00:00.000000', '1~4명', 8, '젬블로', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/18/03/12/1000006099/1000006099_detail_061.jpg', 'http://gi.esmplus.com/pscominc/product/10351/10351body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(858, 404, '(무료배송) 안드로이드 넷러너 뭄바드 싸이클 4- 살세트 섬', 18000, 14430, TIMESTAMP '2022-10-21 00:00:00.000000', '2명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/16/08/32/1000004877/modify_detail_025.jpg', 'http://gi.esmplus.com/pstoys/product/892/892body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(859, 200, '칼레이도 스코프', 20000, 13100, TIMESTAMP '2022-11-19 00:00:00.000000', '1명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/19/02/08//1000006549/register_detail_085.jpg', 'http://gi.esmplus.com/pscominc/product/10583/10583body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(860, 403, '보약게임 뭉치뭉치', 15000, 12980, TIMESTAMP '2022-04-28 00:00:00.000000', '1~5명', 7, '생각투자', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/11/46/1000005659/1000005659_detail_058.jpg', 'http://gi.esmplus.com/pstoys/product/5556/5556body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(861, 403, '(무료배송) 안드로이드 넷러너 뭄바드 싸이클 6- 대중을 두려워하라', 18000, 14430, TIMESTAMP '2022-03-18 00:00:00.000000', '2명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/16/08/32/1000004879/modify_detail_034.jpg', 'http://gi.esmplus.com/pstoys/product/894/894body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(862, 700, '(무료배송) 안드로이드 넷러너 뭄바드 싸이클 5- 해방된 정신', 18000, 14430, TIMESTAMP '2022-07-27 00:00:00.000000', '2명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/16/08/32/1000004878/modify_detail_044.jpg', 'http://gi.esmplus.com/pstoys/product/893/893body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(863, 803, '(무료배송) 안드로이드 넷러너 뭄바드 싸이클 3- 민주주의와 신조', 18000, 14430, TIMESTAMP '2022-06-08 00:00:00.000000', '2명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/16/08/32/1000004876/modify_detail_09.jpg', 'http://gi.esmplus.com/pstoys/product/891/891body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(864, 600, '블랙아웃 : 홍콩', 77000, 51000, TIMESTAMP '2022-11-12 00:00:00.000000', '1~4명', 14, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/20/01/04//1000007041/register_detail_015.jpg', 'http://gi.esmplus.com/pscominc/product/10851/10851body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(865, 802, '스프링 메도우', 55000, 35700, TIMESTAMP '2022-12-06 00:00:00.000000', '1~4명', 8, '행복한바오밥', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/19/08/34//1000006834/register_detail_042.jpg', 'http://gi.esmplus.com/pscominc/product/10748/10748body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(866, 802, '(특가) 잘라파', 79200, 65310, TIMESTAMP '2022-12-05 00:00:00.000000', '1~6명', 8, '브레인티져스', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/16/02/08/1000004566/modify_detail_044.jpg', 'http://gi.esmplus.com/pstoys/product/7035/7035body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(867, 200, '카타미노', 32000, 24740, TIMESTAMP '2022-07-27 00:00:00.000000', '1명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/1000001702_detail_028.jpg', 'http://gi.esmplus.com/pstoys/product/623/623body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(868, 801, '물고기는 내 친구', 35000, 22650, TIMESTAMP '2023-01-11 00:00:00.000000', '1~4명', 4, '행복한바오밥', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/19/08/31//1000006803/register_detail_036.jpg', 'http://gi.esmplus.com/pscominc/product/10733/10733body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(869, 200, '루나 랜딩', 22000, 14400, TIMESTAMP '2022-07-06 00:00:00.000000', '1명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/19/02/08//1000006551/register_detail_01.jpg', 'http://gi.esmplus.com/pscominc/product/10585/10585body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(870, 401, '스크래치 캐치 더 캣(스크래치 프로그램)', 35000, 23100, TIMESTAMP '2022-04-12 00:00:00.000000', '2명/4명', 8, '다즐에듀', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/18/12/49//1000006365/modify_detail_058.jpg', 'http://gi.esmplus.com/pscominc/product/10507/10507body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(871, 700, '킹 메이킹', 44000, 34320, TIMESTAMP '2022-12-14 00:00:00.000000', '2명', 7, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/07/27/1000005239/1000005239_detail_088.jpg', 'http://gi.esmplus.com/pscominc/product/10001/10001body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(872, 405, '아를의 평원 빅 박스', 120000, 81500, TIMESTAMP '2022-03-25 00:00:00.000000', '1~3명', 14, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/20/03/11//1000007065/register_detail_019.jpg', 'http://gi.esmplus.com/pscominc/product/10870/10870body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(873, 600, '에듀보드 한국사 보드게임 3편 (조선 건국-후기I)', 35200, 22800, TIMESTAMP '2022-05-28 00:00:00.000000', '2명이상', 8, '일러스트넷', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/19/08/34//1000006850/register_detail_072.jpg', 'http://gi.esmplus.com/pscominc/product/10753/10753body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(874, 403, '졸리 앤 로저', 22000, 17010, TIMESTAMP '2022-07-03 00:00:00.000000', '2명', 8, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/17/07/29/1000005288/1000005288_detail_028.jpg', 'http://gi.esmplus.com/pscominc/product/10097/10097body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(875, 700, '(특가) 탤럿/마인드올림피아대회 2015년 종목', 62400, 38760, TIMESTAMP '2022-10-11 00:00:00.000000', '2~3명', 8, '브레인티져스', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/16/02/08/1000004568/modify_detail_0100.jpg', 'http://gi.esmplus.com/pstoys/product/7033/7033body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(876, 402, '(특가) 힛지로드 Hit Z Road/좀비게임', 59000, 47200, TIMESTAMP '2022-02-06 00:00:00.000000', '1~4명', 12, '행복한바오밥', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/16/12/51/1000004996/modify_detail_034.jpg', 'http://gi.esmplus.com/pstoys/product/3122/3122body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(877, 403, '(특가) 갤럭시아', 52800, 32900, TIMESTAMP '2022-10-29 00:00:00.000000', '1~2명', 7, '브레인티져스', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/16/02/08/1000004567/modify_detail_098.jpg', 'http://gi.esmplus.com/pstoys/product/7034/7034body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(878, 200, '한밤의 UFO', 49000, 32890, TIMESTAMP '2022-07-05 00:00:00.000000', '1명', 6, '코리아보드게임즈', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/20/02/06//1000007051/register_detail_015.jpg', 'http://gi.esmplus.com/pscominc/product/10862/10862body.jpg', 50);
INSERT INTO PRODUCT (PNUM, CATENUM, PNAME, FIXPRICE, SELPRICE, RDATE, REPERSON, REAGE, BRAND, PIMG, INFOIMG, PRODUCTCNT) VALUES(879, 404, '빛의 도시, 파리 (프로모 증정)', 27000, 18090, TIMESTAMP '2022-03-10 00:00:00.000000', '2명', 8, '아스모디 코리아', 'https://cdn-pro-web-251-104.cdn-nhncommerce.com/boardgtr9139_godomall_com/data/goods/19/08/33//1000006817/register_detail_024.jpg', 'http://gi.esmplus.com/pscominc/product/10744/10744body.jpg', 50);

/*커뮤니티 샘플데이터*/

/*BOARD*/
/* 지난 모임 */

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (1, 1, '재밌게 놀아요!', '생각만 해도 행복해', '왕초보', 4, '2023-03-08 11:00:00', '2023-03-07 11:00:00', SYSDATE(),0, 37.5540084192114, 126.922613551217, '서울 마포구', '서울 마포구 서교동 358-1 레드버튼 홍대점', 2);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (2, 2, '우와아앙', '하이루', '초고수', 6, '2023-03-03 12:00:00', '2023-03-04 12:00:00', SYSDATE(),0, 37.54040751726388, 127.06920291650829, '서울 광진구', '서울 광진구 화양동 7-3 건대입구역 2호선', 2);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (3, 3, '오세용', '가세용', '고수', 4, '2023-03-02 3:00:00', '2023-03-03 3:00:00', SYSDATE(),0, 37.3845265983284, 127.122152470366, '경기 성남시', '경기 성남시 분당구 서현동 269-2 레드버튼 서현점', 2);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (4, 5, '안녕하세요', '엥 누구세요', '고수', 10, '2023-03-01 5:00:00', '2023-03-02 5:00:00', SYSDATE(),0, 37.3845265983284, 127.122152470366, '경기 성남시', '경기 성남시 분당구 서현동 269-2 레드버튼 서현점', 2);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (5, 6, '헬로우', '웰컴', '초보', 4, '2023-03-12 4:00:00', '2023-03-13 4:00:00', SYSDATE(),0, 37.5540084192114, 126.922613551217, '서울 마포구', '서울 마포구 서교동 358-1 레드버튼 홍대점', 2);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (6, 7, '푸헹헹', '푸항항', '왕초보', 4, '2023-03-05 12:00:00', '2023-03-05 12:00:00', SYSDATE(),0, 37.5540084192114, 126.922613551217, '서울 마포구', '서울 마포구 서교동 358-1 레드버튼 홍대점', 2);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (7, 3, '누군가는 들어오겠죠...', '저번엔 쓸쓸했어요.. 신청해주세요..', '왕초보', 4, '2023-03-09 12:00:00', '2023-03-10 12:00:00', SYSDATE(),0, 37.5540084192114, 126.922613551217, '서울 마포구', '서울 마포구 서교동 358-1 레드버튼 홍대점', 2);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (8, 2, '인사 올립니다.. 안녕하세요', '안녕하세요!!!!!!!', '왕초보', 4, '2023-03-18 12:00:00', '2023-03-19 12:00:00', SYSDATE(),0, 37.5540084192114, 126.922613551217, '서울 마포구', '서울 마포구 서교동 358-1 레드버튼 홍대점', 2);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (9, 5, '그림 그리는 게임 좋아해요', '쓱싹쓱싹', '왕초보', 4, '2023-03-18 12:00:00', '2023-03-19 12:00:00', SYSDATE(),0, 37.5540084192114, 126.922613551217, '서울 마포구', '서울 마포구 서교동 358-1 레드버튼 홍대점', 2);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (10, 7, '므에에에엥', '심심하면 울리는 벨..', '왕초보', 4, '2023-03-20 12:00:00', '2023-03-21 12:00:00', SYSDATE(),0, 37.5540084192114, 126.922613551217, '서울 마포구', '서울 마포구 서교동 358-1 레드버튼 홍대점', 2);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (11, 8, '방가워용', 'ㅋ', '왕초보', 4, '2023-03-21 12:00:00', '2023-03-22 12:00:00', SYSDATE(),0, 37.5540084192114, 126.922613551217, '서울 마포구', '서울 마포구 서교동 358-1 레드버튼 홍대점', 2);


/* 모집중 */
INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (12, 2, '보드게임 같이 하실 분 들어오세요', '반갑습니다:)', '초고수', 6, '2023-03-25 12:00:00', '2023-03-10 12:00:00', SYSDATE(),0, 37.54040751726388, 127.06920291650829, '서울 광진구', '서울 광진구 화양동 7-3 건대입구역 2호선', 0);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (13, 3, '보 드 게 임', '01012341234로 연락 주세요', '고수', 4, '2023-03-26 3:00:00', '2023-03-11 3:00:00', SYSDATE(),0, 37.3845265983284, 127.122152470366, '경기 성남시', '경기 성남시 분당구 서현동 269-2 레드버튼 서현점', 0);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (14, 5, '통아저씨 게임이 제일 좋아요', '또잉하고 올라오는 아저씨가 웃기니까', '고수', 10, '2023-03-12 5:00:00', '2023-03-20 5:00:00', SYSDATE(),0, 37.3845265983284, 127.122152470366, '경기 성남시', '경기 성남시 분당구 서현동 269-2 레드버튼 서현점', 0);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (15, 6, '보드게임하고 떡볶이 먹으러 가실 분만 오세요!', '엽떡이냐 신전이냐', '초보', 4, '2023-03-13 4:00:00', '2023-03-21 4:00:00', SYSDATE(),0, 37.5540084192114, 126.922613551217, '서울 마포구', '서울 마포구 서교동 358-1 레드버튼 홍대점', 0);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (16, 7, '이씨와 함께 춤을', '우히히', '왕초보', 4, '2023-03-27 12:00:00', '2023-03-14 12:00:00', SYSDATE(),0, 37.5540084192114, 126.922613551217, '서울 마포구', '서울 마포구 서교동 358-1 레드버튼 홍대점', 0);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (17, 8, '얘들아 모여라~', '누나 왔다', '초고수', 8, '2023-03-28 3:00:00', '2023-03-15 3:00:00', SYSDATE(),0, 37.3845265983284, 127.122152470366, '경기 성남시', '경기 성남시 분당구 서현동 269-2 레드버튼 서현점', 0);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (18, 6, '얼른 오세요', '반갑습니다!!!!!', '초고수', 4, '2023-03-27 12:00:00', '2023-03-16 12:00:00', SYSDATE(),0, 37.54040751726388, 127.06920291650829, '서울 광진구', '서울 광진구 화양동 7-3 건대입구역 2호선', 0);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (19, 3, '보드게임 왜이렇게 재밌지?', '01012341234로 연락 주세요', '고수', 10, '2023-04-01 5:00:00', '2023-03-17 5:00:00', SYSDATE(),0, 37.3845265983284, 127.122152470366, '경기 성남시', '경기 성남시 분당구 서현동 269-2 레드버튼 서현점', 0);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (20, 5, '통아저씨 게임으로 또 만나', '아저씨! 또잉 한번더!', '고수', 10, '2023-04-02 5:00:00', '2023-03-18 5:00:00', SYSDATE(),0, 37.3845265983284, 127.122152470366, '경기 성남시', '경기 성남시 분당구 서현동 269-2 레드버튼 서현점', 0);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (21, 6, '안녕하세요', '끝나고 치킨 고?', '초보', 4, '2023-04-05 4:00:00', '2023-03-19 4:00:00', SYSDATE(),0, 37.5540084192114, 126.922613551217, '서울 마포구', '서울 마포구 서교동 358-1 레드버튼 홍대점', 0);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (22, 7, '나랑 놀면 개존잼', '진심임', '왕초보', 4, '2023-04-08 11:00:00', '2023-03-20 11:00:00', SYSDATE(),0, 37.5540084192114, 126.922613551217, '서울 마포구', '서울 마포구 서교동 358-1 레드버튼 홍대점', 0);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (23, 1, '감자 감자', '감자도리', '왕초보', 4, '2023-03-29 11:00:00', '2023-03-20 11:00:00', SYSDATE(),0, 37.5540084192114, 126.922613551217, '서울 마포구', '서울 마포구 서교동 358-1 레드버튼 홍대점', 0);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (24, 2, '고구마 고구마', '군고구마 호오~', '초고수', 7, '2023-03-28 12:00:00', '2023-03-22 11:00:00', SYSDATE(),0, 37.3845265983284, 127.122152470366, '경기 성남시', '경기 성남시 분당구 서현동 269-2 레드버튼 서현점', 0);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (25, 6, '재밌쥬~', 'ㅎㅎ', '고수', 5, '2023-04-15 12:00:00', '2023-03-20 12:00:00', SYSDATE(),0, 37.54040751726388, 127.06920291650829, '서울 광진구', '서울 광진구 화양동 7-3 건대입구역 2호선', 0);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (26, 3, '아무나', '01012341234 문자 주세요~', '초보', 10, '2023-04-30 12:00:00', '2023-03-20 12:00:00', SYSDATE(),0, 37.54040751726388, 127.06920291650829, '서울 광진구', '서울 광진구 화양동 7-3 건대입구역 2호선', 0);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (27, 3, '게임하다가 울지 말기', '뿌에에에에엥', '초보', 10, '2023-05-01 12:00:00', '2023-03-20 12:00:00', SYSDATE(),0, 37.54040751726388, 127.06920291650829, '서울 광진구', '서울 광진구 화양동 7-3 건대입구역 2호선', 0);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (28, 6, '아침이 밝았습니다', '밤에 죽은 사람은.. 바로..!!!', '초고수', 5, '2023-03-26 12:00:00', '2023-03-10 12:00:00', SYSDATE(),0, 37.54040751726388, 127.06920291650829, '서울 광진구', '서울 광진구 화양동 7-3 건대입구역 2호선', 0);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (29, 1, '클루 할 사람', '머리 좋은 사람들만 와야됨', '초고수', 4, '2023-03-22 12:00:00', '2023-03-12 12:00:00', SYSDATE(),0, 37.501915063402585, 127.02647495627937, '서울 강남구', '서울 강남구 역삼동 814-5 레드버튼 강남점', 0);

/*모집완료*/

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (30, 1, '클루 할 사람', '머리 좋은 사람들만 와야됨', '초고수', 4, '2023-03-25 12:00:00', '2023-03-12 12:00:00', SYSDATE(),0, 37.501915063402585, 127.02647495627937, '서울 강남구', '서울 강남구 역삼동 814-5 레드버튼 강남점', 1);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (31, 2, '제 방은 빨리 찹니다', '신청 고고', '고수', 5, '2023-03-29 12:00:00', '2023-03-13 12:00:00', SYSDATE(),0, 37.501915063402585, 127.02647495627937, '서울 강남구', '서울 강남구 역삼동 814-5 레드버튼 강남점', 1);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (32, 3, '해피벌쓰데이', '내 생일 내일모레 ㅎㅎ', '초보', 3, '2023-03-30 12:00:00', '2023-03-14 12:00:00', SYSDATE(),0, 37.51342790849184, 127.10869857701887, '서울 송파구', '서울 송파구 방이동 62-8 몬스터핸드보드카페 방이점', 1);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (33, 4, '얼른 오시라구요', '안냐세염', '초고수', 9, '2023-03-31 12:00:00', '2023-03-15 12:00:00', SYSDATE(),0, 37.51342790849184, 127.10869857701887, '서울 송파구', '서울 송파구 방이동 62-8 몬스터핸드보드카페 방이점', 1);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (34, 5, '오아옹', '우아웅', '왕초보', 4, '2023-03-22 12:00:00', '2023-03-01 12:00:00', SYSDATE(),0, 37.51342790849184, 127.10869857701887, '서울 송파구', '서울 송파구 방이동 62-8 몬스터핸드보드카페 방이점', 1);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (35, 6, '희희', '후후', '고수', 4, '2023-03-23 12:00:00', '2023-03-02 12:00:00', SYSDATE(),0, 37.51342790849184, 127.10869857701887, '서울 송파구', '서울 송파구 방이동 62-8 몬스터핸드보드카페 방이점', 1);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (36, 7, '루루', '롱롱', '초고수', 4, '2023-03-24 12:00:00', '2023-03-03 12:00:00', SYSDATE(),0, 37.51342790849184, 127.10869857701887, '서울 송파구', '서울 송파구 방이동 62-8 몬스터핸드보드카페 방이점', 1);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (37, 8, '맛있는거 먹으면서 보드게임 하자', '과자 사와', '초고수', 3, '2023-03-21 12:00:00', '2023-03-04 12:00:00', SYSDATE(),0, 37.51342790849184, 127.10869857701887, '서울 송파구', '서울 송파구 방이동 62-8 몬스터핸드보드카페 방이점', 1);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (38, 5, '퇴근하고 만날 사람!', '드르렁', '초고수', 3, '2023-03-20 12:00:00', '2023-03-05 12:00:00', SYSDATE(),0, 37.51342790849184, 127.10869857701887, '서울 송파구', '서울 송파구 방이동 62-8 몬스터핸드보드카페 방이점', 1);

INSERT INTO MODOODB.BOARD
(BNUM,MNUM,BTITLE,BCONTENT, BRATE, BCNT, BDATE, BWDATE, BCDATE, BSTATUS, BLATITUDE, BLONGITUDE, BLOCAL, BADDRESS, BACTION)
VALUES (39, 6, '순발력 게임', '챱', '고수', 10, '2023-03-19 12:00:00', '2023-03-06 12:00:00', SYSDATE(),0, 37.51342790849184, 127.10869857701887, '서울 송파구', '서울 송파구 방이동 62-8 몬스터핸드보드카페 방이점', 1);

/*COMMAND (댓글)*/
/*모집중*/
INSERT INTO COMMENT (BNUM,MNUM,CCONTENT,CWDATE) VALUES (29,2,'왕초보만 되나요??','2023-03-07 12:12:00');
INSERT INTO COMMENT (BNUM,MNUM,CCONTENT,CCDATE) VALUES (29,3,'나도 하고 싶다ㅜㅜ','2023-03-07 14:54:00');
INSERT INTO COMMENT (BNUM,MNUM,CCONTENT,CWDATE) VALUES (29,5,'ㅋㅋㅋㅋㅋㅋㅋ','2023-03-08 00:01:00');
INSERT INTO COMMENT (BNUM,MNUM,CCONTENT,CWDATE) VALUES (12,3,'왕초보만 되나요??','2023-03-11 14:12:00');
INSERT INTO COMMENT (BNUM,MNUM,CCONTENT,CWDATE) VALUES (12,4,'헐......','2023-03-12 19:02:00');
INSERT INTO COMMENT (BNUM,MNUM,CCONTENT,CCDATE) VALUES (12,7,'시간 바꿀 수 있나요?!','2023-03-16 22:49:00');
INSERT INTO COMMENT (BNUM,MNUM,CCONTENT,CCDATE) VALUES (39,7,'초보도 받아주나요????','2023-03-15 23:30:00');
INSERT INTO COMMENT (BNUM,MNUM,CCONTENT,CWDATE) VALUES (39,1,'방이점 말고 다른데 어떤가요~','2023-03-16 22:49:00');
INSERT INTO COMMENT (BNUM,MNUM,CCONTENT,CCDATE) VALUES (38,3,'몇시에 퇴근함?','2023-03-16 22:49:00');
INSERT INTO COMMENT (BNUM,MNUM,CCONTENT,CWDATE) VALUES (38,4,'과자말고 젤리 고고','2023-03-16 22:49:00');


/*Applicant(매칭 신청 현황)*/
/* 매칭현황 - 방개설자 */
INSERT INTO modoodb.applicant (ANUM, BNUM, MNUM, ACHK) VALUES(1, 12, 2, '0');
INSERT INTO modoodb.applicant (ANUM, BNUM, MNUM, ACHK) VALUES(2, 13, 3, '0');
INSERT INTO modoodb.applicant (ANUM, BNUM, MNUM, ACHK) VALUES(3, 14, 5, '0');
INSERT INTO modoodb.applicant (ANUM, BNUM, MNUM, ACHK) VALUES(4, 15, 6, '0');
INSERT INTO modoodb.applicant (ANUM, BNUM, MNUM, ACHK) VALUES(5, 16, 7, '0');
INSERT INTO modoodb.applicant (ANUM, BNUM, MNUM, ACHK) VALUES(6, 17, 8, '0');
INSERT INTO modoodb.applicant (ANUM, BNUM, MNUM, ACHK) VALUES(7, 18, 6, '0');
INSERT INTO modoodb.applicant (ANUM, BNUM, MNUM, ACHK) VALUES(8, 19, 3, '0');
INSERT INTO modoodb.applicant (ANUM, BNUM, MNUM, ACHK) VALUES(9, 20, 5, '0');
INSERT INTO modoodb.applicant (ANUM, BNUM, MNUM, ACHK) VALUES(10, 21, 6, '0');
INSERT INTO modoodb.applicant (ANUM, BNUM, MNUM, ACHK) VALUES(11, 22, 7, '0');
INSERT INTO modoodb.applicant (ANUM, BNUM, MNUM, ACHK) VALUES(12, 23, 1, '0');
INSERT INTO modoodb.applicant (ANUM, BNUM, MNUM, ACHK) VALUES(13, 24, 2, '0');
INSERT INTO modoodb.applicant (ANUM, BNUM, MNUM, ACHK) VALUES(14, 25, 6, '0');
INSERT INTO modoodb.applicant (ANUM, BNUM, MNUM, ACHK) VALUES(15, 26, 3, '0');
INSERT INTO modoodb.applicant (ANUM, BNUM, MNUM, ACHK) VALUES(16, 27, 3, '0');
INSERT INTO modoodb.applicant (ANUM, BNUM, MNUM, ACHK) VALUES(17, 28, 6, '0');
INSERT INTO modoodb.applicant (ANUM, BNUM, MNUM, ACHK) VALUES(18, 29, 1, '0');
/* SUECATEGORY 신고 카테고리 */
insert into Modoodb.suecategory (SCNUM, SCNAME) VALUES(1, '욕설');
insert into Modoodb.suecategory (SCNUM, SCNAME) VALUES(2, '혐오발언');
insert into Modoodb.suecategory (SCNUM, SCNAME) VALUES(3, '부적절한 ID');
SELECT * FROM SUECATEGORY ;
/* SUE 신고 */
/*지난모임*/
INSERT INTO SUE(BNUM,MNUM,SCNUM,SDATE,SRESULT,SRDATE) VALUE(2,1,1,'2023-03-04 13:00:00','0','2023-03-10 13:30:00');
INSERT INTO SUE(BNUM,MNUM,SCNUM,SDATE,SRESULT,SRDATE) VALUE(3,2,2,'2023-03-03 13:00:00','0','2023-03-11 13:00:00');
INSERT INTO SUE(BNUM,MNUM,SCNUM,SDATE,SRESULT,SRDATE) VALUE(4,3,3,'2023-03-06 10:10:00','0','2023-03-09 09:30:00');
INSERT INTO SUE(BNUM,MNUM,SCNUM,SDATE,SRESULT,SRDATE) VALUE(5,4,1,'2023-03-18 18:20:00','1','2023-03-20 08:15:00');
INSERT INTO SUE(BNUM,MNUM,SCNUM,SDATE,SRESULT,SRDATE) VALUE(6,1,2,'2023-03-07 17:40:00','1','2023-03-18 13:20:00');
INSERT INTO SUE(BNUM,MNUM,SCNUM,SDATE,SRESULT,SRDATE) VALUE(7,5,3,'2023-03-10 18:40:00','0','2023-03-11 13:20:00');
INSERT INTO SUE(BNUM,MNUM,SCNUM,SDATE,SRESULT,SRDATE) VALUE(8,3,1,'2023-03-20 20:45:00','0','2023-03-21 13:20:00');
INSERT INTO SUE(BNUM,MNUM,SCNUM,SDATE,SRESULT,SRDATE) VALUE(9,4,2,'2023-03-22 19:40:00','0','2023-03-22 20:20:00');
/*모집중*/
INSERT INTO SUE(BNUM,MNUM,SCNUM,SDATE,SRESULT,SRDATE) VALUE(12,7,3,'2023-03-20 11:00:00','1','2023-03-21 13:30:00');
INSERT INTO SUE(BNUM,MNUM,SCNUM,SDATE,SRESULT,SRDATE) VALUE(13,5,3,'2023-03-21 12:00:00','1','2023-03-21 13:40:00');
INSERT INTO SUE(BNUM,MNUM,SCNUM,SDATE,SRESULT,SRDATE) VALUE(15,5,2,'2023-03-20 01:15:00','0','2023-03-20 16:30:00');
INSERT INTO SUE(BNUM,MNUM,SCNUM,SDATE,SRESULT,SRDATE) VALUE(16,2,3,'2023-03-16 15:26:00','0','2023-03-22 18:30:00');
INSERT INTO SUE(BNUM,MNUM,SCNUM,SDATE,SRESULT,SRDATE) VALUE(17,4,1,'2023-03-20 20:17:00','0','2023-03-22 14:30:00');
INSERT INTO SUE(BNUM,MNUM,SCNUM,SDATE,SRESULT,SRDATE) VALUE(18,4,1,'2023-03-17 07:40:00','0','2023-03-19 13:20:00');
INSERT INTO SUE(BNUM,MNUM,SCNUM,SDATE,SRESULT,SRDATE) VALUE(19,1,2,'2023-03-08 07:15:00','0','2023-03-10 19:20:00');
/*모집완료*/
INSERT INTO SUE(BNUM,MNUM,SCNUM,SDATE,SRESULT,SRDATE) VALUE(30,7,3,'2023-03-19 23:17:00','0','2023-03-23 18:42:00');
INSERT INTO SUE(BNUM,MNUM,SCNUM,SDATE,SRESULT,SRDATE) VALUE(31,8,1,'2023-03-20 01:54:00','0','2023-03-20 12:11:00');
INSERT INTO SUE(BNUM,MNUM,SCNUM,SDATE,SRESULT,SRDATE) VALUE(32,5,2,'2023-03-15 12:58:00','1','2023-03-16 00:01:00');
INSERT INTO SUE(BNUM,MNUM,SCNUM,SDATE,SRESULT,SRDATE) VALUE(33,6,1,'2023-03-17 16:54:00','0','2023-03-21 17:11:00');
INSERT INTO SUE(BNUM,MNUM,SCNUM,SDATE,SRESULT,SRDATE) VALUE(34,3,3,'2023-03-23 00:02:00','0','2023-03-23 23:57:00');


/*이벤트 스케쥴러*/
/*이벤트 스케줄러를 할 수 있는지 확인*/
SHOW VARIABLES LIKE 'event%';
/*OFF로 나오면 ON으로 바꿔주기*/
SET GLOBAL EVENT_SCHEDULER=ON;
/*등록된 이벤트 목록 확인해기*/
SELECT * FROM INFORMATION_SCHEMA.EVENTS;
/*등록한 이벤트 삭제하기*/
DROP EVENT SUEEVENT;
DROP EVENT ACTIONEVENT;

/*신고자가 정지당했을때 3일 지나면 자동으로 풀림*/
CREATE EVENT SUEEVENT ON SCHEDULE
EVERY 1 SECOND 
STARTS '2023-01-01 00:00:00'
DO
UPDATE SUE S INNER JOIN BOARD B ON S.BNUM=B.BNUM INNER JOIN MEMBER M ON B.MNUM = M.MNUM SET MSTATUS=0 WHERE MSTATUS=1 and (SELECT TIMEDIFF(now(), SRDATE)) >= '72:00:00';

/*모집중&모집완료가 모집마감일자를 지났을때 자동으로 지난모임으로 표시*/
CREATE EVENT ACTIONEVENT ON SCHEDULE
EVERY 1 SECOND 
STARTS '2020-01-01 00:00:00'
DO
UPDATE BOARD B JOIN MEMBER M ON M.MNUM = B.MNUM SET B.BACTION=2, M.SCORE = M.SCORE + 10 WHERE (B.BACTION=0 OR B.BACTION=1) AND(SELECT TIMEDIFF(NOW(), B.BDATE))>='00:00:01';
/*UPDATE `member` M JOIN BOARD B ON M.MNUM = B.MNUM SET M.SCORE + 10 WHERE BACTION=2;*/

SELECT BNUM,BACTION,BDATE FROM BOARD;