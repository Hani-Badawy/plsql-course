CREATE OR REPLACE PROCEDURE get_customer_name(
    id IN Number, name OUT varchar2
)
IS 
PRAGMA AUTONOMOUS_TRANSACTION;

BEGIN
    SELECT lastname INTO name
    FROM customers where customer#=id;
    commit;
END;
/