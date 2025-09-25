/**********************************
author: Hani Mohammed
date: 2025-09-25
description: A demo of %type attribute in PL/SQL.
*/

set SERVEROUTPUT ON;        
set Feedback ON;
set ECHO OFF;
DECLARE
    v_title books.title%TYPE; -- Variable with %TYPE attribute
    v_price books.isbn%TYPE; -- Variable with %TYPE attribute
BEGIN
    v_title := 'Learning PL/SQL';
    v_price := '978323232';
    insert into books (title, isbn) values (v_title, v_price);
    DBMS_OUTPUT.PUT_LINE('Book Title: ' || v_title);
    DBMS_OUTPUT.PUT_LINE('Book ISBN: ' || v_price);
END;
/