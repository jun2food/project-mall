-- 구매리스트
create table ph_list(
	ph_no int not null auto_increment primary key,
    il_no int,
    ph_status int,
    ph_addr varchar(100),
    ph_date date,
    ph_receiver varchar(50),
    ph_tel varchar(50),
    ph_msg varchar(500),
    ph_total_price int,
    ph_method int
);
-- 아이템 리스트
create table item_list(
	il_no int not null auto_increment primary key,
    m_no int,
    p_no int,
    il_cnt int
);

show tables
select * from item_list
select * from ph_list