/**************************
Author: Hani Mohammed
Date: 2025-09-25
Description: using  built-in functions in PL/SQL.

create SEQUENCE customers_seq 
START WITH 2000 
INCREMENT BY 1
minvalue 1000
maxvalue 9999
NOCYCLE
NOCACHE;
*/
set SERVEROUTPUT ON;
set Feedback off;

DECLARE
    --v_customer_number customers.customer#%TYPE := 1022; v_customer_fname customers.firstname%TYPE := 'Alice';   
    v_customer_fname customers.firstname%TYPE := 'Alice';
    v_customer_lname customers.lastname%TYPE := 'Smith';
    v_customer_email customers.email%TYPE := 'alice.smith@example.com';
    v_seq_data user_sequences%ROWTYPE;
BEGIN
      -- auto generated incremented values
    select *   into v_seq_data from user_sequences where sequence_name ='CUSTOMERS_SEQ';
    INSERT INTO customers (customer#, firstname, lastname, email)
    VALUES (customers_seq.NEXTVAL, v_customer_fname, v_customer_lname, v_customer_email);
    commit;
    DBMS_OUTPUT.PUT_LINE(v_seq_data.sequence_name);
    DBMS_OUTPUT.PUT_LINE(TO_CHAR(SYSDATE, 'DD-MON-YYYY HH24:MI:SS'));
END;    
/