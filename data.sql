--Write the SQL code to create these three tables Authorship,Books,Author tables. Make sure you have primary and foreign key constraints included in the code
--write the sql code to create Author table having primary key and for foreign key with the following columns AuthorID, FirstName, Lastname
--write the sql code to create Books table with the following columns BookID, Title, MemberID,Price,Year 
--write the sql code to create Authorship table with the following columns AuthorshipID, AuthorID, BookID
create table Author(AuthorID int primary key, FirstName varchar(50), LastName varchar(50));
create table Books(BookID int primary key, Title varchar(50), MemberID int, Price float, Year int);
create table Authorship(AuthorshipID int primary key, AuthorID int, BookID int, foreign key(AuthorID) references Author(AuthorID), foreign key(BookID) references Books(BookID));
--Write the SQL code to insert the sample data into each table.
--write the sql code to insert the sample data into Author table
--write the sql code to insert the sample data into Books table
--write the sql code to insert the sample data into Authorship table
insert into Author values(1, 'John', 'Smith');
insert into Author values(2, 'Mary', 'Smith');
insert into Author values(3, 'John', 'Doe');
insert into Author values(4, 'Jane', 'Doe');
insert into Author values(5, 'John', 'Doe');

--write the sql code to insert the sample data into Books table
insert into Books values(1, 'The Adventures of Tom Sawyer', 1, 10.99, 1876);
insert into Books values(2, 'The Adventures of Huckleberry Finn', 1, 10.99, 1884);
insert into Books values(3, 'The Prince and the Pauper', 1, 10.99, 1881);
insert into Books values(4, 'The Tragedy of Romeo and Juliet', 2, 10.99, 1597);
insert into Books values(5, 'The Tragedy of Hamlet, Prince of Denmark', 2, 10.99, 1601);

--write the sql code to insert the sample data into Authorship table
insert into Authorship values(1, 1, 1);
insert into Authorship values(2, 1, 2);
insert into Authorship values(3, 1, 3);
insert into Authorship values(4, 2, 4);
insert into Authorship values(5, 2, 5);
--Write SQL code to insert a new column onto Books table called “priceIncTax” which is FLOAT type and populate it with values calculated as priceIncTax = price * 1.07. 
--write the sql code to insert a new column onto Books table called “priceIncTax” which is FLOAT type and populate it with values calculated as priceIncTax = price * 1.07
alter table Books add priceIncTax float;
update Books set priceIncTax = Price * 1.07;
--Write SQL code to update the priceIncTax column to be the price * 1.07 for all rows in the table.

--Write SQL code to delete books from book table whose price is less than $10.
--write the sql code to delete books from book table whose price is less than $10
delete from Books where Price < 10;
