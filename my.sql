
select * FROM CAFE_PRODUCT where CAFE_PRODUCT_CODE=1;

select * FROM CAFE_CART where cart_code= (select MAX(cart_code) FROM CAFE_CART);

update CAFE_CART set cart_num=cart_num+1 where cart_code=1;


 
select * from CAFE_CART a , CAFE_CART_ADD b where a.cart_code=b.cart_code and  customer_code=1 and cafe_product_code=3;

select * from CAFE_CART a , CAFE_CART_ADD b where a.cart_code=b.cart_code(+) and  customer_code=1 ;


select a.cart_code,a.customer_code,a.cafe_product_code,a.cart_num, nvl(b.PRODUCT_ADD_CODE,0) product_add_code from CAFE_CART a , CAFE_CART_ADD b where a.cart_code=b.cart_code(+) and  customer_code=1 and cafe_product_code=3 
minus
select a.cart_code,a.customer_code,a.cafe_product_code,a.cart_num, nvl(b.PRODUCT_ADD_CODE,0)   from CAFE_CART a , CAFE_CART_ADD b where a.cart_code=b.cart_code and  customer_code=1 and cafe_product_code=3;


 cart_code number primary key,--장바구니 코드
     customer_code number, --고객코드
     cafe_product_code number, --상품코드
     cart_num number, --장바구니에담은 상품수량
cart_code number,--장바구니 코드
    PRODUCT_ADD_CODE number, --옵션코드(fk)

select a.cart_code,a.customer_code,a.cafe_product_code,a.cart_num, nvl(b.PRODUCT_ADD_CODE,0) product_add_code from CAFE_CART a , CAFE_CART_ADD b where a.cart_code=b.cart_code(+) and  customer_code=1 order by cart_code;


select sum(cart_num) from cafe_cart where customer_code=1;  --해당고객의 주문 총 건수(음료잔수)

select a.cart_num , b.cafe_product_price , a.cart_num*b.cafe_product_price order_web_total from CAFE_CART a, CAFE_PRODUCT b where a.cafe_product_code=b.cafe_product_code and customer_code=1;      --해당고객의 상품별 금액

select sum(order_web_total) from(
select a.cart_num , b.cafe_product_price , a.cart_num*b.cafe_product_price order_web_total from CAFE_CART a, CAFE_PRODUCT b where a.cafe_product_code=b.cafe_product_code and customer_code=1)
;   -- 해당고객의 주문 총 금액

select * FROM CAFE_ORDER_WEB;
delete from CAFE_ORDER_WEB;

DESC CAFE_ORDER_WEB;
select * FROM CAFE_ORDER_WEB;
 order_web_code number PRIMARY KEY, --주문 코드
 order_web_total number, --총 금액
 order_web_count number,--건수
 order_web_date date,--주문 일자
 customer_code number, --고객코드(fk
 
 
insert into CAFE_ORDER_WEB(order_web_code,order_web_total,order_web_count,order_web_date,customer_code)
select 
CAFE_ORDERList_web
(
orderList_web_code number primary key,--주문 내역 코드
cafe_product_code number, --상품코드
orderList_web_count number,--수량
order_web_code number,--주문코드(fk)

insert into CAFE_ORDERList_web(orderList_web_code)

 select * FROM CAFE_CART where customer_code=1 order by cart_code; 
 select max(order_web_code) from CAFE_ORDER_WEB ;
 
 select * FROM CAFE_ORDER_WEB where customer_code=1 order by order_web_code desc;
 
  
 select a.orderList_web_code,a.cafe_product_code,a.orderList_web_count,a.order_web_code,nvl(b.PRODUCT_ADD_CODE,0) product_add_code
 from CAFE_ORDERList_web a, CAFE_ORDERLIST_ADD_web b
 where a.orderList_web_code=b.orderlist_web_code(+) and a.order_web_code=1 order by a.orderList_web_code,b.product_add_code ;
 
 
 
 select count(*) FROM CAFE_ORDER_WEB where order_web_check=0 ;
 
 