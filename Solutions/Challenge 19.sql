/* Challenge 19

Curate an event featuring books from the 1890s.

Create a list of books published in the 1890s that are currently available.

*/

SELECT Books.Title, Books.Author, Books.Published
FROM Books
JOIN Loans
ON Books.BookID=Loans.BookID
WHERE Published>=1890 AND Published<=1899 AND Loans.ReturnedDate IS NOT NULL
GROUP BY Books.BookID
ORDER BY Books.Author;

