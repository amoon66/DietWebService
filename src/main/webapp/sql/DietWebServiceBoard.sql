drop table COMMENTBOARD purge;


drop table dietboard purge;


create table dietboard(
	seq		number(5)	primary key,
	title	varchar2(200) not null,
	writer	varchar2(20) not null,
	content	varchar2(4000) not null,
	regDate	date		default sysdate,
	cnt		number(5)	default 0,
	fileName varchar2(100)
);



INSERT INTO DIETBOARD(SEQ, TITLE, WRITER, CONTENT, CNT, FILENAME) 
VALUES((select nvl(max(seq), 0) + 1 from Dietboard), '�׽�Ʈ1', 'ȫ�浿', '�׽�Ʈ �Դϴ�', 0, 'test');

INSERT INTO DIETBOARD(SEQ, TITLE, WRITER, CONTENT, CNT, FILENAME)
VALUES((select nvl(max(seq), 0)+1 from Dietboard), '�׽�Ʈ2', '������', '�׽�Ʈ �Դϴ�', 0, 'test');


commit;

select * from dietboard;
                      