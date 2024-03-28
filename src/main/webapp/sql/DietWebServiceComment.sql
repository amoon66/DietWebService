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
            VALUES((select nvl(max(seq), 0)+1 from COMMENTboard), '홍길동', '테스트 댓글 1 입니다', 1, 1, 0, 0);
            
INSERT INTO COMMENTBOARD(SEQ, WRITER, CONTENT, BOARDSEQ, rep_ref, rep_lev, rep_seq)
            VALUES((select nvl(max(seq), 0)+1 from COMMENTboard), '이순신', '테스트 대댓글  1-1 입니다', 1, 1, 1, 1);
            
INSERT INTO COMMENTBOARD(SEQ, WRITER, CONTENT, BOARDSEQ, rep_ref, rep_lev, rep_seq)
            VALUES((select nvl(max(seq), 0)+1 from COMMENTboard), '강감찬', '테스트 대댓글 1-2 입니다', 1, 1, 1, 2 );  

INSERT INTO COMMENTBOARD(SEQ, WRITER, CONTENT, BOARDSEQ, rep_ref, rep_lev, rep_seq)
            VALUES((select nvl(max(seq), 0)+1 from COMMENTboard), '홍길동', '테스트 댓글 2 입니다', 1, 2, 0, 0 ); 
            
INSERT INTO COMMENTBOARD(SEQ, WRITER, CONTENT, BOARDSEQ, rep_ref, rep_lev, rep_seq)
            VALUES((select nvl(max(seq), 0)+1 from COMMENTboard), '권율', '테스트 대댓글 1-3 입니다', 1, 1, 1, 3 );             
            
commit;


select * from COMMENTBOARD ;

