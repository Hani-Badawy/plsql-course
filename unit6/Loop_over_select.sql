/************
Author: Hani Mohammed
DATE: 23-OCT-2025
Description: A demo to show how to iterate over data
************/

set serveroutput on;
DECLARE
v_cn customers.customer#%TYPE :=1001;
v_fname customers.firstname%TYPE;
v_lname customers.lastname%TYPE;
v_email customers.email%TYPE;
BEGIN
    WHILE (v_cn <=1020) LOOP
    select firstname, lastname, email into v_fname, v_lname
    ,v_email from customers where customer#=v_cn;
    DBMS_OUTPUT.PUT_LINE('customer no: '||v_cn||', firstname: '||
    v_fname||', lastname: '||v_lname||', email: '|| v_email);
    v_cn := v_cn+1;

    END LOOP;
    DBMS_OUTPUT.PUT_LINE('------------------------');
    FOR  i in 1001..1020 LOOP
    select firstname, lastname, email into v_fname, v_lname
    ,v_email from customers where customer#=i;
    DBMS_OUTPUT.PUT_LINE('customer no: '||v_cn||', firstname: '||
    v_fname||', lastname: '||v_lname||', email: '|| v_email);
    v_cn := v_cn+1;

    END LOOP;

END;
/