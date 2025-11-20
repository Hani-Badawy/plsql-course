/*************
Author: Hani Mohammed
DATE: 3-NOV-2025
Description: Demo on select for update cursor using for loop
***************/

set serveroutput on;
set feedback on;
DECLARE
CURSOR c_book is
select title, retail, discount from books for update;

BEGIN
    
    for r_book in c_book Loop

    if(r_book.retail<60) then
        update  books set retail = retail *1.25 where
         current of c_book;
    end if;
    
    END LOOP;
    commit;
    

END;
/