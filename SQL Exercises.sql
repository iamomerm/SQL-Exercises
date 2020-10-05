/* SELECT */

/* 1 - Select all data from a table */
SELECT * FROM Customers;

/* 2 - Select all data nested under a specific column */
SELECT City FROM Customers;

/* 3 - Select unique values nested under a specific column */
SELECT DISTINCT City FROM Customers;

/* WHERE */

/* 4 - Select all records where the City column has the value "Berlin" */
SELECT * FROM Customers WHERE City = "Berlin";

/* 5 - Select all records where City is NOT "Berlin" */
SELECT * FROM Customers WHERE NOT City = "Berlin";

/* 6 - Select all records where the City column has the value 'Berlin' and the PostalCode column has the value '12209' */
SELECT * FROM Customers WHERE City = "Berlin" and PostalCode = "12209";

/* 7 - Select all records where the City column has the value 'Berlin' or 'London' */
SELECT * FROM Customers WHERE City = "Berlin" or "London";

/* ORDER BY */

/* 8 - Select all records from the Customers table, sort the result alphabetically by the column City */
SELECT * FROM Customers ORDER BY City;

/* 9 - Select all records from the Customers table, sort the result reversed alphabetically by the column City (Desceding) */
SELECT * FROM Customers ORDER BY City DESC;

/* 10 - Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City */
SELECT * FROM Customers ORDER BY Country, City;

/* INSERT */

/* 11 - Insert a new record in the Customers table */

INSERT INTO Customers 
(
CustomerName, 
Address, 
City, 
PostalCode,
Country
)

VALUES
(
"Amy Brown",
"76  Telford Street",
"Banchory-Devenick",
"7307",
"UK"
);

/* NULL */

/* 12 - Select all records from the Customers where the PostalCode column is empty */
SELECT * FROM Customers WHERE PostalCode IS NULL;

/* 13 - Select all records from the Customers where the PostalCode column is NOT empty */
SELECT * FROM Customers WHERE PostalCode IS NOT NULL;

/* UPDATE */

/* 14 - Update the City column of all records in the Customers table */
UPDATE Customers SET City = "Chicago";

/* 15 - Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway" */
UPDATE Customers SET City = "Oslo" WHERE Country = "Norway";

/* 16 - Update the City value and the Country value */
UPDATE Customers SET City = "Jerusalem", Country = 'Israel';

/* DELETE */

/* 17 - Delete all the records from the Customers table where the Country value is 'Norway' */
DELETE FROM Customers WHERE Country = "Norway";

/* 18 - Delete all the records from the Customers table */
DELETE FROM Customers;

/* FUNCTIONS */

/* 19 - Use the MIN function to select the record with the smallest value of the Price column */
SELECT MIN(Price) FROM Products;

/* 20 - Use an SQL function to select the record with the highest value of the Price column */
SELECT MAX(Price) FROM Products;

/* 21 - Use the correct function to return the number of records that have the Price value set to 18 */
SELECT COUNT(*) WHERE Price = 18;

/* 22 - Use an SQL function to calculate the average price of all products */
SELECT AVG(Price) FROM Products;

/* 23 - Use an SQL function to calculate the sum of all the Price column values in the Products table */
SELECT SUM(Price) FROM Products;

/* LIKE */

/* 24 - Select all records where the value of the City column starts with the letter "a" */
SELECT * FROM Customers WHERE City LIKE "a%";

/* 25 - Select all records where the value of the City column ends with the letter "a" */
SELECT * FROM Customers WHERE City LIKE "%a";

/* 26 - Select all records where the value of the City column contains the letter "a" */
SELECT * FROM Customers WHERE City LIKE "%a%";

/* 27 - Select all records where the value of the City column starts with letter "a" and ends with the letter "b" */
SELECT * FROM Customers WHERE City LIKE "a%b";

/* 28 - Select all records where the value of the City column does NOT start with the letter "a" */
SELECT * FROM Customers WHERE City NOT LIKE "a%";

/* WILDCARDS */

/* 29 - Select all records where the second letter of the City is an "a" */
SELECT * FROM Customers WHERE City LIKE "_%a";

/* 30 - Select all records where the first letter of the City is an "a" or a "c" or an "s" */
SELECT * FROM Customers WHERE City LIKE "[acs]%";

/* 31 - Select all records where the first letter of the City starts with anything from an "a" to an "f" */
SELECT * FROM Customers WHERE City LIKE "[a-f]%";

/* 32 - Select all records where the first letter of the City is NOT an "a" or a "c" or an "f" */
SELECT * FROM Customers WHERE City LIKE "[^acf]%";

/* IN */

/* 33 - Use the IN operator to select all the records where Country is either "Norway" or "France" */
SELECT * FROM Customers WHERE Country IN ("Norway", "France");

/* 34 - Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France" */
SELECT * FROM Customers WHERE Country NOT IN ("Norway", "France");

/* BETWEEN */

/* 35 - Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20 */
SELECT * FROM Products WHERE Price BETWEEN 10 AND 20;

/* 36 - Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20 */
SELECT * FROM Products WHERE Price NOT BETWEEN 10 AND 20;

/* 37 - Use the BETWEEN operator to select all the records where the value of the ProductName column is alphabetically between 'Geitost' and 'Pavlova' */
SELECT * FROM Products WHERE ProductName BETWEEN "Geitost" AND "Pavlova";

/* ALIAS */

/* 38 - When displaying the Customers table, make an ALIAS of the PostalCode column, the column should be called Pno instead */
SELECT PostalCode as Pno FROM Customers;

/* 39 - When displaying the Customers table, refer to the table as Consumers instead of Customers */
SELECT * FROM Customers as Consumers

/* GROUP BY */

/* 40 - List the number of customers in each country */
SELECT COUNT(CustomerID), Country FROM Customers GROUP BY Country;

/* 41 - List the number of customers in each country, ordered by the country with the most customers first */
SELECT COUNT(CustomerID), Country FROM Customers GROUP BY Country ORDER BY COUNT(CustomerID) DESC;

/* DATABASE */

/* 42 - Write the correct SQL statement to create a new database called testDB */
CREATE DATABASE testDB;

/* 43 - Write the correct SQL statement to delete a database named testDB */
DROP DATABASE testDB;

/* 44 - Write the correct SQL statement to create a new table called Persons */
CREATE TABLE Persons
(
  PersonID int,
  LastName varchar(255),
  FirstName varchar(255),
  Address varchar(255),
  City varchar(255) 
);

/* 45 - Write the correct SQL statement to delete a table called Persons */
DROP TABLE Persons;

/* 46 - Use the TRUNCATE statement to delete all data inside a table */
TRUNCATE TABLE Persons;

/* 47 - Add a column of type DATE called Birthday */
ALTER TABLE Persons ADD Birthday DATE;

/* 48 - Delete the column Birthday from the Persons table */
ALTER TABLE Persons DROP COLUMN Birthday;