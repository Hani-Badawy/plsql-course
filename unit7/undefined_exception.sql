/**********
Author: Hani Mohammed
Date: Nov-20-2025
Description: Demo for foreign key exception
************/
set SERVEROUTPUT on;
DECLARE
e_fk_violation  EXCEPTION;
PRAGMA EXCEPTION_INIT(e_fk_violation, -2291);
BEGIN
insert into books (isbn,title,category, pubid)
values (141213,'Test Book', 'COMPUTER',50);
EXCEPTION
    WHEN e_fk_violation THEN
        DBMS_OUTPUT.PUT_LINE('FORIGN KEY ERROR ' || SQLERRM);
END;
/