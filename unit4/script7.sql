/*****************
Author: Hani Mohammed
Date: 2025-10-02
Description: A demo for select statement.
*********************/

set SERVEROUTPUT ON;
set Feedback ON;
set ECHO OFF;
DECLARE
    v_customer_fname customers.firstname%TYPE;
    v_customer_lname customers.lastname%TYPE;
    v_customer_email customers.email%TYPE;

BEGIN
    select firstname, lastname, email
    into v_customer_fname, v_customer_lname, v_customer_email
    from customers
    where customer# = 2000;
    DBMS_OUTPUT.PUT_LINE(
        'Customer Name: ' || v_customer_fname || ' ' || v_customer_lname || 
        ', Email: ' || v_customer_email
    );
END;
/