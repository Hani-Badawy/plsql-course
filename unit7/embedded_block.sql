/**********
Author: Hani Mohammed
Date: Nov-20-2025
Description: Embedded blocks demo
***********/

DECLARE
v_isbn books.isbn%TYPE :='3141321';
r_book books%ROWTYPE;
BEGIN
    BEGIN
        select * into r_book from books where isbn = v_isbn;
        EXCEPTION
        WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20003,'No books found');

    END;


EXCEPTION
WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/
