create table image_file(
	if_no int not null auto_increment primary key,
    p_no int,
    if_ori varchar(500),
    if_real varchar(500),
    if_path varchar(500)
<<<<<<< HEAD
);

create table  categorySize(
	p_category1 varchar(50),
	c_size varchar(50)
);

drop table categorySize;
drop table image_file;

select * from categorySize;

select * from image_file;

insert into categorySize (p_category1,c_size)
values('1','"95(M)"');
insert into categorySize (p_category1,c_size)
values('1','"100(L)"');
insert into categorySize (p_category1,c_size)
values('1','"105(XL)"');
insert into categorySize (p_category1,c_size)
values('2','"95(M)"');
insert into categorySize (p_category1,c_size)
values('2','"100(L)"');
insert into categorySize (p_category1,c_size)
values('2','"105(XL)"');
insert into categorySize (p_category1,c_size)
values('3','28');
insert into categorySize (p_category1,c_size)
values('3','30');
insert into categorySize (p_category1,c_size)
values('3','32');
insert into categorySize (p_category1,c_size)
values('3','34');
insert into categorySize (p_category1,c_size)
values('4','240');
insert into categorySize (p_category1,c_size)
values('4','250');
insert into categorySize (p_category1,c_size)
values('4','260');
insert into categorySize (p_category1,c_size)
values('4','270');
insert into categorySize (p_category1,c_size)
values('4','280');

select *
		from image_file
		where p_no = 9
		order by if_no
=======
);
>>>>>>> d4e1ef708a6df85f351e9bfd110722808d15b6fe
