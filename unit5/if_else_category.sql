/***********************
Author:Hani Mohammed
Date: 16-Oct-2025
Description: Use if else if statement with real data 
***********************/

   set serveroutput on; 
set feedback off;
set echo off;

declare
   v_isbn  books.isbn%type := '0132149871';
   v_cat   books.category%type;
   v_title books.title%type := 'THE WOK WAY TO COOK';
begin
   select category
     into v_cat
     from books
    where title = v_title;

   if ( v_cat = 'COMPUTER' ) then
      dbms_output.put_line('The book: '
                           || v_title || ' is in the  computer category');
   elsif ( v_cat = 'COOKING' ) then
      dbms_output.put_line('The book: '
                           || v_title || ' is  in the cooking category');
   elsif ( v_cat = 'SELF HELP' ) then
      dbms_output.put_line('The book: '
                           || v_title || ' is  in the self help category');
   else
      dbms_output.put_line('The book: '
                           || v_title || ' is  in a different category');
   end if;
end;
/