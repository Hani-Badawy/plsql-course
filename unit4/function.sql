CREATE OR REPLACE FUNCTION tomorrow (p_today IN DATE)
RETURN DATE IS
v_tomorrow DATE;
BEGIN
SELECT p_today + 1 INTO v_tomorrow
FROM DUAL;
RETURN v_tomorrow;
END;



