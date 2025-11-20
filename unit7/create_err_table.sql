/**********
Author: Hani Mohammed
Date: Nov-20-2025
Description: Demo for creating error table
************/
set SERVEROUTPUT on;
BEGIN
DBMS_ERRLOG.CREATE_ERROR_LOG(
    dml_table_name =>'books',
    err_log_table_name =>'books_error_log'
);
END;
/