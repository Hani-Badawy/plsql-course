set SERVEROUTPUT on;
DECLARE
  v_count NUMBER;

BEGIN

  DELETE FROM customers 
   WHERE customer# > 3044;

  v_count := SQL%ROWCOUNT; -- implicit cursor

  DBMS_OUTPUT.PUT_LINE('Rows deleted: ' || v_count);

  COMMIT;

END;
/
