create table nov17_apple(
	a_num number(4) not null,
	a_location varchar2(20 char) primary key,
	a_color varchar2(10 char) not null,
	a_flavor varchar2(10 char) not null,
	a_price number(7) not null,
	a_introduce varchar2(100 char) not null
);

drop table nov17_apple cascade constraint purge;
truncate table nov17_apple;

create sequence nov17_apple_seq;
drop sequence nov17_apple_seq;

select * from nov17_apple order by a_price;

insert into nov17_apple values(nov17_apple_seq.nextval,'대구','빨강','달다',5900,'대구산 사과입니다.');
insert into nov17_apple values(nov17_apple_seq.nextval,'안동','빨강','보통',6000,'안동산 사과입니다.');
insert into nov17_apple values(nov17_apple_seq.nextval,'충주','초록','보통',4900,'충주산 사과입니다.');
insert into nov17_apple values(nov17_apple_seq.nextval,'LA','빨강','달다',12000,'LA산 수입산 사과입니다.');

create table banana(
	b_location varchar2(10 char) primary key,
	b_flavor varchar2(10 char) not null,
	b_price varchar2(10 char) not null,
	b_introduce varchar2(100 char) not null
);

drop table banana cascade constraint purge;
truncate table banana;

select * from banana order by b_price;

insert into banana values('말리부','완숙',3800,'지중해산 맛있는 바나나!');
insert into banana values('미국','반숙',3700,'미국산 적당히 익은 단단한 바나나');
insert into banana values('필리핀','날것',3500,'필리핀산 바나나. 덜익어서 후숙시켜서 먹는걸 추천.');

select count(*) from nov17_apple;


select * from (select rownum as rn,a_location, a_color,a_flavor,a_price,a_introduce from (select * from nov17_apple order by a_price)) 

select * from nov17_apple where a_location='중국';

UPDATE nov17_apple set a_price=5500 WHERE a_location = '중국'

DELETE FROM nov17_apple WHERE a_location='중국';