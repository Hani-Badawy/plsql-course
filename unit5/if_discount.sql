/***********************
Author:Hani Mohammed
Date: 16-Oct-2025
Description: Use if statement with real data
***********************/

set serveroutput on; 
set feedback off;
set echo off;

DECLARE

v_isbn books.isbn%TYPE :='0132149871';
v_discount books.discount%TYPE;
v_title books.title%TYPE :='DATABASE IMPLEMENTATION';
BEGIN
    select discount into v_discount from books where title=v_title;

    IF  (v_discount > 0)      THEN
    DBMS_OUTPUT.PUT_LINE('The book: '||v_title ||' has a discount of '|| v_discount);
    ELSE
    DBMS_OUTPUT.PUT_LINE('The book: '||v_title ||' does not have a discount');
    END IF;

END;
/