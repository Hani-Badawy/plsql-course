/*************
Author: Hani Mohammed
Date: 17-Nov-2025
Description: Demo for basic exception
**************/
set SERVEROUTPUT on;
DECLARE
    v_isbn books.isbn%TYPE := '0299282519';
    r_book books%ROWTYPE;
    v_num Number;
BEGIN
    select * into r_book from books where isbn=v_isbn;
    DBMS_OUTPUT.PUT_LINE(r_book.title);
    v_num := 4/0; -- will raise an exception
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('There is no book with this isbn:' || v_isbn);
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('Too many data');
    WHEN ZERO_DIVIDE THEN
        DBMS_OUTPUT.PUT_LINE('Division by zero');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Unknown error: ' || SQLERRM);
END;
/   