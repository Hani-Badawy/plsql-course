/****************
Author: Hani Mohammed
Date: 27-Oct-2025
Description: explicit  with books data
******************/

set SERVEROUTPUT On;
DECLARE 
CURSOR c_book IS
    select * from books where category ='COMPUTER';

r_book books%ROWTYPE;

BEGIN
    OPEN c_book;
    Loop

    FETCH c_book into r_book;
    DBMS_OUTPUT.PUT_LINE(r_book.isbn ||' '||
    r_book.title || ' '|| r_book.category);
    EXIT WHEN c_book%NOTFOUND;
    END LOOP;
    CLOSE c_book;
END;
/