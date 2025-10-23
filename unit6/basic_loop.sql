/***********
Author: Hani Mohammed
Date: 23-Oct-2025
Description: basic loop demo
************/
set SERVEROUTPUT on;
DECLARE 
v_counter NUMBER :=1;
BEGIN
LOOP
    v_counter :=v_counter +1;
    DBMS_OUTPUT.PUT_LINE('Iter no: '
    || v_counter);
    EXIT WHEN v_counter > 100;
END LOOP;
END;
/
