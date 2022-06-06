#Who is at the top of the organization (i.e.,  reports to no one). C
/*
Select firstName, lastName, jobTitle 
from employees
Where reportsTo is null; 
*/

#Who reports to William Patterson?

/*
SELECT CONCAT(I.firstname, ' ' , I.lastname) AS Patterson_Uderlings
FROM employees J, employees I
WHERE J.employeeNumber = I.reportsTo
AND J.firstName = 'William'
AND J.lastName = 'Patterson';
*/

#List all the products purchased by Herkku Gifts. C

/*
select customerName, productName 
from customers c, orders o, orderdetails od, products p
where c.customerNumber = o.customerNumber
AND o.orderNumber = od.orderNumber
AND od.productCode = p.productCode
AND customerName = 'Herkku Gifts';
*/



#Find products containing the name 'Ford'. C

/*
select productName 
from products p 
where p.productName like '%Ford%' 
*/

#List products ending in 'ship'. C

/*
select productName 
from products p 
where p.productName like '%ship'
*/

#Report the number of customers in Las Vegas, San Francisco, Singapore, and Paris 


/*
SELECT count(*)
from customers 
where city like '%Las Vegas%' or 
city like '%San Francisco%' or 
city like' %Singapore%' or 
city like '%Paris%'
*/

#What are the products with a product code in the range S700_1000 to S700_1499? ?

/*
select productName from products
where productCode <= '5700_1000' or productCode >= '5700_1499';
*/

#Which customers have a digit character '4' in their name?
/*
Select customerNumber 
from customers 
where customerNumber like '%4%'
*/
#List the names of employees called Dianne or Diane. C

/*
select firstName, lastName 
from employees
where firstName like '%Dianne%' or firstName like'%Diane%'
*/

#List the products containing ship or boat in their product name. C

/*
select productName from products
where productName like '%boat%' or productName like '%ship%'
*/

#List the products with a product code beginning with S700.

/*
select productName from products
where productCode like 'S700%'
*/

#List the names of employees called Larry or Barry.

/*
select firstName, lastName from employees
where firstName like '%Larry%' or firstName like '%Barry%' or lastName like '%Larry%' or lastName like '%Barry%'
*/

#List the vendors whose name ends in Diecast.

/*
select productVendor from products 
where productVendor LIKE '%Diecast'
*/

#List the names of sales representatives who have the maximum number of customers. 

#Part a, to find max 
/*
SELECT max(count)
FROM (
SELECT employees.employeeNumber, count(customers.customerNumber) AS count
FROM employees
JOIN customers
ON employees.employeeNumber = customers.salesRepEmployeeNumber
GROUP BY employees.employeeNumber
) AS TMP;
*/

/*
#using part a max to find employees with max, 10
SELECT employees.firstName, employees.lastName, count(customers.customerNumber)
FROM employees
JOIN customers
ON employees.employeeNumber = customers.salesRepEmployeeNumber
GROUP BY employees.employeeNumber
having count(customers.customerNumber) = 10
*/


