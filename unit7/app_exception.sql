/**********
Author: Hani Mohammed
Date: Nov-20-2025
Description: Demo for raising an exception
************/
set SERVEROUTPUT on;
DECLARE
v_num Number := 50;
BEGIN
v_num := v_num *2;
IF (v_num > 50) THEN
    RAISE_APPLICATION_ERROR(-20001, 'Out of bound exception');
END IF;

EXCEPTION
    WHEN others THEN
        DBMS_OUTPUT.PUT_LINE('Error: out of bound ' || SQLERRM);
END;
/