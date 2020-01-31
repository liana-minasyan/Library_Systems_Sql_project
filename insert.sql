/* inserting into customer */ 
insert into customer(firstName, lastName, email)
values('Carine', 'Schmitt', 'dmurphy@classicmodelcars.com');

insert into customer(firstName, lastName, email)
values('Jean', 'King', 'mpatterso@classicmodelcars.com');

insert into customer(firstName, lastName, email)
values('Peter', 'Ferguson', 'jfirrelli@classicmodelcars.com');

insert into customer(firstName, lastName, email)
values('Janine', 'Labrune', 'wpatterson@classicmodelcars.com');


insert into customer(firstName, lastName, email)
values('Jonas', 'Bergulfsen', 'gbondur@classicmodelcars.com');


insert into customer(firstName, lastName, email)
values('Susan', 'Nelson', 'abow@classicmodelcars.com');


insert into customer(firstName, lastName, email)
values('Zbyszek', 'Piestrzeniewicz', 'ljennings@classicmodelcars.com');

insert into customer(firstName, lastName, email)
values('Roland', 'Keitel', 'lthompson@classicmodelcars.com');

insert into customer(firstName, lastName, email)
values('Julie', 'Murphy', 'mnishi@classicmodelcars.com');

insert into customer(firstName, lastName, email)
values('Kwai', 'Lee', 'spatterson@classicmodelcars.com');

insert into customer(firstName, lastName, email)
values('Diego', 'Freyre', 'ftseng@classicmodelcars.com');


/* inserting into phone */

insert into phone(customerID, phoneNumber)
values('12', '40322555');

insert into phone(customerID, phoneNumber)
values('13', '7051838');

insert into phone(customerID, phoneNumber)
values('14', '0365674555');

insert into phone(customerID, phoneNumber)
values('15', '07989555');

insert into phone(customerID, phoneNumber)
values('16', '41555450');

insert into phone(customerID, phoneNumber)
values('17', '40892555');

insert into phone(customerID, phoneNumber)
values('18', '46602555');

insert into phone(customerID, phoneNumber)
values('19', '6702555');

insert into phone(customerID, phoneNumber)
values('20', '544454');


/* inserting into book table */

insert into book(title, year_of_publishment, publisher, description, language)
values('Harry Potter and the Chamber of Secrets', '2002', 'Bloomsbury Publishing', 'Winning will make you famous. Losing means certain death.The nation of Panem, formed from a post-apocalyptic North America, is a country that consists of a wealthy Capitol region surrounded by 12 poorer districts.', 'English');

insert into book(title, year_of_publishment, publisher, description, language)
values('Harry Potter and the Half-Blood Prince', '2006', 'Bloomsbury Publishing', 'Winning will make you famous. Losing means certain death.The nation of Panem, formed from a post-apocalyptic North America, is a country that consists of a wealthy Capitol region surrounded by 12 poorer districts.', 'English');

insert into book(title, year_of_publishment, publisher, description, language)
values('Harry Potter and the Deadly Hallows', '2007', 'Bloomsbury Publishing', 'Winning will make you famous. Losing means certain death.The nation of Panem, formed from a post-apocalyptic North America, is a country that consists of a wealthy Capitol region surrounded by 12 poorer districts.', 'Russian');

insert into book(title, year_of_publishment, publisher, description, language)
values('Harry Potter and the Goblet of Fire', '2004', 'Bloomsbury Publishing', 'Winning will make you famous. Losing means certain death.The nation of Panem, formed from a post-apocalyptic North America, is a country that consists of a wealthy Capitol region surrounded by 12 poorer districts.', 'Armenian');

insert into book(title, year_of_publishment, publisher, description, language)
values('Harry Potter and the Sorcerers Stone', '2001', 'Bloomsbury Publishing', 'Winning will make you famous. Losing means certain death.The nation of Panem, formed from a post-apocalyptic North America, is a country that consists of a wealthy Capitol region surrounded by 12 poorer districts.', 'Armenian');

insert into book(title, year_of_publishment, publisher, description, language)
values('Hunger Games', '2000', 'HarperCollins', 'Winning will make you famous. Losing means certain death.The nation of Panem, formed from a post-apocalyptic North America, is a country that consists of a wealthy Capitol region surrounded by 12 poorer districts.', 'Persian');

insert into book(title, year_of_publishment, publisher, description, language)
values('Divergent', '2009', 'HarperCollins', 'Winning will make you famous. Losing means certain death.The nation of Panem, formed from a post-apocalyptic North America, is a country that consists of a wealthy Capitol region surrounded by 12 poorer districts.', 'English');

insert into book(title, year_of_publishment, publisher, description, language)
values('Mortal Instruments', '1999', 'HarperCollins', 'Winning will make you famous. Losing means certain death.The nation of Panem, formed from a post-apocalyptic North America, is a country that consists of a wealthy Capitol region surrounded by 12 poorer districts.', 'English');

insert into book(title, year_of_publishment, publisher, description, language)
values('Twilight', '2005', 'Little, Brown and Company', 'Winning will make you famous. Losing means certain death.The nation of Panem, formed from a post-apocalyptic North America, is a country that consists of a wealthy Capitol region surrounded by 12 poorer districts.', 'Russian');

insert into book(title, year_of_publishment, publisher, description, language)
values('The Book Thief', '1996', 'Marcus Zusak', 'Winning will make you famous. Losing means certain death.The nation of Panem, formed from a post-apocalyptic North America, is a country that consists of a wealthy Capitol region surrounded by 12 poorer districts.', 'English');

insert into book(title, year_of_publishment, publisher, description, language)
values('The Great Gatsby', '1990', 'Charles Scribners Sons', 'A true classic of twentieth-century literature, this edition has been updated by Fitzgerald scholar James L.W. West III to include the authorâ€™s final revisions and features a note on the composition and text.', 'English');


/* inserting into genre table */

insert into genre(genre) values 
('Fiction'), ('Fantasy'), ('Historical'), ('Classics'), ('Romance'), ('Humor'), ('Drama'), ('Horrow'), ('Detective'), ('Literature');


/* inserting into book_genre table */
insert into book_genre(bookID, genreID)
values('15', '12');

insert into book_genre(bookID, genreID)
values('15', '13');

insert into book_genre(bookID, genreID)
values('16', '13');

insert into book_genre(bookID, genreID)
values('16', '16');

insert into book_genre(bookID, genreID)
values('17', '18');

insert into book_genre(bookID, genreID)
values('17', '12');

insert into book_genre(bookID, genreID)
values('17', '13');

insert into book_genre(bookID, genreID)
values('22', '16');

insert into book_genre(bookID, genreID)
values('22', '19');

insert into book_genre(bookID, genreID)
values('23', '16');

insert into book_genre(bookID, genreID)
values('25', '18');


/* inserting into author table */

insert into author(firstName, lastName)
values('Joanne', 'Rowling');

insert into author(firstName, lastName)
values('Suzanne', 'Collins');

insert into author(firstName, lastName)
values('Veronica', 'Roth');

insert into author(firstName, lastName)
values('Francis', 'Fitzgerald');

insert into author(firstName, lastName)
values('Stephanie', 'Meyer');

insert into author(firstName, lastName)
values('Markus', 'Zusak');

insert into author(firstName, lastName)
values('Joshua', 'Lewis');

insert into author(firstName, lastName)
values('Cassandra', 'Claire');

insert into author(firstName, lastName)
values('Jack', 'Thorne');


/* inserting into book_author table */

insert into book_author(authorID, bookID)
values('13', '15');

insert into book_author(authorID, bookID)
values('13', '16');

insert into book_author(authorID, bookID)
values('13', '17');

insert into book_author(authorID, bookID)
values('13', '18');

insert into book_author(authorID, bookID)
values('13', '19');

insert into book_author(authorID, bookID)
values('15', '21');

insert into book_author(authorID, bookID)
values('19', '16');

insert into book_author(authorID, bookID)
values('18', '24');

insert into book_author(authorID, bookID)
values('14', '23');



/* inserting into employee table */

insert into employee(phone, email, firstName, lastName)
values('298124124', 'dmurphy@classicmodelcars.com', 'Diane', 'Murphy');

insert into employee(phone, email, firstName, lastName)
values('98567124', 'mpatterso@classicmodelcars.com', 'Mary', 'Patterson');

insert into employee(phone, email, firstName, lastName)
values('9481385', 'jfirrelli@classicmodelcars.com', 'Jeff', 'Firrelli');

insert into employee(phone, email, firstName, lastName)
values('3871240', 'wpatterson@classicmodelcars.com', 'William', 'Patterson');

insert into employee(phone, email, firstName, lastName)
values('2917018', 'gbondur@classicmodelcars.com', 'Gerard', 'Bondur');

insert into employee(phone, email, firstName, lastName)
values('482934', 'abow@classicmodelcars.com', 'Anthony', 'Bow');

insert into employee(phone, email, firstName, lastName)
values('948272', 'ljennings@classicmodelcars.com', 'Leslie', 'Jennings');

insert into employee(phone, email, firstName, lastName)
values('297351', 'lthompson@classicmodelcars.com', 'Leslie', 'Thompson');

insert into employee(phone, email, firstName, lastName)
values('859911', 'ftseng@classicmodelcars.com', 'Julie', 'Firrelli');

insert into employee(phone, email, firstName, lastName)
values('1215955', 'spatterson@classicmodelcars.com', 'Steve', 'Patterson');

insert into employee(phone, email, firstName, lastName)
values('1285715', 'gvanauf@classicmodelcars.com', 'Foon Yue', 'Tseng');


/* inserting into room table */

insert into room(capacity)
values('4');

insert into room(capacity)
values('5');

insert into room(capacity)
values('9');

insert into room(capacity)
values('3');

insert into room(capacity)
values('15');

insert into room(capacity)
values('10');



/* inserting into reserve table */ 

insert into reserve(roomID, customerID, reserve_date)
values('7', '15', '2019-10-14');

insert into reserve(roomID, customerID, reserve_date)
values('7', '18', '2019-11-02');

insert into reserve(roomID, customerID, reserve_date)
values('9', '18', '2018-02-14');

insert into reserve(roomID, customerID, reserve_date)
values('11', '21', '2019-9-14');

insert into reserve(roomID, customerID, reserve_date)
values('10', '20', '2018-4-14');



/* inserting into book_borrow table */

insert into book_borrow(customerID, bookID, borrowDate, returnDate, overDue, employee_employeeID)
values('13', '15', '2018-4-14', '2018-4-20',  '2018-5-14', '12');

 insert into book_borrow(customerID, bookID, borrowDate, returnDate, overDue, employee_employeeID)
values('15', '20', '2019-4-14', '2019-4-24','2019-5-14', '15');

 insert into book_borrow(customerID, bookID, borrowDate, overDue, employee_employeeID)
values('12', '15', '2018-10-15','2019-11-15', '20');

#checking if the trigger works
#insert into book_borrow(customerID, bookID, borrowDate,returnDate, overDue, employee_employeeID)
#values('15', '15', '2018-10-15', '2018-10-25','2019-11-15', '22');
 
 insert into book_borrow(customerID, bookID, borrowDate, overDue, employee_employeeID)
values('12', '16', '2018-10-15','2019-11-15', '12');

 insert into book_borrow(customerID, bookID, borrowDate, returnDate, overDue, employee_employeeID)
values('17', '18', '2018-6-30', '2018-8-4','2018-7-30', '19');

 insert into book_borrow(customerID, bookID, borrowDate, returnDate, overDue, employee_employeeID)
values('16', '17', '2018-6-23', '2018-7-23','2018-7-23', '13');

 insert into book_borrow(customerID, bookID, borrowDate, overDue, employee_employeeID)
values('18', '19', '2019-8-14','2019-9-14', '20');

 insert into book_borrow(customerID, bookID, borrowDate, returnDate, overDue, employee_employeeID)
values('14', '20', '2019-9-25', '2019-10-28','2019-10-25', '21');


/* inserting into fine_policy table */

insert into fine_policy(minDate, maxDate, type, amount_to_pay, description)
values('1', '2', 'Good', '50', 'When the item is 1 day overdue, the customer is being charged a fine of 50 AMD , 
the fine status will be set as GOOD indicating there are no further complications for the customer.');

insert into fine_policy(minDate, maxDate, type, amount_to_pay, description)
values('3', '5', 'Fine', '100', 'When the item is 2 to 5 days overdue, the customer is being charged a fine of 100 AMD , 
the fine status will be set as FINE indicating there are no further complications for the customer.');

insert into fine_policy(minDate, maxDate, type, amount_to_pay, description)
values('6', '10', 'Warning', '200', 'When the item is 6 to 10 days overdue, the customer is being charged a fine of 200 AMD , 
the fine status will be set as WARNING,the cutomer will be notified of the overdue materials and further complications.');

insert into fine_policy(minDate, maxDate, type, amount_to_pay,description)
values('11', '25', 'Warning', '500', 'When the item is 11 to 25 days overdue, the customer is being charged a fine of 500 AMD , 
the fine status will be set as WARNING, the cutomer will be notified of the overdue materials and further complications.
Any additional overdue day will cause the customer to be blocked from using library systems for a month');

insert into fine_policy(minDate, maxDate, type, amount_to_pay, description)
values('26', '30', 'Block', '1000', 'When the item is 26 to 30 days overdue, the customer is being charged a fine of 1000 AMD, and one month Block will be placed on 
customer''s account');



#an example of how new books are inserted in our DB
#book 1 insertion
insert into book(title, year_of_publishment, publisher, description, language)
values('God Created the Integers', '2007', 'Penguin', 'Bestselling author and physicist Stephen Hawking explores the "masterpieces" of mathematics,
 25 landmarks spanning 2,500 years and representing the work of 15 mathematicians, including Augustin Cauchy, Bernard Riemann, and Alan Turing', 'English');
 
Insert into genre(genre) values 
('Mathematics');
 
 
insert into book_genre(bookID, genreID)
values('26', '22');
 
insert into author(firstName, lastName)
values('Stephen', 'Hawking');

insert into book_author(authorID, bookID)
values('22', '26');

#book2 insertion
insert into book(title, year_of_publishment, publisher, description, language)
values('Birth of a Theorem', '2010', 'Bodley Head',  'Birth of a Theorem is Villani''s own account of the years leading up to the award. It invites readers inside the mind 
of a great mathematician as he wrestles with the most important work of his career.', 'English');
  
insert into book_genre(bookID, genreID)
values('27', '22');
 
insert into author(firstName, lastName)
values('Cedric', 'Vilani');

insert into book_author(authorID, bookID)
values('23', '27');

#book 3 insertion 
insert into book(title, year_of_publishment, publisher, description, language)
values('Complete Sherlock Holmes, The - Vol I', '2013', 'Bantam Classics',  'Sherlock Holmes has been one of the most beloved fictional characters ever created.
 Now, in two paperback volumes, Bantam presents all fifty-six short stories and four novels featuring Conan Doyle''s classic hero', 'English');
  
insert into book_genre(bookID, genreID)
values('28', '12');
 
insert into author(firstName, lastName)
values( 'Arthur Conan', 'Doyle');

insert into book_author(authorID, bookID)
values('24', '28');




# inserting into book_borrow table 
insert into book_borrow(customerID, bookID, borrowDate, returnDate, overDue, employee_employeeID)
values('15', '18', '2018-5-14', '2018-4-20',  '2018-6-14', '22');

 insert into book_borrow(customerID, bookID, borrowDate, returnDate, overDue, employee_employeeID)
values('20', '20', '2019-9-14', '2019-4-10','2019-10-14', '20');

insert into book_borrow(customerID, bookID, borrowDate, returnDate, overDue, employee_employeeID)
values('19', '17', '2018-4-14', '2018-4-20',  '2018-5-14', '12');

 insert into book_borrow(customerID, bookID, borrowDate, returnDate, overDue, employee_employeeID)
values('16', '20', '2019-9-14', '2019-9-30','2019-10-18', '19');

 insert into book_borrow(customerID, bookID, borrowDate, overDue, employee_employeeID)
values('14', '17', '2018-10-20','2019-11-20', '15');
