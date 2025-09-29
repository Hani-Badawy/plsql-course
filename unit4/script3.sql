/**************************
Author: Hani Mohammed
Date: 2025-09-25
Description: using  built-in functions in PL/SQL.
*/

DECLARE
    v_customer_number customers.customer#%type := 1022;
    v_customer_fname customers.firstname%type := 'Tom';  
    v_customer_lname customers.lastname%type := 'Doe';
    v_customer_email customers.email%type := 'tom@example.com';
BEGIN
    DBMS_OUTPUT.PUT_LINE(TO_CHAR(SYSDATE, 'DD-MON-YYYY HH24:MI:SS'));
    DBMS_OUTPUT.PUT_LINE('Customer Number: ' || v_customer_number);
    DBMS_OUTPUT.PUT_LINE('First Name: ' || v_customer_fname);
    DBMS_OUTPUT.PUT_LINE('Last Name: ' || v_customer_lname);
    DBMS_OUTPUT.PUT_LINE('Email: ' || v_customer_email);
    INSERT into customers (customer#, firstname, lastname, email)
    VALUES (v_customer_number, v_customer_fname, v_customer_lname, v_customer_email);
    commit;
END;
/