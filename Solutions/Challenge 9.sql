/*
Challenge 9

Make a reservation for the following person:

Sam McAdams - 14 July 2020, 6 PM (5 people)
smac@rouxacademy.com, (555)-555-1212
*/

INSERT INTO Customers (FirstName, LastName, Email, Phone)
VALUES ("Sam", "McAdams", "smac@rouxacademy.com", "(555)-555-1212");

INSERT INTO Reservations (CustomerID, Date, Partysize)
VALUES ((SELECT CustomerID FROM Customers WHERE Email="smac@rouxacademy.com"), "2020-07-14 18:00:00", "5");


