/****************
Author: Hani Mohammed
Date: 27-Oct-2025
Description: explicit
******************/

set SERVEROUTPUT On;
DECLARE 
CURSOR c_customer IS
    select * from customers;

r_customer customers%ROWTYPE;

BEGIN
    OPEN c_customer;
    Loop

    FETCH c_customer into r_customer;
    DBMS_OUTPUT.PUT_LINE(r_customer.customer# ||' '||
    r_customer.firstname || ' '|| r_customer.lastname);
    EXIT WHEN c_customer%NOTFOUND;
    END LOOP;
    CLOSE c_customer;
END;
/