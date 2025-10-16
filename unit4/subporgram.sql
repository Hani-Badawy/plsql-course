set SERVEROUTPUT on;
-- It is only a definition
-- It can't run on its own
-- you have to call it 
-- call print_date
CREATE OR REPLACE PROCEDURE print_date IS
v_date VARCHAR2(30);
BEGIN
SELECT TO_CHAR(SYSDATE,'Mon DD, YYYY')
INTO v_date
FROM DUAL;
DBMS_OUTPUT.PUT_LINE(v_date);
END;
/