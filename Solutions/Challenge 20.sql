/* Challenge 20

Create two reports:
    1. How many books were published each year, with the years with the most published at the top?
    2. What are the five most checked-out books by patrons?
*/

SELECT Books.BookID, Books.Title, Books.Author, SUM(x.CheckOuts) AS Total
FROM Books
JOIN (SELECT BookID, COUNT(*) AS CheckOuts
    FROM Loans
    GROUP BY BookID
    ) AS x
ON Books.BookID = x.BookID
GROUP BY Title
ORDER BY Total DESC
LIMIT 5;