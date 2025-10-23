/***********
Author: Hani Mohammed
DATE: 23-OCT-2025
Description: For loop demo
************/
set SERVEROUTPUT on;

DECLARE

BEGIN
    FOR v_counter in 1..100 LOOP
        DBMS_OUTPUT.PUT_LINE('Iter no: '|| v_counter);
    END LOOP;
END;
/