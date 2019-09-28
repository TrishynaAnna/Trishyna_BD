INSERT INTO keyspace_A."USER" ( name_us, login_us)
VALUES (0,{"name": 'Dasha', "": 'Dasha_1'});
INSERT INTO keyspace_A."USER" ( name_us, login_us)
VALUES (1,{"name": 'Sasha', "": 'Sasha_2'});
INSERT INTO keyspace_A."USER" ( name_us, login_us)
VALUES (2,{"name": 'Masha', "": 'Masha_3'});
 
INSERT INTO keyspace_A."GROUP" ( name_gr, link_gr)
VALUES ('TRAVEL', 'https://uk-ua.facebook.com/travel/id_travel', 0);
INSERT INTO keyspace_A."GROUP" ( name_gr, link_gr)
VALUES ('BOOK', 'https://uk-ua.facebook.com/book/id_book', 1);
INSERT INTO keyspace_A."GROUP" ( name_gr, link_gr)
VALUES ('NAILS', 'https://uk-ua.facebook.com/nails/id_nails', 2);

INSERT INTO keyspace_A."NOTIFICATION" ( text_n )
VALUES ('information_1', 0);
INSERT INTO keyspace_A."NOTIFICATION" ( text_n )
VALUES ('information_2', 1);
INSERT INTO keyspace_A."NOTIFICATION" ( text_n )
VALUES ('information_3', 2);

INSERT INTO keyspace_A."POST" (name_p, picture_p, text_p)
VALUES ({'hot tour', 'picture_of_hot tour'},{'text_post'_:{'p_text_1', 'p_text_2'}});
INSERT INTO keyspace_A."POST" (name_p, picture_p, text_p)
VALUES ({'top 10 book', 'book_1'},{'text_post'_:{'p_text_1', 'p_text_2'}});
INSERT INTO keyspace_A."POST" (name_p, picture_p, text_p)
VALUES ({'top 5 nails', 'nails_1'},{'text_post'_:{'p_text_1', 'p_text_2'}});


SELECT * FROM keyspace_A."USER";
SELECT * FROM keyspace_A."GROUP";
SELECT * FROM keyspace_A."NOTIFICATION";
SELECT * FROM keyspace_A."POST";

CREATE TABLE keyspace_A."POST_USER"(
	name_p text,
	hastag_p FROZEN<anna_type>,
	id_p text,
	name_us text STATIC,
	date_of_br int,
	sex_us text,
	login_us text,
	id_us int ,
	PRIMARY KEY((id_p), id_us)
);
CREATE TABLE keyspace_A."POST_NOTIFICATION"(
	name_p text,
    hastag_p FROZEN<anna_type>,
	id_p text,
	time_n int,
	id_n int,
	text_n text,
	PRIMARY KEY((id_p), id_n)
);
CREATE TABLE keyspace_A."POST_GROUP"(
	name_p text,
	hastag_p FROZEN<anna_type>,
	id_p text,
	name_gr  text,
	id_gr int,
	link FROZEN<anna_type>,
	PRIMARY KEY((id_p), id_gr)
);


DROP TABLE  keyspace_A."POST_USER";
DROP TABLE  keyspace_A."POST_NOTIFICATION";
DROP TABLE  keyspace_A."POST_GROUP";


INSERT INTO keyspace_A."POST_USER" ( name_p, hastag_p, id_p, name_us, date_of_br, sex_us, login_us,id_us)
VALUES ( 'hot tour', '#HOTTRAVEL', 1, 'Dasha', '11-11-2001', 'male', 'Dasha_1', 1 )
INSERT INTO keyspace_A."POST_USER" ( name_p, hastag_p, id_p, name_us, date_of_br, sex_us, login_us,id_us)
VALUES ( 'top 10 book', '#TOP10BOOK', 2, 'Sasha', '11-11-2001', 'female', 'Sasha_2', 2 )
INSERT INTO keyspace_A."POST_USER" ( name_p, hastag_p, id_p, name_us, date_of_br, sex_us, login_us,id_us)
VALUES ( 'top 5 nails', '#TOP5NAILS', 3 , 'Masha', '11-11-2001', 'male', 'Masha_3', '3 )

INSERT INTO keyspace_A."POST_NOTIFICATION" (  time_n, text_n, id_p, id_n)
VALUES ()




SELECT * FROM keyspace_A."POST_USER";
SELECT * FROM keyspace_A."POST_NOTIFICATION";
SELECT * FROM keyspace_A."POST_GROUP";






