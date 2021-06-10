/*
Challenge 11

Set Cleo Goldwater's favorite dish to the Quinoa Salmon Salad.
*/


UPDATE Customers
SET FavoriteDish= (SELECT DishID FROM Dishes WHERE Name="Quinoa Salmon Salad")
WHERE CustomerID = (SELECT CustomerID FROM Customers WHERE FirstName="Cleo" AND LastName="Goldwater");

SELECT Customers.CustomerID, Customers.FirstName, Customers.LastName, Customers.FavoriteDish, Dishes.Name FROM Customers
LEFT JOIN Dishes
ON Customers.FavoriteDish = Dishes.DishID;
