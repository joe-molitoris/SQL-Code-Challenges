/* Challenge 3

Output all dishes sorted by price.
Output all appetizers and beverages, sorted by type.
Output all items except beverages, sorted by type.
*/

SELECT *
FROM Dishes
ORDER by Price;

SELECT *
FROM Dishes
WHERE (Type=="Beverage" OR Type=="Appetizer")
ORDER BY Type;

SELECT *
FROM Dishes
WHERE (Type!="Beverage")
ORDER BY Type;

