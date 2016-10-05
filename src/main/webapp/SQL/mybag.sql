create table mybag(
	b_no int auto_increment primary key,
	p_no int,
	m_no int,
	b_cnt int,
	b_size varchar(50)
);
drop table mybag;
select * from mybag;
select * from member;
select * from product;

delete from mybag;




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



select * from mybag;





