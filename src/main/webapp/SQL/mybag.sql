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

<<<<<<< HEAD
insert into mybag(p_no, m_no, b_cnt)
values(20 ,2 ,1);
=======


insert into mybag(p_no, m_no, b_cnt, b_size)
values(20 ,2 ,1, '230(M)');
insert into mybag(p_no, m_no, b_cnt, b_size)
values(1 ,2 ,1, '250(M)');
insert into mybag(p_no, m_no, b_cnt, b_size)
values(5 ,2 ,1, '240(M)');
insert into mybag(p_no, m_no, b_cnt, b_size)
values(10 ,2 ,1, '230(L)');
insert into mybag(p_no, m_no, b_cnt, b_size)
values(15 ,2 ,1, '30(L)');

delete from mybag where b_no = 2

>>>>>>> d4e1ef708a6df85f351e9bfd110722808d15b6fe

select *
from member m,mybag b,product p
where m.m_no=b.m_no
and b.p_no = p.p_no
order by b.b_no desc
limit 1,1
<<<<<<< HEAD
=======

select * from mybag;




>>>>>>> d4e1ef708a6df85f351e9bfd110722808d15b6fe
