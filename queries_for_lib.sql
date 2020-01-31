# select all customers ordered by their full name
SELECT 
    CONCAT(firstName, ' ', lastName) full_name
FROM
    customer
ORDER BY full_name;

#select all books with at least one book reservation
SELECT 
    b.title, COUNT(*) AS bookCount
FROM
    book_borrow bb, book b
WHERE bb.bookID = b.bookID
GROUP BY bb.bookID
HAVING bookCount >= 1;

# see how many times has each customer borrowed a specific genre
SELECT
	b.customerID, gg.genre, count(*)
FROM
	book_borrow b, book_genre g, genre gg
WHERE 
	b.bookID = g.bookID and g.genreID = gg.genreID
GROUP BY
	b.customerID, g.genreID;


# Select number of books each customer has so far
SELECT 
    c.firstName, COUNT(*)
FROM
    customer c,
    book_borrow b
WHERE
    c.customerID = b.customerID
GROUP BY c.customerID;

#Select customers who have books in circulation and the amount of the books not returned yet
SELECT 
    c.firstName, COUNT(*)
FROM
    customer c,
    book_borrow b
WHERE
    c.customerID = b.customerID
        AND returnDate IS NULL
GROUP BY c.customerID;


#select book names that have fiction or romance genre
select b.title
FROM book b, book_genre bg, genre g
WHERE b.bookID = bg.bookID and bg.genreID = g.genreID and (g.genre = 'Fiction' OR 'Romance');
        

# select number of room reserves each customer has

SELECT 
    c.firstName, COUNT(*)
FROM
    reserve r, customer c
WHERE
	r.customerID = c.customerID
GROUP BY c.customerID;


# a query to see how many customers an employee gave service 

SELECT 
    CONCAT(e.firstName, ' ', lastName) as Employee, COUNT(*) as cnt
FROM
    book_borrow bb, employee e
WHERE 
	bb.employee_employeeID = e.employeeID
GROUP BY bb.employee_employeeID;


#select those customers who have not borrowed books yet
SELECT CONCAT(firstName, ' ' , lastName) as Customer, customerID
FROM customer 
WHERE customerID NOT IN(SELECT customerID from book_borrow);


#favorite book among customers

select b1.bookID, b1.count
FROM (select b.bookID, count(*) as count
FROM book_borrow b, book_author ba, author a
WHERE b.bookID = ba.bookID and ba.authorID = a.authorID
GROUP BY b.bookID) b1,
(select max(b2.count) as max
from
(select b.bookID, count(*) as count
FROM book_borrow b, book_author ba, author a
WHERE b.bookID = ba.bookID and ba.authorID = a.authorID
GROUP BY b.bookID) b2) b3
WHERE b1.count = b3.max;

#a query which finds how many books are there for each language
SELECT 
    language, COUNT(*) as count
FROM
    book
GROUP BY language;


#how many books were borrowed for the years and months
SELECT YEAR(borrowDate) AS year, MONTHNAME(borrowDate) AS month, COUNT(*) as 'Count of Books'
FROM book_borrow
GROUP BY year, month;
