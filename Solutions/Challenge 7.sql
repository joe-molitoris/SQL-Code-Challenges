/*
Challenge 7

Log customer responses

Add customer responses to invitation to CustomerParty table.

Customer:
    Asher Tapley
    atapley2@kinetecoinc.com
    3 friends
*/

INSERT INTO CustomerParty
    (CustomerID, PartySize)
VALUES 
    ((SELECT CustomerID FROM Customers WHERE Email=="atapley2j@kinetecoinc.com"), 4);