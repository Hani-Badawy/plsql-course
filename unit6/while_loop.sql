/***********
Author: Hani Mohammed
DATE: 23-OCT-2025
Description: While loop demo
************/
set SERVEROUTPUT on;

DECLARE
    v_counter Number :=1;
BEGIN
    WHILE (v_counter <=100)   LOOP
      DBMS_OUTPUT.PUT_LINE('Iter no: '|| v_counter);
      v_counter := v_counter +1;
    END LOOP;
END;
/