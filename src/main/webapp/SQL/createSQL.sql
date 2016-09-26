-- 회정정보
create table member(
	m_no INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	m_id varchar(50) unique,
    m_pw varchar(20) not null,
    m_name varchar(50) not null,
    m_flag varchar(5) default 'N',
    m_gender varchar(10),
    m_f_id varchar(50),
    m_sign_flag varchar(5) default 'N'
);
-- 제품정보
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
-- 이미지 파일
create table image_file(
	if_no int not null auto_increment primary key,
    p_no int,
    if_ori varchar(500),
    if_real varchar(500),
    if_path varchar(500)
);
-- 장바구니
create table bag(
	b_no int not null auto_increment primary key,
    m_no int,
    p_no int,
    b_cnt int
);
-- 구매리스트
create table ph_list(
	ph_no int not null auto_increment primary key,
    m_no int,
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
    ph_no int,
    p_no int,
    il_cnt int
);
show tables;
use project;
select * from product;