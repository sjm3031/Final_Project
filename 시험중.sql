create table 장바구니(
    장바구니코드  number,
    고객 VARCHAR2(20),
    상품 VARCHAR2(20),
    수량 number
);

create table 장바구니옵션내역(
    장바구니코드  number,
    옵션 VARCHAR2(20)
);

insert into "장바구니" VALUES(1,'홍길동','아메리카노',1);
insert into "장바구니" VALUES(2,'홍길동','아메리카노',1);
insert into "장바구니옵션내역" VALUES(2,'샷추가');
insert into "장바구니" VALUES(3,'홍길동','아메리카노',1);
insert into "장바구니옵션내역" VALUES(3,'샷추가');
insert into "장바구니옵션내역" VALUES(3,'버블추가');
insert into "장바구니" VALUES(4,'홍길동','라떼',1);
insert into "장바구니옵션내역" VALUES(4,'샷추가');
insert into "장바구니옵션내역" VALUES(4,'버블추가');

select * from "장바구니" , "장바구니옵션내역" where "장바구니"."장바구니코드"="장바구니옵션내역"."장바구니코드"(+) ORDER BY "장바구니"."장바구니코드" ;


SELECT 장바구니코드 FROM "장바구니" where "고객"='홍길동' and "상품"='아메리카노';

rollback;

