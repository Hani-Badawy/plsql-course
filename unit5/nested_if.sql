/***************
Author: Hani Mohammed
Date: 20-OCT-2025
Description: nested if
***************/

set serveroutput on
-- select john DOE not TOM DOE, based on firstname and lastname
DECLARE
v_fname customers.firstname%type :='Tom';
v_lname customers.lastname%type :='Doe';
v_email customers.email%type :='NA';
BEGIN
    IF (v_lname ='Doe')  THEN
        IF (v_fname ='John') THEN
        select email into v_email from customers
        where customers.firstname = v_fname and customers.lastname =v_lname;
        ELSE 
            DBMS_OUTPUT.PUT_LINE('John not in the list of customers');
        END IF;
    END IF;
    DBMS_OUTPUT.PUT_LINE(v_email);

END;
/

/** java like code
switch grade{
    case 'A':
    statement1;
    case ='B';
    break;
    case 'B':
    statement1;
    statement2:
}
**/