# Michael Moreland - RDBMS #6
select tbl_borrower.name, tbl_borrower.address, count(tbl_book_loans.cardNo)
from tbl_borrower, tbl_book_loans
where tbl_borrower.cardNo = tbl_book_loans.cardNo # Cross-reference 
group by tbl_borrower.name # Group by borrower name
having count(tbl_book_loans.cardNo) > 5 # Need to have borrowed more than 5 books

# Output in .csv file