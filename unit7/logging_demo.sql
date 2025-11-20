/**********
Author: Hani Mohammed
Date: Nov-20-2025
Description: Demo for raising an exception and log it to the err_table
************/
set SERVEROUTPUT on;
DECLARE
v_num Number := 50;
v_msg books_error_log.ORA_ERR_MESG$%TYPE;
BEGIN
v_num := v_num *2;
IF (v_num > 50) THEN
    RAISE_APPLICATION_ERROR(-20001, 'Out of bound exception');
END IF;

EXCEPTION
    WHEN others THEN
        --DBMS_OUTPUT.PUT_LINE('Error: out of bound ' || SQLERRM);
    v_msg := substr(SQLERRM, 1,100);
    insert into books_error_log (ORA_ERR_MESG$) values (v_msg);
    commit;
END;
/