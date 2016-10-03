create table product(
	p_no int not null auto_increment primary key,
    p_price int,
    p_name varchar(50),
    p_detail varchar(2000),
    p_reg_date datetime default current_timestamp,
    p_ori varchar(500),
    p_real varchar(500),
    p_path varchar(500),
    p_category1 varchar(50),
    p_category2 varchar(50)
);
		select *
		from product
		where p_category1=1
		order by p_reg_date desc
-- p_category1 :::    1 번이면 outer  //   2번이면 top //  3번이면  pants // 4번이면  shoes

-- p_category2 :::    11 이면 코트 // 12면 재킷/레더 // 13이면 가디건
--                    21 이면 니트/맨투맨  //  22면티셔츠  //  23이면  셔츠
--                    31 이면 슬랙스 //  32면  캐주얼팬츠
--                    41 이면  스니커즈  // 레이업슈즈 

delete from product

drop table product;



select *
from product

-- 여기부터 OUTER  부분 DB
insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path,p_category1,p_category2)
values ('208000','15FW COMFORTABLE WOOL SINGLE COAT [BLACK]','
# 프리오더 공지 #<br>
<br>
<br>
~11월 15일까지 23:50분까지 할인가 적용 주문 접수<br>
<br>
11월 25일(수)부터 일괄 배송<br>
<br>
기획성으로 제작된 프리오더(선 주문) 상품이므로 배송 기간이 늦어지는 점 필히 고지해주시기 바랍니다','1-11.jpg','1-11.jpg','/2016/09/26','1','11');

insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path,p_category1,p_category2)
values ('338000','LEATHER MA-1 JACKET [BLACK]','','1-12-1.jpg','1-12-1.jpg','/2016/09/26','1','12');

insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path,p_category1,p_category2)
values ('228000','LEATHER STADIUM WOOL JACKET [NAVY]','','1-12-2.jpg','1-12-2.jpg','/2016/09/26','1','12');

insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path,p_category1,p_category2)
values ('89000','메리노 트리밍 니트 자켓 [네이비]','','1-13-1.jpg','1-13-1.jpg','/2016/09/26','1','13');

insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path,p_category1,p_category2)
values ('69000','슈퍼울 스탠다드 가디건 [그레이]','','1-13-2.jpg','1-13-2.jpg','/2016/09/26','1','13');

insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path,p_category1,p_category2)
values ('69000','슈퍼울 스탠다드 가디건 [블랙]','','1-13-3.jpg','1-13-3.jpg','/2016/09/26','1','13');

insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path,p_category1,p_category2)
values ('69000','카모폴라쥬 자켓 [네이비]','','1-13-4.jpg','1-13-4.jpg','/2016/09/26','1','13');

insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path,p_category1,p_category2)
values ('69000','카모폴라쥬 자켓 (그레이)','','1-13-5.jpg','1-13-5.jpg','/2016/09/26','1','13');

insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path,p_category1,p_category2)
values ('69000','메리노 트리밍 니트 자켓 (그레이)','','1-13-6.jpg','1-13-6.jpg','/2016/09/26','1','13');

-- OUTER 끝

--여기부터 TOP DB 시작
insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path,p_category1,p_category2)
values ('48000','피마코튼 트라이앵글 니트 [그레이]','','2-11-1.jpg','2-11-1.jpg','/2016/09/26','2','11');

insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path,p_category1,p_category2)
values ('49000','피마코튼 라글란 와플 니트 [인디고]','','2-11-2.jpg','2-11-2.jpg','/2016/09/26','2','11');

insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path,p_category1,p_category2)
values ('49000','피마코튼 라글란 와플 니트 [블랙]','','2-11-3.jpg','2-11-3.jpg','/2016/09/26','2','11');

insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path,p_category1,p_category2)
values ('32000','ENOUGH GRAPHIC TEE [BLACK]','','2-12-1.jpg','2-12-1.jpg','/2016/09/26','2','12');

insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path,p_category1,p_category2)
values ('39000','CLASSIC STRIPES KNIT [NAVY]','','2-12-2.jpg','2-12-2.jpg','/2016/09/26','2','12');

insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path,p_category1,p_category2)
values ('39000','CLASSIC STRIPES KNIT [GREY]','','2-12-3.jpg','2-12-3.jpg','/2016/09/26','2','12');

insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path,p_category1,p_category2)
values ('58000','OXFORD BUTTON DOWN GINGHAM SHIRTS [NAVY]','','2-13-1.jpg','2-13-1.jpg','/2016/09/26','2','13');

insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path,p_category1,p_category2)
values ('58000','RAW DENIM SHIRTS [MIDDLE BLUE]','','2-13-2.jpg','2-13-2.jpg','/2016/09/26','2','13');

insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path,p_category1,p_category2)
values ('65000','EGYPTIAN MINIMAL SHIRTS [WHITE]','','2-13-3.jpg','2-13-3.jpg','/2016/09/26','2','13');

-- 여기까지 TOP 끝

--여기부터 PANTS 시작

insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path,p_category1,p_category2)
values ('68000','STRETCH WOOL PANTS [BLACK]','','3-11-1.jpg','3-11-1.jpg','/2016/09/26','3','11');

insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path,p_category1,p_category2)
values ('88000','GOLDENTEX WOOL PANTS [CHARCOAL]','','3-11-2.jpg','3-11-2.jpg','/2016/09/26','3','11');

insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path,p_category1,p_category2)
values ('68000','SIDE-BANDING WOOL TROUSERS [BLACK]','','3-11-3.jpg','3-11-3.jpg','/2016/09/26','3','11');

insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path,p_category1,p_category2)
values ('88000','15FW WINTER WOOL PANTS [CHARCOAL]','','3-11-4.jpg','3-11-4.jpg','/2016/09/26','3','11');

insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path,p_category1,p_category2)
values ('88000','15FW WINTER WOOL PANTS [STRIPES]','','3-11-5.jpg','3-11-5.jpg','/2016/09/26','3','11');

insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path,p_category1,p_category2)
values ('76000','[TAPERED] 1903 KARSON SELVEDGE','','3-12-1.jpg','3-12-1.jpg','/2016/09/26','3','12');

insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path,p_category1,p_category2)
values ('68000','[CROP SLIM] 1904 DIORAMA WASH. JEANS','','3-12-2.jpg','3-12-2.jpg','/2016/09/26','3','12');

insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path,p_category1,p_category2)
values ('68000','[CROP SLIM] 1905 DIORAMA CRACK. JEANS','','3-12-3.jpg','3-12-3.jpg','/2016/09/26','3','12');

insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path,p_category1,p_category2)
values ('68000','STRETCH COTTON CHINO PANTS [BEIGE]','','3-12-4.jpg','3-12-4.jpg','/2016/09/26','3','12');

-- PANT 끝

--SHOES 시작

insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path,p_category1,p_category2)
values ('159000','RUN SERIES [BURGUNDY]','','4-11-1.jpg','4-11-1.jpg','/2016/09/26','4','11');

insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path,p_category1,p_category2)
values ('159000','RUN SERIES [KHAKI]','','4-11-2.jpg','4-11-2.jpg','/2016/09/26','4','11');

insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path,p_category1,p_category2)
values ('159000','RUN SERIES [TAN]','','4-11-3.jpg','4-11-3.jpg','/2016/09/26','4','11');

insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path,p_category1,p_category2)
values ('159000','RUN SERIES [BLUE]','','4-11-4.jpg','4-11-4.jpg','/2016/09/26','4','11');

insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path,p_category1,p_category2)
values ('189000','THINK [BLACK]','','4-12-1.jpg','4-12-1.jpg','/2016/09/26','4','12');

insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path,p_category1,p_category2)
values ('189000','LACE-UP LEATHER DERBY SHOES [BLACK]','','4-12-2.jpg','4-12-2.jpg','/2016/09/26','4','12');

--SHOES 끝

=======


select *
from product
order by p_reg_date desc
limit 0, 8




		