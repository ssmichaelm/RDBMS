# Michael Moreland - RDBMS #2
select noOfCopies, branchName # We want the number of copies of a book and the branch name
from tbl_book, tbl_book_copies, tbl_library_branch # From relevant tables
where tbl_book.bookId = tbl_book_copies.bookId # Match book Id's
and tbl_book_copies.branchId = tbl_library_branch.branchId # Match branch Id's
and tbl_book.title = 'The Lost Tribe'; # With given title

# Output in .csv file