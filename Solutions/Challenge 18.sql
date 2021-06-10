/* Challenge 18

Create a report showing 10 Patrons who have checked out fewest books.

*/


SELECT Patrons.*, TotalLoans
FROM Patrons
JOIN (SELECT PatronID, COUNT(*) AS TotalLoans FROM Loans GROUP BY PatronID) AS x
ON Patrons.PatronID = x.PatronID
ORDER BY TotalLoans
LIMIT 10;
