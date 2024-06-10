create table laptop(
	code int primary key,
	model varchar(50) not null,
	speed smallint not null,
	ram smallint not null,
	hd real not null,
	price money,
	screen smallint not null
);