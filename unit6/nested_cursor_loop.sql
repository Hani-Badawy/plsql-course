/****************
Author: Hani Mohammed
Date: 30-Oct-2025
Description: using nested for loop with cursor to work with one-to-many
****************/

set SERVEROUT ON;
DECLARE
CURSOR c_pub IS
    select pubid, name from publisher;

v_shared publisher.pubid%TYPE;

CURSOR c_book IS
    select isbn, title, category from books where books.pubid = v_shared;

BEGIN
    FOR r_pub in c_pub LOOP
        v_shared := r_pub.pubid;
        DBMS_OUTPUT.PUT_LINE(r_pub.name);
        FOR r_book in c_book LOOP
            DBMS_OUTPUT.PUT_LINE(r_book.isbn ||' '||
                                r_book.title|| ' '||
                                r_book.category);
        END LOOP;
    END LOOP;

END;
/