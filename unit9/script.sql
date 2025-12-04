/**********
AUTHOR: Hani Mohammed
Date: Nov-27-2025
Description: Demo for functions
***********/
set serveroutput on;
DECLARE
v_num Number;
BEGIN
    v_num := ADD_NUMS(2,3); -- WE have to store in a variable 
    DBMS_OUTPUT.PUT_LINE(v_num);
END;
/