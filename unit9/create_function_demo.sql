CREATE OR REPLACE FUNCTION print_msg(name VARCHAR2)
return NUMBER
IS
BEGIN

    DBMS_OUTPUT.PUT_LINE('Hello '|| name);
    return -1;
END;
/