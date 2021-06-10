/*
Challenge 10

Create an order, find the customer, create order record, add items to the order, find the total cost.

Loretta Hundey
6939 Elka Place

Order:
    House Salad
    Mini Cheeseburgers
    Tropical Blue Smoothie
*/

INSERT INTO Orders
VALUES (
    (SELECT MAX(OrderID)+1 FROM Orders),
    (SELECT CustomerID FROM Customers WHERE Address="6939 Elka Place"),
    "2021-06-10 15:00:00");

INSERT INTO OrdersDishes
VALUES (
    (SELECT MAX(OrdersDishesID)+1 FROM OrdersDishes),
    (SELECT OrderID FROM Orders ORDER BY OrderID DESC LIMIT 1),
    (SELECT DishID FROM Dishes WHERE Name="House Salad"));

INSERT INTO OrdersDishes
VALUES (
    (SELECT MAX(OrdersDishesID)+1 FROM OrdersDishes),
    (SELECT OrderID FROM Orders ORDER BY OrderID DESC LIMIT 1),
    (SELECT DishID FROM Dishes WHERE Name="Mini Cheeseburgers"));

INSERT INTO OrdersDishes
VALUES (
    (SELECT MAX(OrdersDishesID)+1 FROM OrdersDishes),
    (SELECT OrderID FROM Orders ORDER BY OrderID DESC LIMIT 1),
    (SELECT DishID FROM Dishes WHERE Name="Tropical Blue Smoothie"));

SELECT SUM(Price) AS TotalPrice
FROM Dishes
LEFT JOIN OrdersDishes
ON Dishes.DishID=OrdersDishes.DishID
WHERE OrdersDishes.OrderID=(SELECT MAX(OrderID) FROM Orders);
