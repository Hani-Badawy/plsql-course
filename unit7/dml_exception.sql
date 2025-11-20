/**********
Author: Hani Mohammed
Date: Nov-20-2025
***********/

DECLARE
v_msg books_error_log.ORA_ERR_MESG$%TYPE;
v_num NUMBER := 50;
BEGIN
insert into books(isbn, title, category) values (312321, 'TEST COMPUTER','COMPUTER');

IF (v_num >20) THEN
    RAISE_APPLICATION_ERROR(-20001,'Value bigger than 20');
END IF;
update books set title ='Intro to Oracle' where title ='Oracle';
commit;
EXCEPTION

WHEN others then
    ROLLBACK;
    v_msg := substr(SQLERRM, 0,100);
    insert into books_error_log (ORA_ERR_MESG$) values (v_msg);
    update books set title ='Intro to Oracle' where title ='Oracle';
    commit;
END;
/