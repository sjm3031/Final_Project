----------------------------------------------------------------------------------------------------------------------------
--                                                      drop
----------------------------------------------------------------------------------------------------------------------------

--web�ֹ�
DROP TABLE CAFE_ORDERLIST_ADD_web;
DROP TABLE CAFE_ORDERList_web;
DROP TABLE CAFE_ORDER_WEB;
DROP TABLE CAFE_CART_ADD;
DROP TABLE CAFE_CART;

--�ǸŻ�ǰ
DROP TABLE CAFE_PRODUCT;
DROP TABLE CAFE_PRODUCT_ADD;
DROP TABLE CAFE_PRODUCT_CATEGORY;

--���
drop table CAFE_PRODUCTORDERLIST;
drop table CAFE_PRODUCTORDER;
drop table Cafe_order_cart;
drop table Cafe_stock;
drop table Cafe_account;

--�λ�
DROP TABLE cafe_salary;
DROP TABLE cafe_emptna;
DROP TABLE CAFE_EMPLOYEE;
DROP TABLE CAFE_JOB;

--����
DROP TABLE CAFE_CUSTOMER;


----------------------------------------------------------------------------------------------------------------------------
--                                                      create
----------------------------------------------------------------------------------------------------------------------------
--����
create table CAFE_CUSTOMER(                    
    customer_code number UNIQUE, --�����ڵ�  
    customer_name varchar2(30), --������
    customer_phone varchar2(50) PRIMARY key, --���� ��ȭ��ȣ
    customer_birth varchar2(30), -- ���� �������
    customer_gender varchar2(10), --���� ����
    customer_pwd varchar2(30),  --���� ��й�ȣ
--    customer_phone varchar(30) PRIMARY key,    
--    customer_name varchar2(40),      
    customer_stamp number --������
);


--�λ�
 --�������̺�
create table CAFE_JOB(      
    job_code number not null unique,          
    job_name varchar(20) primary key,          
    job_tpay number(20),                    
    job_mpay number(20)                      
    );

--�������̺�
create table CAFE_EMPLOYEE(  
    employee_code number primary key,          
    employee_name varchar(20) not null unique,   
    employee_jumin varchar(20) not null ,          
    employee_phone varchar(20) ,                
    employee_address varchar(50),               
    employee_startdate date not null,            
    employee_enddate date,                       
    employee_endyn varchar(1),                   
    employee_bank varchar(20),                   
    employee_bankaddress varchar(30),            
    employee_jobname varchar(20) not null REFERENCES CAFE_JOB(job_name)   
    );

--���� ���̺�
create table cafe_emptna(        
        emptna_code number primary key,                                                  
        emptna_empcode number REFERENCES CAFE_EMPLOYEE (employee_code),   
        emptna_year number not null,                                          
        emptna_month number not null,                                       
        emptna_day number not null,                                         
        emptna_starttime number not null,                                              
        emptna_endtime number,                                                
        emptna_daytotaltime number(10),                                           
        emptna_monthtotaltime number(10)                                          
    );

--�޿� ���̺�    
create table cafe_salary(
    salary_code number not null primary key,
    salary_empcode number not null REFERENCES CAFE_EMPLOYEE (employee_code),
    salary_year number not null,
    salary_month number not null,
    salary_time number not null,
    salary_tpay number not null,
    salary_mpay number not null,
    salary_totalpay number not null,
    salary_date number not null
    );


--���
--�ŷ�ó ���̺�
create table Cafe_account (
account_number number(30) PRIMARY key, --�ŷ�ó �ڵ�
account_name VARCHAR2(30),  -- �ŷ�ó ��
account_ceoname VARCHAR2(30),  -- �ŷ�ó ����ڸ�
account_address VARCHAR2(50), -- �ּ�
account_email VARCHAR2(100) -- email
);



--����� ���̺�
CREATE table Cafe_stock (
stock_code NUMBER PRIMARY KEY, --����� �ڵ�
stock_productname VARCHAR2(30), --ǰ��
stock_detailname VARCHAR2(50), --�󼼸�
stock_standard VARCHAR2(30), --�԰�
stock_price VARCHAR2(50), --�ݾ�
stock_image VARCHAR2(100), -- �̹���
account_number NUMBER(30)  --�ŷ�ó �ڵ�
);
alter table Cafe_stock add CONSTRAINT account_number FOREIGN KEY (account_number) 
REFERENCES Cafe_account(account_number) on delete set null;

-- ���ֳ��� ���� ���̺�
create table Cafe_order_cart( 
cart_number number, -- ������ȣ
cart_stock_productname VARCHAR2(30), -- ���� ǰ��
cart_stock_detailname VARCHAR2(50), -- ���� �󼼸�
cart_stock_price number, -- ���� �ߺ�ǰ�� �ݾ�
cart_stock_quantity NUMBER, -- ���� ����
stock_code number,
PRODUCTORDER_CODE number,
ACCOUNT_NUMBER number
);

--���� ���̺�
CREATE TABLE CAFE_PRODUCTORDER
(
productOrder_code number primary key,--�ڵ�
productOrder_date date,--��¥
prodectOrder_total number--�ѱݾ�
);

--���� �󼼳��� ���̺�
CREATE TABLE CAFE_PRODUCTORDERLIST 
(
 productOrderList_code number ,--�ڵ�
 productOrderList_count number,--����
 productOrder_code number, --�������̺� �ڵ�(fk)
 stock_code number,--������ǰ���̺� �ڵ�(fk)
 
 CONSTRAINT productOrder_code FOREIGN KEY(productOrder_code) REFERENCES CAFE_PRODUCTORDER(productOrder_code) on delete cascade,
 CONSTRAINT stock_code FOREIGN KEY(stock_code) REFERENCES Cafe_stock(stock_code) on delete set null
);







--�ǸŻ�ǰ
--��ǰ ī�װ��� ���̺�
CREATE TABLE CAFE_PRODUCT_CATEGORY(
    PRODUCT_CATEGORY_CODE  NUMBER PRIMARY KEY, --��ǰī�װ��� �ڵ�
    PRODUCT_CATEGORY_NAME VARCHAR2(50) NOT NULL --��ǰī�װ�����
);
 -- ���� �߰� ���� : EX)���߰� �����߰�
 create table CAFE_PRODUCT_ADD(
    PRODUCT_ADD_CODE NUMBER PRIMARY KEY,
    PRODUCT_ADD_NAME VARCHAR2(50) NOT NULL,
    PRODUCT_ADD_PRICE NUMBER
 );
--��ǰ ���̺�
CREATE TABLE CAFE_PRODUCT(
    CAFE_PRODUCT_CODE NUMBER PRIMARY KEY, --��ǰ �ڵ�
    CAFE_PRODUCT_NAME VARCHAR2(50) NOT NULL, --��ǰ��
    CAFE_PRODUCT_PRICE NUMBER, --����
    CAFE_PRODUCT_IMG VARCHAR2(100), --�̹���
    PRODUCT_CATEGORY_CODE NUMBER, --ī�װ����ڵ�
    
    CONSTRAINT PRODUCT_CATEGORY_CODE FOREIGN KEY(PRODUCT_CATEGORY_CODE) REFERENCES CAFE_PRODUCT_CATEGORY(PRODUCT_CATEGORY_CODE) 
);


--web�ֹ�
--��ٱ���
CREATE TABLE CAFE_CART(
     cart_code number primary key,--��ٱ��� �ڵ�
     customer_code number, --�����ڵ�
     cafe_product_code number, --��ǰ�ڵ�
     cart_num number, --��ٱ��Ͽ����� ��ǰ����

    CONSTRAINT customer_code_cart FOREIGN KEY(customer_code) REFERENCES CAFE_CUSTOMER(customer_code),
    CONSTRAINT cafe_product_code_cart FOREIGN KEY(cafe_product_code) REFERENCES CAFE_PRODUCT(cafe_product_code)
);

--��ٱ����� �ɼǳ��� ���̺�
CREATE TABLE CAFE_CART_ADD(
    cart_code number,--��ٱ��� �ڵ�
    PRODUCT_ADD_CODE number, --�ɼ��ڵ�(fk)
    
    CONSTRAINT cart_code_cart_Add FOREIGN KEY(cart_code) REFERENCES CAFE_CART(cart_code),
    CONSTRAINT PRODUCT_ADD_CODE_cart_add FOREIGN KEY(PRODUCT_ADD_CODE) REFERENCES CAFE_Product_add(PRODUCT_ADD_CODE)
);

--�ֹ� ���̺� -  -web
CREATE TABLE CAFE_ORDER_WEB
(
 order_web_code number PRIMARY KEY, --�ֹ� �ڵ�
 order_web_total number, --�� �ݾ�
 order_web_count number,--�Ǽ�
 order_web_date date,--�ֹ� ����
 customer_code number, --�����ڵ�(fk)
 order_web_check number, --�ֹ�Ȯ�� (0:�ֹ�����Ȯ���� 1:�ֹ������Ϸ�)
 
CONSTRAINT customer_code_web FOREIGN KEY(customer_code) REFERENCES CAFE_CUSTOMER(customer_code)
 
);

--�ֹ� ���� ���̺�      -web
CREATE TABLE CAFE_ORDERList_web
(
orderList_web_code number primary key,--�ֹ� ���� �ڵ�
cafe_product_code number, --��ǰ�ڵ�
orderList_web_count number,--����
order_web_code number,--�ֹ��ڵ�(fk)

CONSTRAINT order_web_code FOREIGN KEY(order_web_code) REFERENCES CAFE_ORDER_WEB(order_web_code),
CONSTRAINT cafe_product_code_order_web FOREIGN KEY(cafe_product_code) REFERENCES CAFE_PRODUCT(cafe_product_code)
);

--�ֹ� ���� ���̺� �� �ɼǳ��� ���̺�
CREATE TABLE CAFE_ORDERLIST_ADD_web(
    orderList_web_code number, --�ֹ� ���� �ڵ�
    PRODUCT_ADD_CODE number, --�ɼ��ڵ�(fk)
    
    CONSTRAINT orderList_web_code_add FOREIGN KEY(orderList_web_code) REFERENCES CAFE_ORDERList_web(orderList_web_code),
    CONSTRAINT PRODUCT_ADD_CODE_order_add FOREIGN KEY(PRODUCT_ADD_CODE) REFERENCES CAFE_Product_add(PRODUCT_ADD_CODE)
);


----------------------------------------------------------------------------------------------------------------------------
--                                                      insert
----------------------------------------------------------------------------------------------------------------------------
insert into CAFE_PRODUCT_ADD(PRODUCT_ADD_CODE, PRODUCT_ADD_NAME,PRODUCT_ADD_PRICE) values(1,'���߰�',500);
insert into CAFE_PRODUCT_ADD(PRODUCT_ADD_CODE, PRODUCT_ADD_NAME,PRODUCT_ADD_PRICE) values(2,'�÷��߰�',500);
insert into CAFE_PRODUCT_ADD(PRODUCT_ADD_CODE, PRODUCT_ADD_NAME,PRODUCT_ADD_PRICE) values(3,'�����߰�',700);
insert into CAFE_PRODUCT_ADD(PRODUCT_ADD_CODE, PRODUCT_ADD_NAME,PRODUCT_ADD_PRICE) values(4,'�����߰�',700);

insert into CAFE_PRODUCT_CATEGORY(PRODUCT_CATEGORY_CODE, PRODUCT_CATEGORY_NAME) values(1,'coffe');
insert into CAFE_PRODUCT_CATEGORY(PRODUCT_CATEGORY_CODE, PRODUCT_CATEGORY_NAME) values(2,'non-coffe');
insert into CAFE_PRODUCT_CATEGORY(PRODUCT_CATEGORY_CODE, PRODUCT_CATEGORY_NAME) values(3,'juice');
 
 
commit;
