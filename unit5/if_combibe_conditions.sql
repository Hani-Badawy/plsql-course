/***********************
Author:Hani Mohammed
Date: 16-Oct-2025
Description: Use if statement with different conditions
***********************/

set serveroutput on; 
set feedback off;
set echo off;

DECLARE

v_isbn books.isbn%TYPE :='0132149871';
v_discount books.discount%TYPE;
v_title books.title%TYPE :='REVENGE OF MICKEY';
v_cat books.category%TYPE;
BEGIN
    select discount, category into v_discount,v_cat from books where title=v_title;

    IF   (v_cat ='COMPUTER')     THEN
        DBMS_OUTPUT.PUT_LINE('The book: '||v_title ||' , I will buy it.');
    ELSIF (v_discount >= 4.5) and (v_cat ='FAMILY LIFE') THEN
        DBMS_OUTPUT.PUT_LINE('The book: '||v_title ||'I can also buy.');
    ELSE 
        DBMS_OUTPUT.PUT_LINE('The book: '||v_title ||'I cannot also buy.');
    END IF;

END;
/