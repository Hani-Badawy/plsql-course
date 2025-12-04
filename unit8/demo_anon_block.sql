/**********
Author: Hani Mohammed
Date: Nov-27-2025
Description: Calling named blocks
***********/
set serverout on;
DECLARE
name varchar2(5):='John';
v_customer_no customers.customer#%TYPE := 1012;
v_name customers.lastname%TYPE;
v_pubid books.pubid%TYPE:=5;

BEGIN
    -- insert 
    get_customer_name(v_customer_no, v_name);
    print_msg(v_name);
    get_books_per_publisher(v_pubid);
    dbms_output.PUT_LINE('There is '||  v_pubid || ' books, by the provided publisher');
    COMMIT;
END;
/