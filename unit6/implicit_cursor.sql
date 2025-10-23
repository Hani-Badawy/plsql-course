DECLARE
  v_count NUMBER;

BEGIN

  DELETE FROM customers 
   WHERE customer# = 2000;

  v_count := SQL%ROWCOUNT;

  DBMS_OUTPUT.PUT_LINE('Rows deleted: ' || v_count);

  COMMIT;

END;
/
