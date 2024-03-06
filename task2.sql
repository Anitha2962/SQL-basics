CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    AuthorName VARCHAR(100) NOT NULL
);

CREATE TABLE Publishers (
    PublisherID INT PRIMARY KEY,
    PublisherName VARCHAR(100) NOT NULL
);

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    BookTitle VARCHAR(255) NOT NULL,
    AuthorID INT,
    PublisherID INT,
    PublishedYear INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (PublisherID) REFERENCES Publishers(PublisherID) ON UPDATE CASCADE ON DELETE CASCADE
);
INSERT INTO Authors (AuthorID, AuthorName) VALUES
(1, 'Author 1'),
(2, 'Author 2'),
(3, 'Author 3');

INSERT INTO Publishers (PublisherID, PublisherName) VALUES
(1, 'Publisher 1'),
(2, 'Publisher 2'),
(3, 'Publisher 3');


INSERT INTO Books (BookID, BookTitle, AuthorID, PublisherID, PublishedYear) VALUES
(1, 'Book 1', 1, 1, 2021),
(2, 'Book 2', 2, 2, 2020),
(3, 'Book 3', 3, 3, 2019);

--INNER JOIN--
SELECT Books.BookTitle, Authors.AuthorName, Publishers.PublisherName
FROM Books
INNER JOIN Authors ON Books.AuthorID = Authors.AuthorID
INNER JOIN Publishers ON Books.PublisherID = Publishers.PublisherID;

--LEFT JOIN--
SELECT Books.BookTitle, Authors.AuthorName, Publishers.PublisherName
FROM Books
LEFT JOIN Authors ON Books.AuthorID = Authors.AuthorID
LEFT JOIN Publishers ON Books.PublisherID = Publishers.PublisherID;

--RIGHT JOIN--
SELECT Books.BookTitle, Authors.AuthorName, Publishers.PublisherName
FROM Books
RIGHT JOIN Authors ON Books.AuthorID = Authors.AuthorID
RIGHT JOIN Publishers ON Books.PublisherID = Publishers.PublisherID;

--FULL OUTER JOIN--
SELECT Books.BookTitle, Authors.AuthorName, Publishers.PublisherName
FROM Books
FULL OUTER JOIN Authors ON Books.AuthorID = Authors.AuthorID
FULL OUTER JOIN Publishers ON Books.PublisherID = Publishers.PublisherID;

SELECT 'Author' AS RecordType, AuthorID AS ID, AuthorName AS Name FROM Authors
UNION ALL
SELECT 'Publisher' AS RecordType, PublisherID AS ID, PublisherName AS Name FROM Publishers;



CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    BookID INT,
    SaleDate DATE,
    SaleAmount DECIMAL(10, 2),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);
SELECT BookID, SUM(SaleAmount) AS TotalSalesAmount
FROM Sales
GROUP BY BookID;

SELECT BookID, YEAR(SaleDate) AS SaleYear, SUM(SaleAmount) AS TotalSalesAmount
FROM Sales
GROUP BY BookID, YEAR(SaleDate);




 CREATE PROCEDURE GetTotalSalesForBook (IN bookTitle VARCHAR(255), OUT totalSales DECIMAL(10, 2))
BEGIN
    SELECT SUM(SaleAmount) INTO TotalSales
    FROM Sales
    WHERE BookID = (SELECT BookID FROM Books WHERE BookTitle = bookTitle);
	END

	CREATE PROCEDURE GetTotalSalesForBook (IN bookTitle VARCHAR(255), OUT totalSales DECIMAL(10, 2))
BEGIN
    SELECT SUM(SaleAmount) INTO totalSales
    FROM Sales
    WHERE BookID = (SELECT BookID FROM Books WHERE BookTitle = bookTitle);
END 




CREATE PROCEDURE GetAllBookTitles()
BEGIN
    SELECT BookTitle
    FROM Books;
END



	