-- Combine Two Tables
-- Table: Person

-- +-------------+---------+ | Column Name | Type | +-------------+---------+ | PersonId | int | | FirstName | varchar | | LastName | varchar | +-------------+---------+ PersonId is the primary key column for this table.

-- Table: Address

-- +-------------+---------+ | Column Name | Type | +-------------+---------+ | AddressId | int | | PersonId | int | | City | varchar | | State | varchar | +-------------+---------+ AddressId is the primary key column for this table.

-- Write a SQL query for a report that provides the following information for each person in the Person table, regardless if there is an address for each of those people:

-- FirstName, LastName, City, State    


Create table If Not Exists Person (personId int, firstName varchar(255), lastName varchar(255))
Create table If Not Exists Address (addressId int, personId int, city varchar(255), state varchar(255))
Truncate table Person
insert into Person (personId, lastName, firstName) values ('1', 'Wang', 'Allen')
insert into Person (personId, lastName, firstName) values ('2', 'Alice', 'Bob')
Truncate table Address
insert into Address (addressId, personId, city, state) values ('1', '2', 'New York City', 'New York')
insert into Address (addressId, personId, city, state) values ('2', '3', 'Leetcode', 'California')

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | personId    | int     |
-- | lastName    | varchar |
-- | firstName   | varchar |
-- +-------------+---------+
-- personId is the primary key column for this table.
-- This table contains information about the ID of some persons and their first and last names.


-- # Write your MySQL query statement below
SELECT FirstName, LastName, City, State
FROM Person
LEFT JOIN Address
ON Person.PersonId = Address.PersonId