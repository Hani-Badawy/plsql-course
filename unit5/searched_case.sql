/***********
Author: Hani Mohammed
date: 20-Oct-2025
description: searched case demo
***********/
set serveroutput on;
set feedback off;
DECLARE 
v_price books.retail%TYPE;
v_isbn books.isbn%TYPE :='1915762492';
BEGIN
SELECT retail into v_price from books where isbn =v_isbn;
    DBMS_OUTPUT.PUT_LINE(
    CASE 
      WHEN (v_price<50) THEN 'Cheap book selected'
      WHEN (v_price>50) THEN 'Expensive book selected'
      ELSE 'Invalid book'
    END);

END;
/