/*
Challenge 12

Generate a list of the 5 customers who have placed the most to-go orders.

Include:
    a count of how many orders
    First, last name and email
    Sort list by number of orders
*/

SELECT CustomerID, FirstName, LastName, Email, TotalOrders
FROM Customers
LEFT JOIN (SELECT CustomerID, COUNT(*) AS TotalOrders
    FROM Orders
    GROUP BY CustomerID
    ORDER BY TotalOrders DESC
    LIMIT 5) AS O
ON Customers.CustomerID = O.CustomerID
ORDER BY TotalOrders DESC
LIMIT 5
