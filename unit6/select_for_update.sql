/*************
Author: Hani Mohammed
DATE: 3-NOV-2025
Description: Demo on select for update cursor
***************/

set serveroutput on;
set feedback on;
DECLARE
CURSOR c_book is
select title, retail, discount from books where discount is null for update;
v_title books.title%TYPE;
v_retail books.retail%TYPE;
v_discount books.discount%TYPE;
BEGIN
    open c_book;
    LOOP
    fetch c_book into v_title, v_retail, v_discount;
    EXIT WHEN c_book%NOTFOUND;

    if(v_retail>50) then
        update  books set discount = retail *0.1 where
         current of c_book;
    end if;
    END LOOP;

    close c_book;
    commit;

END;
/