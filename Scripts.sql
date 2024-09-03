-- SQLite
drop table Author;
drop table Publication;
drop table Book;

-- Tables for bookstore
-- Book (Id (PK), Title, PublishedDate, Price, Edition, ISBN, Genre, PublicationId(FK), AuthorId(FK))
-- Publication (Id, Name, Address, Established)
-- Author (Id, Name, Address, Phone, Gender, Education)

-- One-to-One, One-to-Many, Many-to-Many


--for Author table
create table Author
(
    Id Integer PRIMARY KEY identity,
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

INSERT INTO Author
VALUES (3, 'Buddhi Sagar', 'Ktm', '985747463', 'M', 'Masters in Journalism')

-- for Publication Table
-- Publication (Id, Name, Address, Established)

 create table Publication
 (
    Id Integer primary key identity,
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
    Id Integer PRIMARY KEY identity,
    Title Text,
    PublishedDate Text,
    Price Integer,
    Edition Text,
    ISBN Integer,
    Genre Text,
    PublicationId Integer,
    AuthorId Integer,
    FOREIGN KEY (PublicationId) REFERENCES Publication(Id),
    FOREIGN KEY (AuthorId) REFERENCES Author(Id)
 );

 INSERT INTO Book
 VALUES
 (1, 'Karnali Blues', '2010','500', 'first edition 2010', '2010500', 'adventure',2,3 ),


 (2, 'Seto Dharti', '2012','350', 'first edition 2012', '2012350', 'fiction',2,2);

 select * from Book


 