/*
Challenge 8

Search for a reservation by inexact name.

Last name similar to Stephenson, Stevenson, etc.
What we know is:
    Reservation Date : June 14
    Guest Arrived at: 6:15 pm
    With 3 other guests
*/

SELECT * FROM Reservations
LEFT JOIN Customers
ON Reservations.CustomerID=Customers.CustomerID
WHERE
    (LastName LIKE("Ste%"))
    AND PartySize==4
    AND (strftime("%m", date(Date))= '06' AND strftime('%d', date(Date))='14');