# Michael Moreland - RDBMS #5
select tbl_library_branch.branchName, count(tbl_book_loans.branchId) # Each time a branch Id appears in a book loans entry is a count towards that branch
from tbl_library_branch, tbl_book_loans
where tbl_book_loans.branchId = tbl_library_branch.branchId # Cross-reference branch Id
group by tbl_library_branch.branchName # Can group by branchId or branchName, either way we NEED group by 

# Output in .csv file