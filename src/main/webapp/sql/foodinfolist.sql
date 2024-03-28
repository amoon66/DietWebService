DROP TABLE FOODINFOLIST PURGE;

CREATE TABLE foodinfolist (
    seq NUMBER PRIMARY KEY,
    food_name varchar2(255) NOT NULL,
    gram NUMBER NOT NULL,
    kcal NUMBER NOT NULL
    );
    

    
INSERT INTO foodinfolist (seq, food_name, gram, kcal) VALUES
(1, '커피', 100, 5)
;

COMMIT;

SELECT * FROM foodinfolist;
