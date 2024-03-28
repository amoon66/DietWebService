drop table WORKOUTINFO purge;

CREATE TABLE WORKOUTINFO (
    SEQ number(3) PRIMARY KEY,
    NAME VARCHAR(20)not null UNIQUE,
    MIN NUMBER default 1,
    KCAL NUMBER not null
    
);

INSERT INTO WORKOUTINFO(SEQ, NAME, KCAL)
            VALUES((select nvl(max(seq), 0)+1 from WORKOUTINFO), '수영',12 );
INSERT INTO WORKOUTINFO(SEQ, NAME, KCAL)
            VALUES((select nvl(max(seq), 0)+1 from WORKOUTINFO), '수영_접영',12 );
INSERT INTO WORKOUTINFO(SEQ, NAME, KCAL)
            VALUES((select nvl(max(seq), 0)+1 from WORKOUTINFO), '수영_평영',12 );
INSERT INTO WORKOUTINFO(SEQ, NAME, KCAL)
            VALUES((select nvl(max(seq), 0)+1 from WORKOUTINFO), '수영_자유형',12 );
INSERT INTO WORKOUTINFO(SEQ, NAME, KCAL)
            VALUES((select nvl(max(seq), 0)+1 from WORKOUTINFO), '수영_배영',12 );
            
INSERT INTO WORKOUTINFO(SEQ, NAME, KCAL)
            VALUES((select nvl(max(seq), 0)+1 from WORKOUTINFO), '스쿼시',12 );

INSERT INTO WORKOUTINFO(SEQ, NAME, KCAL)
            VALUES((select nvl(max(seq), 0)+1 from WORKOUTINFO), '윗몸일으키기',11 );
            
INSERT INTO WORKOUTINFO(SEQ, NAME, KCAL)
            VALUES((select nvl(max(seq), 0)+1 from WORKOUTINFO), '인라인스케이트',11 );
            
INSERT INTO WORKOUTINFO(SEQ, NAME, KCAL)
            VALUES((select nvl(max(seq), 0)+1 from WORKOUTINFO), '러닝',9 );
            
INSERT INTO WORKOUTINFO(SEQ, NAME, KCAL)
            VALUES((select nvl(max(seq), 0)+1 from WORKOUTINFO), '등산',8 );
            
INSERT INTO WORKOUTINFO(SEQ, NAME, KCAL)
            VALUES((select nvl(max(seq), 0)+1 from WORKOUTINFO), '검도',7 );
            
INSERT INTO WORKOUTINFO(SEQ, NAME, KCAL)
            VALUES((select nvl(max(seq), 0)+1 from WORKOUTINFO), '댄스',5 );
            
INSERT INTO WORKOUTINFO(SEQ, NAME, KCAL)
            VALUES((select nvl(max(seq), 0)+1 from WORKOUTINFO), '줄넘기',4 );
            
INSERT INTO WORKOUTINFO(SEQ, NAME, KCAL)
            VALUES((select nvl(max(seq), 0)+1 from WORKOUTINFO), '배드민턴',4 );

INSERT INTO WORKOUTINFO(SEQ, NAME, KCAL)
            VALUES((select nvl(max(seq), 0)+1 from WORKOUTINFO), '경보',4 ); 

INSERT INTO WORKOUTINFO(SEQ, NAME, KCAL)
            VALUES((select nvl(max(seq), 0)+1 from WORKOUTINFO), '훌라후프',4 );
            
INSERT INTO WORKOUTINFO(SEQ, NAME, KCAL)
            VALUES((select nvl(max(seq), 0)+1 from WORKOUTINFO), '자전거',3 );

INSERT INTO WORKOUTINFO(SEQ, NAME, KCAL)
            VALUES((select nvl(max(seq), 0)+1 from WORKOUTINFO), '산책',2 );
            
INSERT INTO WORKOUTINFO(SEQ, NAME, KCAL)
            VALUES((select nvl(max(seq), 0)+1 from WORKOUTINFO), '요가',2 );
            
commit;


select * from WORKOUTINFO ;

