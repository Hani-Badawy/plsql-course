/*********
Author: Hani Mohammed
Date: 30-OCT-2025
***********/
set SERVEROUTPUT ON;

DECLARE
CURSOR c_book IS 
    select isbn, title, category from books;

v_isbn  books.isbn%TYPE;
v_title books.title%TYPE;
v_cat books.category%TYPE;

BEGIN
    OPEN c_book;
    LOOP
        FETCH c_book into v_isbn, v_title, v_cat;
        DBMS_OUTPUT.PUT_LINE(v_isbn||' '||v_title||
        ' '||v_cat);

    EXIT WHEN c_book%NOTFOUND;
    END LOOP;
    CLOSE c_book;

END;
/
