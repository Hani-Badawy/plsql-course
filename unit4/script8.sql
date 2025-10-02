/************
Author: Hani Mohammed
Date: 2025-10-02
Description: A demo for select using custom record type.
*********************/

set SERVEROUTPUT ON;
set Feedback ON;
set ECHO OFF;
DECLARE
    Type customer_rec_type IS RECORD (
        firstname customers.firstname%TYPE,
        lastname customers.lastname%TYPE,
        email customers.email%TYPE
    );
    v_customer customer_rec_type;
BEGIN
    DECLARE
        customer_rec customer_rec_type;
    BEGIN
        SELECT firstname, lastname, email 
        INTO v_customer.firstname, v_customer.lastname, v_customer.email
        from customers WHERE customer# = 2000;
        DBMS_OUTPUT.PUT_LINE(
            'Customer Name: ' || v_customer.firstname || ' ' || v_customer.lastname || 
            ', Email: ' || v_customer.email
        );
    END;
END;
/