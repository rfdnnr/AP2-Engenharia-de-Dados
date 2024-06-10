create table printer(
	code int primary key,
	model varchar(50) not null,
	color char(1) not null,
	type varchar(10) not null,
	price money
);