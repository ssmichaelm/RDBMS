# Michael Moreland - RDBMS #1
select noOfCopies 
from tbl_book, tbl_book_copies, tbl_library_branch
where tbl_book_copies.branchId = tbl_library_branch.branchId # Match branch Id's
and tbl_book.bookId = tbl_book_copies.bookId # Match book Id's
and tbl_book.title = 'The Lost Tribe' # Where book title is The Lost Tribe
and tbl_library_branch.branchName = 'Sharpstown' # At the specific branch Sharpston

# Output will be nothing