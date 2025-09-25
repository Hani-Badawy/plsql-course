/**********************************
Author: Hani Mohammed
Date: 2025-09-25
Description: A demo of declaration section in PL/SQL.
*/
set SERVEROUTPUT ON;        
set Feedback ON;
set ECHO OFF;

DECLARE
    v_name VARCHAR2(50);
    v_age  NUMBER;
    v_initial CHAR;
    v_salary NUMBER;
    v_is_employee BOOLEAN; -- Note: BOOLEAN is not printing
    v_hire_date DATE;
BEGIN
    v_name := 'John Doe';
    v_age := 30;    
    v_initial := 'J';
    v_salary := 55000.50;
    v_is_employee := TRUE;
    v_hire_date := SYSDATE;

    DBMS_OUTPUT.PUT_LINE('Name: ' || v_name);
    DBMS_OUTPUT.PUT_LINE('Age: ' || v_age);
    DBMS_OUTPUT.PUT_LINE('Initial: ' || v_initial);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);
    DBMS_OUTPUT.PUT_LINE('Hire Date: ' || v_hire_date);
END;
/