/****************
author: Hani Mohammed
date: 27-Oct-2025
description: explicit cursor with record
*****************/

set SERVEROUTPUT on;

DECLARE
--declare record
-- record is defining a type, like a class 
TYPE t_rec IS RECORD (
    customer_id customers.customer#%TYPE,
    fname customers.firstname%TYPE,
    lname customers.lastname%TYPE
);

--declare cursor
CURSOR c_customer IS 
    select customer#, firstname,lastname from customers;
--declare row
    r_customer t_rec;

BEGIN
    OPEN c_customer;
    LOOP
        FETCH c_customer into r_customer;
        DBMS_OUTPUT.PUT_LINE(r_customer.customer_id ||' '||
        r_customer.fname||' '|| r_customer.lname);
    EXIT WHEN c_customer%NOTFOUND;
    END LOOP;
    CLOSE c_customer;
END;
/