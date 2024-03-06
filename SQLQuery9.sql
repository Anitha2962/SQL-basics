
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    BookID INT,
    SaleDate DATE,
    SaleAmount DECIMAL(10, 2),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);