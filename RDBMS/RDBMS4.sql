# Michael Moreland - RDBMS #4
select tbl_book.title, tbl_borrower.name, tbl_borrower.address
from tbl_book, tbl_borrower, tbl_book_loans, tbl_library_branch
where tbl_library_branch.branchName = 'Sharpstown' # From the 'Sharpstown' library branch
and tbl_book_loans.dueDate = '2021-10-31 12:20:46' # Where the due date is today
# Note we need to specify the time since dueDate is formatted with specific time, not just a date
and tbl_library_branch.branchId = tbl_book_loans.branchId # Cross-reference library branch branch Id to book loans branch Id
and tbl_book_loans.cardNo = tbl_borrower.cardNo # Cross-reference card numbers
and tbl_book_loans.bookId = tbl_book.bookId # Cross-reference book Id's

# Output will be nothing