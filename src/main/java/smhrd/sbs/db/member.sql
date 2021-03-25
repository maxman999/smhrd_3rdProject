drop table member;
drop table plant;

create table member(
	id varchar(30) primary key,
	password varchar(20) not null,
	nickname varchar(20) not null,
	email varchar(50) not null,
	phone varchar(20) not null,
	premium int not null,
	unique key(id)
	);	
	
insert into member(id,password,nickname,email,phone,premium)
values('admin','admin','관리자','admin','admin','1');

select * from member;


create table plant(
	plantid int NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id varchar(30),
	plantname varchar(20),
	regidate date not null,
	picture varchar(500) not null,
	sick varchar(20), 
	plantnick varchar(20)
	);

alter table plant add FOREIGN KEY(id) REFERENCES member(id);	

insert into plant(id,plantname,regidate,picture,sick,plantnick)
values('admin','스킨답서스',now(),'src','깍지벌레','겸둥이');

select * from plant;