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
v_age number := 17;
BEGIN
    IF   (v_age >= 18)     THEN
        DBMS_OUTPUT.PUT_LINE('Hello ' || v_name || '. You can drive.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Hello ' || v_name || '. You cannot drive.');
    END IF;
END;
/
