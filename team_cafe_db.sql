----------------------------------------------------------------------------------------------------------------------------
--                                                      drop
----------------------------------------------------------------------------------------------------------------------------
--pos 기타
DROP TABLE CAFE_POSPASSWORD;
DROP TABLE CAFE_ACCOUNTS;
DROP TABLE CAFE_reserveFund;

--pos 주문
DROP TABLE CAFE_ORDERLIST_ADD;
DROP TABLE CAFE_ORDERList;
DROP TABLE CAFE_ORDER;

--web주문
DROP TABLE CAFE_ORDERLIST_ADD_web;
DROP TABLE CAFE_ORDERList_web;
DROP TABLE CAFE_ORDER_WEB;
DROP TABLE CAFE_CART_ADD;
DROP TABLE CAFE_CART;

--판매상품
DROP TABLE CAFE_PRODUCT;
DROP TABLE CAFE_PRODUCT_ADD;
DROP TABLE CAFE_PRODUCT_CATEGORY;

--재고
drop table CAFE_PRODUCTORDERLIST;
drop table CAFE_PRODUCTORDER;
drop table Cafe_order_cart;
drop table Cafe_stock;
drop table Cafe_account;

--인사
DROP TABLE cafe_salary;
DROP TABLE cafe_emptna;
DROP TABLE CAFE_EMPLOYEE;
DROP TABLE CAFE_JOB;

--고객
DROP TABLE CAFE_CUSTOMER;


----------------------------------------------------------------------------------------------------------------------------
--                                                      create
----------------------------------------------------------------------------------------------------------------------------
--고객
create table CAFE_CUSTOMER(                    
    customer_code number UNIQUE, --고객코드  
    customer_name varchar2(30), --고객명
    customer_phone varchar2(50) PRIMARY key, --고객 전화번호
    customer_birth varchar2(30), -- 고객 생년월일
    customer_gender varchar2(10), --고객 성별
    customer_pwd varchar2(30),  --고객 비밀번호
--    customer_phone varchar(30) PRIMARY key,    
--    customer_name varchar2(40),      
    customer_stamp number --스탬프
);


--인사
 --직급테이블
create table CAFE_JOB(      
    job_code number not null unique,   --직급코드       
    job_name varchar(20) primary key,         --직급명
    job_tpay number(20),                       --시급
    job_mpay number(20)                         --월급
    );

--직원테이블
create table CAFE_EMPLOYEE(  
    employee_code number primary key,          --직원코드
    employee_name varchar(20) not null unique,   --직원 이름
    employee_jumin varchar(20) not null ,          --직원 주민번호
    employee_phone varchar(20) ,                --핸드폰번호
    employee_address varchar(50),               --주소
    employee_startdate date not null,            --입사날짜
    employee_enddate date,                       --퇴사날짜
    employee_endyn varchar(1),                   --퇴사 여부(y:퇴사, n:재직중) 
    employee_bank varchar(20),                   --은행
    employee_bankaddress varchar(30),            --계좌번호
    employee_jobname varchar(20) not null REFERENCES CAFE_JOB(job_name)   --직급명
    );

--근태 테이블
create table cafe_emptna(   
        emptna_code number primary key,                                      --직급코드            
        emptna_empcode number REFERENCES CAFE_EMPLOYEE (employee_code),     --직원코드
        emptna_year number not null,                                          --년
        emptna_month number not null,                                       --월
        emptna_day number not null,                                         --일
        emptna_starttime date not null,                                        --출근시간      
        emptna_endtime date,                                                --퇴근시간
        emptna_daytotaltime number                                           --하루 근무시간                              
    );

--급여 테이블    
create table cafe_salary(
    salary_code number not null primary key,                                    --급여코드
    salary_empcode number not null REFERENCES CAFE_EMPLOYEE (employee_code),    --직원코드
    salary_year number not null,                                                --년
    salary_month number not null,                                              --월
    salary_time number not null,                                              --총 근무 시간
    salary_tpay number not null,                                              --시급
    salary_mpay number not null,                                              --월급
    salary_totalpay number not null,                                           --총급여
    salary_date number not null                                                 --급여지급일
    );


--재고
--거래처 테이블
create table Cafe_account (
account_number number(30) PRIMARY key, --거래처 코드
account_name VARCHAR2(30),  -- 거래처 명
account_ceoname VARCHAR2(30),  -- 거래처 사업자명
account_address VARCHAR2(50), -- 주소
account_email VARCHAR2(100) -- email
);



--원재료 테이블
CREATE table Cafe_stock (
stock_code NUMBER PRIMARY KEY, --원재료 코드
stock_productname VARCHAR2(30), --품명
stock_detailname VARCHAR2(50), --상세명
stock_standard VARCHAR2(30), --규격
stock_price VARCHAR2(50), --금액
stock_image VARCHAR2(100), -- 이미지
account_number NUMBER(30)  --거래처 코드
);
alter table Cafe_stock add CONSTRAINT account_number FOREIGN KEY (account_number) 
REFERENCES Cafe_account(account_number) on delete set null;

-- 발주내용 담기용 테이블
create table Cafe_order_cart( 
cart_number number, -- 담은번호
cart_stock_productname VARCHAR2(30), -- 담은 품명
cart_stock_detailname VARCHAR2(50), -- 담은 상세명
cart_stock_price number, -- 담은 발부품의 금액
cart_stock_quantity NUMBER, -- 담은 수량
stock_code number,
PRODUCTORDER_CODE number,
ACCOUNT_NUMBER number
);

--발주 테이블
CREATE TABLE CAFE_PRODUCTORDER
(
productOrder_code number primary key,--코드
productOrder_date date,--날짜
prodectOrder_total number--총금액
);

--발주 상세내역 테이블
CREATE TABLE CAFE_PRODUCTORDERLIST 
(
 productOrderList_code number ,--코드
 productOrderList_count number,--수량
 productOrder_code number, --발주테이블 코드(fk)
 stock_code number,--원재료상품테이블 코드(fk)
 
 CONSTRAINT productOrder_code FOREIGN KEY(productOrder_code) REFERENCES CAFE_PRODUCTORDER(productOrder_code) on delete cascade,
 CONSTRAINT stock_code FOREIGN KEY(stock_code) REFERENCES Cafe_stock(stock_code) on delete set null
);


--판매상품
--상품 카테고리 테이블
CREATE TABLE CAFE_PRODUCT_CATEGORY(
    PRODUCT_CATEGORY_CODE  NUMBER PRIMARY KEY, --상품카테고리 코드
    PRODUCT_CATEGORY_NAME VARCHAR2(50) NOT NULL --상품카테고리명
);
 -- 음료 추가 사항 : EX)샷추가 휘핑추가
 create table CAFE_PRODUCT_ADD(
    PRODUCT_ADD_CODE NUMBER PRIMARY KEY,
    PRODUCT_ADD_NAME VARCHAR2(50) NOT NULL,
    PRODUCT_ADD_PRICE NUMBER
 );
--상품 테이블
CREATE TABLE CAFE_PRODUCT(
    CAFE_PRODUCT_CODE NUMBER PRIMARY KEY, --상품 코드
    CAFE_PRODUCT_NAME VARCHAR2(50) NOT NULL, --상품명
    CAFE_PRODUCT_PRICE NUMBER, --가격
    CAFE_PRODUCT_IMG VARCHAR2(100), --이미지
    PRODUCT_CATEGORY_CODE NUMBER, --카테고리코드
    
    CONSTRAINT PRODUCT_CATEGORY_CODE FOREIGN KEY(PRODUCT_CATEGORY_CODE) REFERENCES CAFE_PRODUCT_CATEGORY(PRODUCT_CATEGORY_CODE) 
);


--web주문
--장바구니
CREATE TABLE CAFE_CART(
     cart_code number primary key,--장바구니 코드
     customer_code number, --고객코드
     cafe_product_code number, --상품코드
     cart_num number, --장바구니에담은 상품수량

    CONSTRAINT customer_code_cart FOREIGN KEY(customer_code) REFERENCES CAFE_CUSTOMER(customer_code),
    CONSTRAINT cafe_product_code_cart FOREIGN KEY(cafe_product_code) REFERENCES CAFE_PRODUCT(cafe_product_code)
);

--장바구니의 옵션내역 테이블
CREATE TABLE CAFE_CART_ADD(
    cart_code number,--장바구니 코드
    PRODUCT_ADD_CODE number, --옵션코드(fk)
    
    CONSTRAINT cart_code_cart_Add FOREIGN KEY(cart_code) REFERENCES CAFE_CART(cart_code),
    CONSTRAINT PRODUCT_ADD_CODE_cart_add FOREIGN KEY(PRODUCT_ADD_CODE) REFERENCES CAFE_Product_add(PRODUCT_ADD_CODE)
);

--주문 테이블 -  -web
CREATE TABLE CAFE_ORDER_WEB
(
 order_web_code number PRIMARY KEY, --주문 코드
 order_web_total number, --총 금액
 order_web_count number,--건수
 order_web_date date,--주문 일자
 customer_code number, --고객코드(fk)
 order_web_check number, --주문확인 (0:주문접수확인중 1:주문접수완료)
 
CONSTRAINT customer_code_web FOREIGN KEY(customer_code) REFERENCES CAFE_CUSTOMER(customer_code)
 
);

--주문 내역 테이블      -web
CREATE TABLE CAFE_ORDERList_web
(
orderList_web_code number primary key,--주문 내역 코드
cafe_product_code number, --상품코드
orderList_web_count number,--수량
order_web_code number,--주문코드(fk)

CONSTRAINT order_web_code FOREIGN KEY(order_web_code) REFERENCES CAFE_ORDER_WEB(order_web_code),
CONSTRAINT cafe_product_code_order_web FOREIGN KEY(cafe_product_code) REFERENCES CAFE_PRODUCT(cafe_product_code)
);

--주문 내역 테이블 의 옵션내역 테이블
CREATE TABLE CAFE_ORDERLIST_ADD_web(
    orderList_web_code number, --주문 내역 코드
    PRODUCT_ADD_CODE number, --옵션코드(fk)
    
    CONSTRAINT orderList_web_code_add_web FOREIGN KEY(orderList_web_code) REFERENCES CAFE_ORDERList_web(orderList_web_code),
    CONSTRAINT PRODUCT_ADD_CODE_order_add_web FOREIGN KEY(PRODUCT_ADD_CODE) REFERENCES CAFE_Product_add(PRODUCT_ADD_CODE)
);


--pos 주문
--주문 테이블
CREATE TABLE CAFE_ORDER
(
 order_code number PRIMARY KEY, --주문 코드
 order_total number, --총 금액
 order_count number,--건수
 order_accountType varchar2(30),--결제수단
 order_date date,--주문 일자
 customer_phone varchar2(50), --고객전화번호(fk)
 
CONSTRAINT customer_phone FOREIGN KEY(customer_phone) REFERENCES CAFE_CUSTOMER(customer_phone)
 
);

--주문 내역 테이블
CREATE TABLE CAFE_ORDERList
(
orderList_code number primary key,--상세내역 코드
cafe_product_code number,-- 상품코드
orderList_count number,--수량
order_code number,--주문코드(fk)

CONSTRAINT order_code FOREIGN KEY(order_code) REFERENCES CAFE_ORDER(order_code),
CONSTRAINT cafe_product_code_order FOREIGN KEY(cafe_product_code) REFERENCES CAFE_PRODUCT(cafe_product_code)
);

--주문 내역 테이블의 옵션내역 테이블
CREATE TABLE CAFE_ORDERLIST_ADD(
    orderList_code number, --주문 내역 코드
    PRODUCT_ADD_CODE number, --옵션코드(fk)
    
    CONSTRAINT orderList_code_add FOREIGN KEY(orderList_code) REFERENCES CAFE_ORDERList(orderList_code),
    CONSTRAINT PRODUCT_ADD_CODE_order_add FOREIGN KEY(PRODUCT_ADD_CODE) REFERENCES CAFE_Product_add(PRODUCT_ADD_CODE)
);



-- pos 비밀번호 테이블
CREATE TABLE CAFE_POSPASSWORD
(
 POSPASSWORD_PWD varchar2(30)  --POS 비밀번호
 );

--POS 준비금 테이블 
 CREATE TABLE CAFE_reserveFund
(
 reserveFund_code number PRIMARY KEY,    --코드
 reserveFund_startTime date, --시작시각
 reserveFund_endTime date,   --종료시각
 reserveFund_total number    --영업 준비금
 );
 
 --일일정산테이블
CREATE TABLE CAFE_ACCOUNTS
(
    accounts_code number PRIMARY KEY,    --정산코드
    accounts_total number,               -- 총 매출액
    accounts_card number,                   --카드 매출액
    accounts_cash number,                --현금 매출액
    accounts_saleCount number,           -- 총 주문 건수
    accounts_startSell date,            -- 영업 시작 시간
    accounts_endSell date,              -- 영업 마감 시간
    reserveFund_code number,             -- POS 시작일 코드
    
    CONSTRAINT reserveFund_code FOREIGN KEY(reserveFund_code) REFERENCES CAFE_reserveFund(reserveFund_code)
);

    
----------------------------------------------------------------------------------------------------------------------------
--                                                      insert
----------------------------------------------------------------------------------------------------------------------------
--제품관리
insert into CAFE_PRODUCT_ADD(PRODUCT_ADD_CODE, PRODUCT_ADD_NAME,PRODUCT_ADD_PRICE) values(1,'샷추가',500);
insert into CAFE_PRODUCT_ADD(PRODUCT_ADD_CODE, PRODUCT_ADD_NAME,PRODUCT_ADD_PRICE) values(2,'시럽추가',500);
insert into CAFE_PRODUCT_ADD(PRODUCT_ADD_CODE, PRODUCT_ADD_NAME,PRODUCT_ADD_PRICE) values(3,'버블추가',700);
insert into CAFE_PRODUCT_ADD(PRODUCT_ADD_CODE, PRODUCT_ADD_NAME,PRODUCT_ADD_PRICE) values(4,'휘핑추가',700);

insert into CAFE_PRODUCT_CATEGORY(PRODUCT_CATEGORY_CODE, PRODUCT_CATEGORY_NAME) values(1,'coffe');
insert into CAFE_PRODUCT_CATEGORY(PRODUCT_CATEGORY_CODE, PRODUCT_CATEGORY_NAME) values(2,'non-coffe');
insert into CAFE_PRODUCT_CATEGORY(PRODUCT_CATEGORY_CODE, PRODUCT_CATEGORY_NAME) values(3,'juice');

insert into CAFE_PRODUCT values(1,'에스프레소',2500,'에스프레소.jpg',1);
insert into CAFE_PRODUCT values(2,'아이스아메리카노',4000,'아아.png',1);
insert into CAFE_PRODUCT values(3,'아이스라떼',4500,'라떼.jpg',1);
insert into CAFE_PRODUCT values(4,'카푸치노',4500,'카푸치노.jpg',1);
insert into CAFE_PRODUCT values(5,'카라멜마끼아또',5000,'카라멜마끼아또.jpg',1);
insert into CAFE_PRODUCT values(6,'아이스카페모카',5000,'카페모카.jpg',1);

insert into CAFE_PRODUCT values(7,'그린티라떼',5500,'그린티.jpg',2);
insert into CAFE_PRODUCT values(8,'오곡라떼',5500,'오곡라떼.jpg',2);
insert into CAFE_PRODUCT values(9,'딸기라떼',5500,'딸기라떼.jpg',2);
insert into CAFE_PRODUCT values(10,'자몽에이드',4000,'자몽에이드.jpg',2);
insert into CAFE_PRODUCT values(11,'레몬에이드',4000,'레몬에이드.jpg',2);
insert into CAFE_PRODUCT values(12,'오렌지에이드',4000,'오렌지에이드.jpg',2);
insert into CAFE_PRODUCT values(13,'아이스티',2500,'아이스티.jpg',2);
insert into CAFE_PRODUCT values(14,'홍차',2500,'tea.jpg',2);

insert into CAFE_PRODUCT values(15,'키위주스',6000,'키위주스.png',3);
insert into CAFE_PRODUCT values(16,'바닐라쉐이크',6000,'바닐라쉐이크.jpg',3);
insert into CAFE_PRODUCT values(17,'초코쉐이크',6000,'초코쉐이크.jpg',3);
insert into CAFE_PRODUCT values(18,'쿠키쉐이크',6000,'초코쿠키쉐이크.jpg',3);
 
 
--직원관리
INSERT INTO CAFE_JOB VALUES (1,'매니저',0,2000000);
INSERT INTO CAFE_JOB VALUES (2,'아르바이트',8590,0);
INSERT INTO CAFE_JOB VALUES (3,'아르바이트pro',9000,0);


--pos 비밀번호
INSERT INTO CAFE_POSPASSWORD VALUES ('PASSWORD');

-- pos 주문과 주문내역 >> erp main 화면의 bestseller 출력을 위해
INSERT INTO CAFE_ORDER VALUES (1,4000,1,'현금',sysdate,'');
INSERT INTO CAFE_ORDERList VALUES (1,2,1,1);

 -------account----------
 insert into cafe_account (account_number, account_name, account_ceoname, account_address, account_email)
 values(1, 'kosta', '코스', '가산디지털1로 181 더블유센터 3층', 'kosta@kosta.com');
 insert into cafe_account (account_number, account_name, account_ceoname, account_address, account_email)
 values(2, 'jino', '김진호', '도봉구 창2동 192-2 1층', 'jino@jino.com');
 
 -------stock-----------
 insert into cafe_stock (stock_code, stock_productname, stock_detailname, stock_standard, stock_price, stock_image, account_number)
 values((select NVL(max(stock_code),0) + 1 from cafe_stock), '음료', '청포도곤약버블티', '300g', 1000, '청포도곤약버블티.jpg', 1);
 insert into cafe_stock (stock_code, stock_productname, stock_detailname, stock_standard, stock_price, stock_image, account_number)
 values((select NVL(max(stock_code),0) + 1 from cafe_stock), '원두', '안티구아원두', '500g', 4000, '안티구아원두.jpg', 1);
 insert into cafe_stock (stock_code, stock_productname, stock_detailname, stock_standard, stock_price, stock_image, account_number)
 values((select NVL(max(stock_code),0) + 1 from cafe_stock), '재과', '마카롱', '200g', 2000, '마카롱.jpg', 1);
  insert into cafe_stock (stock_code, stock_productname, stock_detailname, stock_standard, stock_price, stock_image, account_number)
 values((select NVL(max(stock_code),0) + 1 from cafe_stock), '기타', '빨대', '50g', 200, '빨대.jpg', 2);
  insert into cafe_stock (stock_code, stock_productname, stock_detailname, stock_standard, stock_price, stock_image, account_number)
 values((select NVL(max(stock_code),0) + 1 from cafe_stock), '기타', '커피컵', '150개', 2000, '커피컵.jpg', 2);


--고객
insert into CAFE_CUSTOMER(customer_code, customer_name,customer_phone,customer_birth,customer_gender,customer_pwd,customer_stamp) values(1,'이지우','0101524236','951201','f','12341234',1);
insert into CAFE_CUSTOMER(customer_code, customer_name,customer_phone,customer_birth,customer_gender,customer_pwd,customer_stamp) values(2,'김민준','01042568125','960404','m','5124369',6);
insert into CAFE_CUSTOMER(customer_code, customer_name,customer_phone,customer_birth,customer_gender,customer_pwd,customer_stamp) values(3,'박서윤','01036259152','970203','f','51236812',4);
insert into CAFE_CUSTOMER(customer_code, customer_name,customer_phone,customer_birth,customer_gender,customer_pwd,customer_stamp) values(4,'최서연','01014256845','910812','f','81818181',3);
insert into CAFE_CUSTOMER(customer_code, customer_name,customer_phone,customer_birth,customer_gender,customer_pwd,customer_stamp) values(5,'김민서','01082536495','920105','f','5742812',2);
insert into CAFE_CUSTOMER(customer_code, customer_name,customer_phone,customer_birth,customer_gender,customer_pwd,customer_stamp) values(6,'박주원','01043624511','950824','m','15151515',1);
insert into CAFE_CUSTOMER(customer_code, customer_name,customer_phone,customer_birth,customer_gender,customer_pwd,customer_stamp) values(7,'지하윤','01025258152','830502','f','52520101',3);
insert into CAFE_CUSTOMER(customer_code, customer_name,customer_phone,customer_birth,customer_gender,customer_pwd,customer_stamp) values(8,'이시우','01095123574','820405','m','95123578',3);
insert into CAFE_CUSTOMER(customer_code, customer_name,customer_phone,customer_birth,customer_gender,customer_pwd,customer_stamp) values(9,'이연우','01001472586','840608','f','14253625',3);
insert into CAFE_CUSTOMER(customer_code, customer_name,customer_phone,customer_birth,customer_gender,customer_pwd,customer_stamp) values(10,'박민규','01098746512','890712','m','78945123',5);


commit;

