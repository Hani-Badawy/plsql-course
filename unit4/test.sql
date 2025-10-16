/***********************
Author:Hani Mohammed
Date: 16-Oct-2025
Description: Demo for if statement
***********************/
set serveroutput on;
set echo off;
set feedback on;

DECLARE 
v_name  varchar2(20) := 'James';
-- Do if statement to check age.
-- if it is bigger than or equal to 18
-- print you can drive
v_discount books.discount%TYPE;
BEGIN
    select discount into v_discount from books where isbn='9247381001';
    IF   (v_discount is not NULL)     THEN
    DBMS_OUTPUT.PUT_LINE('Hello ' || v_name ||'. There is a discount on this book.');
    ELSE 
        DBMS_OUTPUT.PUT_LINE('Hello ' || v_name ||'. There is no discount on this book.');
    END IF;
END;
/
