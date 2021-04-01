SELECT Name AS Customer 
FROM Customers
WHERE Id NOT IN(
SELECT CustomerID
FROM Orders);