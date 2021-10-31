# Michael Moreland - RDBMS #7
select tbl_book.title, tbl_book_copies.noOfCopies
# Use a nested join
from 
# 1. Join the "book" table and "author" table author Ids
(((tbl_book join tbl_author on tbl_book.authId = tbl_author.authorId) join 
	#2. Join the "book" and "book_copies" tables' book Ids, and join that to the above
	tbl_book_copies on tbl_book.bookId = tbl_book_copies.bookId) join 
		# 3. Join the "book_copies" and "library_branch" tables' branch Ids, and join that to the above
		tbl_library_branch on tbl_book_copies.branchId = tbl_library_branch.branchId)
# At this point, there's a relationship between all four tables based on matching/joining Ids
where tbl_author.authorName = 'Stephen King' # Finally specify Stephen King as the author we want
and tbl_library_branch.branchName = 'Central' # and the branch we want
 
# Output will be nothing