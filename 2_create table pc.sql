create table pc(
	code int primary key,
	model varchar(50) not null,
	speed smallint not null,
	ram smallint not null,
	hd real not null,
	cd varchar(10) not null,
	price money
);