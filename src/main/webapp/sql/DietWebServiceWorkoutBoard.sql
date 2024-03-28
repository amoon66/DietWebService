drop table WORKOUTBOARD purge;

CREATE TABLE WORKOUTBOARD (
    SEQ number(3) PRIMARY KEY,
    ID VARCHAR(20) not null,
    WORKOUTNAME VARCHAR(400)not null,
    INPUTTIME NUMBER not null,
    kcal NUMBER not null,
    REGDATE DATE default sysdate
);

INSERT INTO WORKOUTBOARD(SEQ, ID, WORKOUTNAME, INPUTTIME,kcal)
            VALUES((select nvl(max(seq), 0)+1 from WORKOUTBOARD), '1111', '수영', 30, 12);

commit;

select * from WORKOUTBOARD;