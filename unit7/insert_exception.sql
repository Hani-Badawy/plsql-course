/**********
Author: Hani Mohammed
Date: Nov-17-2025
Description : Duplicate exception
***********/
set SERVEROUTPUT on;

DECLARE

BEGIN
    insert into customers (customer#, firstname, lastname) 
    values (1022,'John','Doe');

EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        DBMS_OUTPUT.PUT_LINE('Record with the same id exists');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('UNKNOWN ERROR' || SQLERRM);
END;
/