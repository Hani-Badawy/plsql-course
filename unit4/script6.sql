/****************
Author: Hani Mohammed
Date: 2025-10-02
Description: A demo for delete statement.
*********************/

set SERVEROUTPUT ON;
set Feedback ON;
set ECHO OFF;
DECLARE
    v_customer_id customers.customer#%TYPE := 3020;
BEGIN
    DELETE FROM customers
    WHERE customer# = v_customer_id;
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Customer deleted successfully.');
END;
/