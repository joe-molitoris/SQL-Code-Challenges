/* Challenge 13

How many copies of Dracula does the library have that are available to be checked out?

*/

SELECT
(SELECT COUNT(*)
FROM Books
WHERE Title = "Dracula")
-
(SELECT COUNT(*)
FROM Loans
WHERE BookID IN (SELECT BookID From Books Where Title="Dracula") AND ReturnedDate IS NULL) AS CopiesAvailable