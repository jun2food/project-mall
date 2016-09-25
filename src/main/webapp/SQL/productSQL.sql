create table product(
	p_no int not null auto_increment primary key,
    p_price int,
    p_name varchar(50),
    p_detail varchar(2000),
    p_reg_date date,
    p_ori varchar(500),
    p_real varchar(500),
    p_path varchar(500)
);
delete from product

insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path)
values ('50000','OXFORD BUTTON DOWN GINGHAM SHIRTS [NAVY]','시험용','123.jpg','123.jpg','/2016/09/26')

insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path)
values ('40000','OXFORD BUTTON DOWN GINGHAM SHIRTS [NAVY]','시험용','11.jpg','11.jpg','/2016/09/26')
insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path)
values ('30000','OXFORD BUTTON DOWN GINGHAM SHIRTS [NAVY]','시험용','12.jpg','12.jpg','/2016/09/26')

insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path)
values ('20000','OXFORD BUTTON DOWN GINGHAM SHIRTS [NAVY]','시험용','13.jpg','13.jpg','/2016/09/26')
insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path)
values ('10000','OXFORD BUTTON DOWN GINGHAM SHIRTS [NAVY]','시험용','14.jpg','14.jpg','/2016/09/26')
insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path)
values ('46000','OXFORD BUTTON DOWN GINGHAM SHIRTS [NAVY]','시험용','15.jpg','15.jpg','/2016/09/26')
insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path)
values ('50000','OXFORD BUTTON DOWN GINGHAM SHIRTS [NAVY]','시험용','16.jpg','16.jpg','/2016/09/26')
insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path)
values ('50000','OXFORD BUTTON DOWN GINGHAM SHIRTS [NAVY]','시험용','17.jpg','17.jpg','/2016/09/26')
insert into product(p_price,p_name,p_detail,p_ori,p_real,p_path)
values ('50000','OXFORD BUTTON DOWN GINGHAM SHIRTS [NAVY]','시험용','18.jpg','18.jpg','/2016/09/26')

select *
from product
order by p_reg_date desc
limit 0, 8
		