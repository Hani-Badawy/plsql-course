/********************
Author: Hani Mohammed
Date: 2025-09-25
Description: A demo for update statement.
*********************/

set SERVEROUTPUT ON;
set Feedback ON;    

set ECHO OFF;
DECLARE
    v_customer_fname customers.firstname%TYPE := 'Sarah';
BEGIN
    UPDATE customers
    SET firstname = v_customer_fname
    WHERE customer# = 3000;
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Customer fistname, email updated successfully.');
END;
/