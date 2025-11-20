/**********
Author: Hani Mohammed
Date: Nov-20-2025
Description: Demo for raising an exception
************/
set SERVEROUTPUT on;

DECLARE
e_value_out_of_bound  EXCEPTION;
v_num Number := 50;

BEGIN
v_num := v_num *2;
IF (v_num > 50) THEN
    raise e_value_out_of_bound;
END IF;

EXCEPTION
    WHEN e_value_out_of_bound THEN
        DBMS_OUTPUT.PUT_LINE('Error: out of bound ' || SQLERRM);
END;
/