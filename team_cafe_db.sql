----------------------------------------------------------------------------------------------------------------------------
--                                                      drop
----------------------------------------------------------------------------------------------------------------------------

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
    customer_phone varchar2(50), --고객 전화번호
    customer_birth varchar2(30), -- 고객 생년월일
    customer_gender varchar2(10), --고객 성별
    customer_pwd varchar2(30),  --고객 비밀번호
--    customer_phone varchar(30) PRIMARY key,    
--    customer_name varchar2(40),      
    customer_stamp number --스탬프
);  


 --직급테이블
create table CAFE_JOB(     
    job_code number not null unique,           --직급코드
    job_name varchar(20) primary key,          --직급이름
    job_tpay varchar(20) ,                     --시급
    job_mpay varchar(20)                       --월급
    );

--직원테이블
create table CAFE_EMPLOYEE(   
    employee_code number primary key,            --직원코드
    employee_name varchar(20) not null unique,   --직원이름
    employee_jumin varchar(20) not null ,        --직원주민번호  
    employee_phone varchar(20) ,                 --직원핸드폰번호
    employee_address varchar(50),                --직원주소
    employee_startdate date not null,            --입사날짜
    employee_enddate date,                       --퇴사날짜
    employee_endyn varchar(1),                   --퇴사여부
    employee_bank varchar(20),                   --은행명
    employee_bankaddress varchar(30),            --계좌번호
    employee_jobname varchar(20) not null REFERENCES CAFE_JOB(job_name)   --직급이름
    );

--근태 테이블
create table cafe_emptna        
(   emptna_code number primary key,                                       --근태코드            
    emptna_empcode number REFERENCES CAFE_EMPLOYEE (employee_code),       --직원코드
    emptna_year number(4) not null,                                       --근무한년
    emptna_month number(2) not null,                                      --근무한월
    emptna_day number(2) not null,                                        --근무한일
    emptna_starttime varchar(10),                                         --출근시간
    emptna_endtime varchar(10),                                           --퇴근시간
    emptna_daytotaltime varchar(10),                                      --하루 총 일한시간
    emptna_monthtotaltime varchar(10)                                     --한달동안 일한시간
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

select * from Cafe_account;


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
 productOrderList_code number primary key,--코드
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
    
    CONSTRAINT orderList_web_code_add FOREIGN KEY(orderList_web_code) REFERENCES CAFE_ORDERList_web(orderList_web_code),
    CONSTRAINT PRODUCT_ADD_CODE_order_add FOREIGN KEY(PRODUCT_ADD_CODE) REFERENCES CAFE_Product_add(PRODUCT_ADD_CODE)
);


----------------------------------------------------------------------------------------------------------------------------
--                                                      insert
----------------------------------------------------------------------------------------------------------------------------
insert into CAFE_PRODUCT_ADD(PRODUCT_ADD_CODE, PRODUCT_ADD_NAME,PRODUCT_ADD_PRICE) values(1,'샷추가',500);
insert into CAFE_PRODUCT_ADD(PRODUCT_ADD_CODE, PRODUCT_ADD_NAME,PRODUCT_ADD_PRICE) values(2,'시럽추가',500);
insert into CAFE_PRODUCT_ADD(PRODUCT_ADD_CODE, PRODUCT_ADD_NAME,PRODUCT_ADD_PRICE) values(3,'버블추가',700);
insert into CAFE_PRODUCT_ADD(PRODUCT_ADD_CODE, PRODUCT_ADD_NAME,PRODUCT_ADD_PRICE) values(4,'휘핑추가',700);

insert into CAFE_PRODUCT_CATEGORY(PRODUCT_CATEGORY_CODE, PRODUCT_CATEGORY_NAME) values(1,'coffe');
insert into CAFE_PRODUCT_CATEGORY(PRODUCT_CATEGORY_CODE, PRODUCT_CATEGORY_NAME) values(2,'non-coffe');
insert into CAFE_PRODUCT_CATEGORY(PRODUCT_CATEGORY_CODE, PRODUCT_CATEGORY_NAME) values(3,'juice');
 
 
commit;

