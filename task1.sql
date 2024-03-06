CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    BookTitle VARCHAR(255) NOT NULL,
    AuthorName VARCHAR(100) NOT NULL,
    PublishedYear INT
);

INSERT INTO Books (BookID, BookTitle, AuthorName, PublishedYear) VALUES
(1, 'Book 1', 'Author A', 2018),
(2, 'Book 2', 'Author B', 2019),
(3, 'Book 3', 'Author C', 2020),
(4, 'Book 4', 'Author A', 2021),
(5, 'Book 5', 'Author B', 2021);

SELECT *
FROM Books
WHERE PublishedYear = 2021;

SELECT *
FROM Books
WHERE AuthorName = 'Author A';

SELECT DISTINCT AuthorName
FROM Books;