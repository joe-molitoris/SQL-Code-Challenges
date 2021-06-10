/*
Challenge 5

Update customer's email address in Customers table.

Customer old info:
    Taylor Jenkins, 27170 6th Center, Washington, D.C.

Customer new info:
    Taylor Jenkins, 74 Pine St., New York, NY


*/


UPDATE Customers
SET Address="74 Pine St.", City="New York", State="NY"
WHERE CustomerID==26;