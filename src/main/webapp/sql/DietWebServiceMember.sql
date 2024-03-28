drop table member purge;

create table member(
	id			varchar2(20) primary key,
	password	varchar2(20) not null,
	name		varchar2(20) not null,
	phone		varchar2(20) not null,
    nickname    varchar2(20) not null unique,
    tall        number not null
);



insert into member
values('admin', 'admin','김태현','01020838689','태현이',177);

insert into member 
values('1111', '1111', '홍길동', '01011111111','홍길동', 187);

commit;

select * from member;