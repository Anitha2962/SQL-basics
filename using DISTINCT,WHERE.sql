select * from tbl_libraryBooks
insert into tbl_libraryBooks (Id,Book_Title,Book_Author,Book_Year)
values (4,'two states','chetanbagath',2014)

select * from tbl_libraryBooks where Book_Year=2008;
select * from tbl_libraryBooks where Book_Author ='chetanbagath';
select DISTINCT Book_Title from tbl_libraryBooks;