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

drop table member;

select * from member;


insert into member(m_id, m_pw, m_name, m_flag, m_gender, m_f_id, m_sign_flag)
values('a','a','a',,,,)
insert into member (m_id, m_pw, m_name)
values('daehan.ji@Gmail.com','a','a')
insert into member (m_id, m_pw, m_name, m_flag)
values('c','b','b',)


age_range:Object
email:"daehan.ji@gmail.com"
gender:"male"
id:"534107710117165"
link:"https://www.facebook.com/app_scoped_user_id/534107710117165/"
locale:"ko_KR"
name:"DaeHan Ji"
verified:true