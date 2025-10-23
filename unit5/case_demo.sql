/***********
Author: Hani Mohammed
date: 20-Oct-2025
description: case demo
***********/
set serveroutput on;
set feedback off;
DECLARE 
v_lastname customers.lastname%TYPE;
v_grade char(1) :='B';
BEGIN
SELECT CASE lastname
                   WHEN 'DAUM' THEN 'DUAMAN'
                   WHEN 'LEE' THEN 'LEI'
                   WHEN 'LUCAS' THEN 'LUKE'
                   ELSE 'LAST NAME'
        END 
        into v_lastname
  FROM customers where customer#='1016';
    DBMS_OUTPUT.PUT_LINE(v_lastname);

    DBMS_OUTPUT.PUT_LINE(
    CASE 
      WHEN (v_grade='A') THEN 'Excellent'
      WHEN (v_grade='B') THEN 'Very Good'
      WHEN (v_grade='C') THEN 'Good'
      WHEN (v_grade='D') THEN 'Needs Improvement'
      ELSE 'Invalid Grade'
    END);

END;
/