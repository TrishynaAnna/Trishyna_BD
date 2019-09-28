CREATE KEYSPACE IF NOT EXISTS keyspace_A
WITH replication = {
	'class' : 'SimpleStrategy',
	'replication_factor' : 1
};


CREATE TABLE  keyspace_A."USER" (
	name_us text STATIC,
	date_of_br int,
	sex_us text,
	login_us text,
	id_us int ,
	PRIMARY KEY ( id_us, login_us)
);

CREATE TABLE keyspace_A."GROUPS" (
	name_gr  text,
	id_gr int,
	link FROZEN<anna_type>,
	PRIMARY KEY (id_gr)
);


CREATE TABLE keyspace_A."NOTIFICATION" (
	time_n int,
	id_n int,
	text_n text,
	PRIMARY KEY (id_n)
);
CREATE TABLE keyspace_A."POST" (
	name_p text,
	picture_p FROZEN<anna_type>,
	text_p MAP<text, FROZEN<SET<text>>>,
	hastag_p FROZEN<anna_type>,
	id_p text,
	
	PRIMARY KEY (id_p)
);

CREATE TYPE keyspace_A."anna_type"(
  picture text,
  hastag text,
  link text
);