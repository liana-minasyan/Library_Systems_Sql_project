delimiter $$

CREATE TRIGGER not_book_borrow
BEFORE INSERT
   ON book_borrow FOR EACH ROW

BEGIN
	if exists (select bookID from book_borrow where (bookID = new.bookID AND book_borrow.returnDate is NULL))
	THEN
		SIGNAL SQLSTATE '02000' SET MESSAGE_TEXT = 'Warning: this book cannot be borrowed since it is not available' ;
    END IF;
    
END;