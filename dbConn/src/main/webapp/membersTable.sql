USE odbo;

CREATE TABLE IF NOT EXISTS members(
	id varchar(20) primary key,
	passwd varchar(20),
	email varchar(50),
	signuptime timestamp default current_timestamp
);
