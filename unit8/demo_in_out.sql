create or REPLACE PROCEDURE get_books_per_publisher(
    id_count IN OUT NUMBER
)
is 
BEGIN
    select count(*) into id_count from books group by pubid
    having pubid = id_count;
END;
/