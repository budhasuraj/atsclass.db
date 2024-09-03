drop table Publication
drop table Author
drop table Books
--task 1 all tables created


--create table publication
create table Publication
(
    Id Integer primary key,
    Name text,
    Address text,
    Established text
);

insert INTO Publication
VALUES
(
    1,
    'Fineprint',
    'kathmandu',
    '2006'
),
(
    2,
    'Nepalaya',
    'kathmandu',
    '2005'
),
(
    3,
    'Sajha Prakashan',
    'kathmandu',
    '1913'
);

select * from Publication


--table Author

create table Author
(
    Id Integer primary key,
    Name text,
    Address text,
    Phone text,
    Gender text,
    Education text
);

insert into Author
VALUES
(
    1,
    'Parijat',
    'Kathmandu',
    '9843858585',
    'F',
    'Masters in Philosophy'
),
(
    2,
    'Laxmi Prasad Devkota',
    'Kathmandu',
    '9843852585',
    'M',
    'BAchelor of Arts'
),
(
    3,
    'Buddhi Sagar',
    'Kathmandu',
    '9843458585',
    'M',
    'Bachelors of Arts in Literature'
),
(
    4,
    'Krishna Dharabashi',
    'Kathmandu',
    '9841858585',
    'M',
    'Masters in Philosophy'
),
(
    5,
    'Diamond Shumsher Rana',
    'Kathmandu',
    '9843888585',
    'M',
    'Rana Aristocracy'
),
(
    6,
    'Narayan Wagle',
    'Kathmandu',
    '9843388585',
    'M',
    'Bachelors in Journalism'
);

select * from Author



--Book table
create table Books
(
    Id Integer primary key,
    Title text,
    PublishedDate text,
    Price float,
    Edition text,
    ISBN text,
    Genre text,
    PublicationId Integer,
    AuthorId Integer,
    FOREIGN KEY (PublicationId) REFERENCES Publication(Id),
    FOREIGN KEY (AuthorId) REFERENCES Author(Id)
);


--task 2


insert into Books
VALUES
(
    1,
    'Muna Madan',
    '1936',
    '150',
    'first edition',
    '1936-150',
    'Epic Poetry',
    3,
    2
),
(
    2,
    'Seto Bagh',
    '1973',
    '400',
    'first edition',
    '1973-400',
    'Historical Fiction',
    3,
    5
),
(
    3,
    'Karnali Blues',
    '2010',
    '450',
    'first edition',
    '2010-450',
    'Fiction',
    1,
    3
),
(
    4,
    'Sirish Ko Phool',
    '1965',
    '450',
    'first edition',
    '21965-450',
    'Novel, Psychological Fiction',
    3,
    1
),
(
    5,
    'Radha',
    '2005',
    '250',
    'first edition',
    '2005-250',
    'Fiction, Mythological',
    3,
    4
),
(
    6,
    'Jhola',
    '2005',
    '250',
    'first edition',
    '21965-250',
    'Social Issues',
    3,
    4
),
(
    7,
    'Palpasa Cafe',
    '2005',
    '395',
    'first edition',
    '21965-395',
    'Fiction',
    2,
    6
),
(
    8,
    'Koreana Coffee Guff',
    '2022',
    '500',
    'first edition',
    '21965-500',
    'Travalogue',
    3,
    4
),
(
    9,
    'Sulochana',
    '1943',
    '250',
    'first edition',
    '21965-2250',
    'Epic Poetry',
    3,
    2
),
(
    10,
    'Aina',
    '2010',
    '300',
    'first edition',
    '21965-350',
    'Fiction, Psychological',
    3,
    4
),
(
    11,
    'Abiral Bagcha Indrawati',
    '2012',
    '350',
    'first edition',
    '21965-3501',
    'Historical, Fiction',
    3,
    4
),
(
    12,
    'Mahattahin',
    '1967',
    '300',
    'first edition',
    '21965-3250',
    'Novel, Social Fiction',
    3,
    1
),
(
    13,
    'Phirphire',
    '2016',
    '300',
    'first edition',
    '21965-3350',
    'Adventure, Fiction',
    1,
    3
),
(
    14,
    'Naya Sadak Ko Geet',
    '2013',
    '400',
    'first edition',
    '21965-400',
    'Social Issues',
    1,
    3
),
(
    15,
    'Tiraskrit',
    '2013',
    '300',
    'first edition',
    '21965-4000',
    'Social issues',
    1,
    3
),
(
    16,
    'Basanti',
    '1957',
    '350',
    'first edition',
    '1957-350',
    'Historical Fiction',
    3,
    5
),
(
    17,
    'Pratibaddha',
    '1967',
    '375',
    'first edition',
    '1957-375',
    'Historical Fiction',
    3,
    5
),
(
    18,
    'Grihadaha',
    '1975',
    '375',
    'first edition',
    '1975-375',
    'Historical Fiction',
    3,
    5
),
(
    19,
    'Aath Sawal',
    '1976',
    '375',
    'first edition',
    '1976-375',
    'Historical Fiction',
    3,
    5
),
(
    20,
    'Eklo',
    '2009',
    '375',
    'first edition',
    '2009-375',
    'Fiction, Social Issues',
    3,
    4
);

select * from Books


--task 3
--join table

SELECT b.Title, b.Price, a.Name as Author,p.Name as Publication, b.PublishedDate FROM Books as b
 JOIN Author as a ON a.Id=b.AuthorId
 JOIN Publication as p ON p.Id=b.PublicationId

 --get all books which are published in last 30 years

 SELECT b.Title, b.Price, a.Name as Author, p.Name as Publication, b.PublishedDate 
FROM Books as b
JOIN Author as a ON a.Id = b.AuthorId
JOIN Publication as p ON p.Id = b.PublicationId
WHERE b.PublishedDate >= '1994'
ORDER BY b.PublishedDate DESC;


--get total price of books written by parijat
SELECT SUM(b.Price) as Total_Price_of_Parijat_Books
FROM Books as b
JOIN Author as a ON a.Id = b.AuthorId
WHERE a.Name = 'Parijat';

--Get all publishers in descending order with number of books published so far

SELECT p.Name as Publisher, COUNT(b.Id) as NumberOfBooks
FROM Publication as p
LEFT JOIN Books as b ON p.Id = b.PublicationId
GROUP BY p.Name
ORDER BY NumberOfBooks DESC;

--Get all authors with comma separated list of books they have written
--we use grouping to list

SELECT a.Name as Author, GROUP_CONCAT(b.Title, ', ') as Books
FROM Author as a
LEFT JOIN Books as b ON a.Id = b.AuthorId
GROUP BY a.Name;