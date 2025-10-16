/************
Author: Hani Mohammed
Date: 2025-10-02
Description: A demo for select using custom record type.
*********************/

set SERVEROUTPUT ON;
set Feedback ON;
set ECHO OFF;
DECLARE
    
    v_customer customers%ROWTYPE;
BEGIN
    
    BEGIN
        SELECT firstname, lastname, email 
        INTO v_customer.firstname, v_customer.lastname, v_customer.email
        from customers WHERE customer# = 5000;
        DBMS_OUTPUT.PUT_LINE(
            'Customer Name: ' || v_customer.firstname || ' ' || v_customer.lastname || 
            ', Email: ' || v_customer.email
        );
    END;
END;
/