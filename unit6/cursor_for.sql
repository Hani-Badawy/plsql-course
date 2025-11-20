/************
Author: Hani Mohammed
DATE: 30-Oct-2025
Description: Using the cursor with for loop
********************/

set SERVEROUTPUT on;

DECLARE

    CURSOR c_customer IS
        select customer#, firstname, lastname, email from customers;
    

BEGIN
        for r_customer in c_customer LOOP
            DBMS_OUTPUT.PUT_LINE(r_customer.customer# ||
            ' '|| r_customer.firstname||
            ' '|| r_customer.lastname||
            ' '|| r_customer.email);
        END LOOP;
END;
/