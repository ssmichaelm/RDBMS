# Michael Moreland - RDBMS #3
select name
from tbl_borrower # Select the names of borrowers
where tbl_borrower.cardNo not in 
	(select cardNo from tbl_book_loans) # Whose card numbers are not recorded in the book loans table

# Output in .csv file