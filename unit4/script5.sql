/********************
Author: Hani Mohammed
Date: 2025-09-25
Description: A demo for update statement.
*********************/

set SERVEROUTPUT ON;
set Feedback ON;    

set ECHO OFF;
DECLARE
    v_customer_fname customers.firstname%TYPE := 'Mary';
    v_customer_lname customers.lastname%TYPE := 'Jones';
    v_email customers.email%TYPE := 'mary.jones@example.com';
BEGIN
    UPDATE customers
    SET firstname = v_customer_fname, lastname = v_customer_lname, email = v_email
    WHERE customer# = 2000;
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Customer fistname, email updated successfully.');
END;
/