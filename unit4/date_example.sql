/***************
Author: Hani Mohammed 
date: October, 9, 2025
A demo about dual table
*************/
set serveroutput on;
Declare 
 v_date varchar2(20);
BEGIN
select to_char(sysdate) into v_date from dual;
DBMS_OUTPUT.PUT_LINE(v_date);
END;
/


