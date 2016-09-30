create table mybag(
	b_no int auto_increment primary key,
	p_no int,
	m_no int,
	b_cnt int
);
drop table mybag;
select * from mybag;
select * from member;
select * from product;

insert into mybag(p_no, m_no, b_cnt)
values(20 ,2 ,1);

select *
from member m,mybag b,product p
where m.m_no=b.m_no
and b.p_no = p.p_no
order by b.b_no desc
limit 1,1
