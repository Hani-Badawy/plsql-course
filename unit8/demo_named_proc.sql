CREATE OR REPLACE PROCEDURE print_msg(name IN varchar2)
IS 
BEGIN
    DBMS_OUTPUT.PUT_LINE('Hello' || ' '|| name);
END;
/