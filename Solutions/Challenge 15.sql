/* Challenge 15

Check out two books:

The Picture of Dorian Gray, 2855934983
Great Expectations, 4043822646

To the following customer:

Jack Vaan, jvaan@wisdompets.com

Checkout date: August 25, 2020
Due Date: September 8, 2020

*/

INSERT INTO Loans (BookID, PatronID, LoanDate, DueDate)
VALUES
    ((SELECT BookID FROM Books WHERE Barcode=2855934983), (SELECT PatronID FROM Patrons WHERE Email="jvaan@wisdompets.com"), "2020-08-25", "2020-09-08"),
    ((SELECT BookID FROM Books WHERE Barcode=4043822646), (SELECT PatronID FROM Patrons WHERE Email="jvaan@wisdompets.com"), "2020-08-25", "2020-09-08");
