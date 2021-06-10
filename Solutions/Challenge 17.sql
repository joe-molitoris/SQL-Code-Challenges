/* Challenge 17

Return the following three books that were found in the book return bin by:
    July 5, 2020

Barcodes:
    6435968624
    5677520613
    8730298424
*/



UPDATE Loans
SET ReturnedDate="2020-07-05"
WHERE LoanID IN (SELECT LoanID 
    FROM Loans
    JOIN (SELECT BookID FROM Books WHERE Barcode IN (6435968624, 5677520613, 8730298424)) AS b
    ON Loans.BookID = b.BookID
    WHERE ReturnedDate IS NULL
    );
