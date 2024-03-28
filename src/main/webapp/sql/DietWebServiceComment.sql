drop table COMMENTBOARD purge;

CREATE TABLE COMMENTBOARD (
    SEQ number(3) PRIMARY KEY,
    WRITER VARCHAR(20)not null,
    CONTENT VARCHAR(400)not null,
    REGDATE DATE default sysdate,
    BOARDSEQ number,
    REP_REF number,
    REP_LEV number default 0,
    REP_SEQ number default 0,
    
    FOREIGN KEY (BOARDSEQ) REFERENCES DIETBOARD(SEQ) ON DELETE CASCADE
);

INSERT INTO COMMENTBOARD(SEQ, WRITER, CONTENT, BOARDSEQ, rep_ref, rep_lev, rep_seq)
            VALUES((select nvl(max(seq), 0)+1 from COMMENTboard), 'ȫ�浿', '�׽�Ʈ ��� 1 �Դϴ�', 1, 1, 0, 0);
            
INSERT INTO COMMENTBOARD(SEQ, WRITER, CONTENT, BOARDSEQ, rep_ref, rep_lev, rep_seq)
            VALUES((select nvl(max(seq), 0)+1 from COMMENTboard), '�̼���', '�׽�Ʈ ����  1-1 �Դϴ�', 1, 1, 1, 1);
            
INSERT INTO COMMENTBOARD(SEQ, WRITER, CONTENT, BOARDSEQ, rep_ref, rep_lev, rep_seq)
            VALUES((select nvl(max(seq), 0)+1 from COMMENTboard), '������', '�׽�Ʈ ���� 1-2 �Դϴ�', 1, 1, 1, 2 );  

INSERT INTO COMMENTBOARD(SEQ, WRITER, CONTENT, BOARDSEQ, rep_ref, rep_lev, rep_seq)
            VALUES((select nvl(max(seq), 0)+1 from COMMENTboard), 'ȫ�浿', '�׽�Ʈ ��� 2 �Դϴ�', 1, 2, 0, 0 ); 
            
INSERT INTO COMMENTBOARD(SEQ, WRITER, CONTENT, BOARDSEQ, rep_ref, rep_lev, rep_seq)
            VALUES((select nvl(max(seq), 0)+1 from COMMENTboard), '����', '�׽�Ʈ ���� 1-3 �Դϴ�', 1, 1, 1, 3 );             
            
commit;


select * from COMMENTBOARD ;

