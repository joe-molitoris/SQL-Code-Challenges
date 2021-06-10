/* Challenge 16

Generate a report of books due back on July 13, 2020 with patron contact information.

*/

SELECT p.FirstName, p.LastName, p.Email, b.Title
FROM Loans as l
LEFT JOIN Patrons as p
ON p.PatronID = l.PatronID
LEFT JOIN Books as b
ON b.BookID=l.BookID
WHERE l.DueDate = "2020-07-13" AND l.ReturnedDate IS NULL;