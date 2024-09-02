-- SQLite
--drop table Author;
--drop table Publisher;
--drop table Book;

-- Tables for bookstore
-- Book (Id (PK), Title, PublishedDate, Price, Edition, ISBN, Genre, PublicationId(FK), AuthorId(FK))
-- Publication (Id, Name, Address, Established)
-- Author (Id, Name, Address, Phone, Gender, Education)

-- One-to-One, One-to-Many, Many-to-Many


--for Author table
create table Author
(
    Id Integer PRIMARY KEY,
    Name text,
    Address text,
    Phone text,
    Gender text,
    Education text
);

select * from Author

INSERT INTO Author
VALUES (1, 'Yaswant Kenetkar', 'Ktm', '98455747463', 'M', 'Masters in Computer Science')

INSERT INTO Author
VALUES (2, 'Amar Neupane', 'chitwan', '984557473', 'M', 'Masters in Journalism and Mass Communication')

-- for Publication Table
-- Publication (Id, Name, Address, Established)

 create table Publication
 (
    Id Integer PRIMARY KEY,
    Name Text,
    Address Text,
    Established Text
 );

 INSERT INTO Publication
 VALUES(1, 'Asmita' , 'ktm', '2000 AD')

 INSERT INTO Publication
 VALUES(2, 'Fine Print' , 'ktm', '2000 AD')

 select * from Publication


--for Book Table
-- Book (Id (PK), Title, PublishedDate, Price, Edition, ISBN, Genre, PublicationId(FK), AuthorId(FK))
 
 create table Book
 (
    Id Integer PRIMARY KEY,
    Title Text,
    PublishedDate Text,
    Price Integer,
    Edition Text,
    ISBN Integer,
    Genre Text
 );

 INSERT INTO Book
 VALUES(1, 'Karnali Blues', '2010','500', 'first edition 2010', '2010500', 'adventure')

  INSERT INTO Book
 VALUES(2, 'Seto Dharti', '2012','350', 'first edition 2012', '2012350', 'fiction')

 select * from Book