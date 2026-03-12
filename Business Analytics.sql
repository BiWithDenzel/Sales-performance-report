create database Business_Intelligence_Sales;
use Business_Intelligence_Sales;

CREATE TABLE regions (
    region_id INT PRIMARY KEY AUTO_INCREMENT,
    region_name VARCHAR(50) NOT NULL
);

insert into regions values
(1, "North"),
(2, "South"),
(3, "East"),
(4, "West");

select * from regions;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    FOREIGN KEY (region_id) REFERENCES regions(region_id),
    region_id INT
);

INSERT INTO customers  VALUES
(1,'John Nuka', 'john.nuks@email.com', 1),
(2,'Mary Acha', 'mary.ach1@email.com', 2),
(3,'David Tommy', 'david.johnson@email.com', 3),
(4,'Sarah Chidi', 'sarah.williams@email.com', 4),
(5,'Michael Uju', 'michael.brown@email.com', 1),
(6,'Ugo Davis', 'ugochukwu.davis@email.com', 2),
(7,'Omale Wilson', 'daniel.wilson@email.com', 3),
(8,'Olivia Dean', 'olivia.dean@email.com', 4),
(9,'James Nuka', 'james.taylor@email.com', 1),
(10,'Sophia Achunike', 'sophia.achunike@email.com', 2),
(11,'Christopher Chuks', 'chris.chuks@email.com', 3),
(12,'Isabella Omoroguiwa', 'isabella.o@email.com', 4),
(13,'Matthew White', 'matthew.white@email.com', 1),
(14,'Mia Harris', 'mia.harris@email.com', 2),
(15,'Joshua Martin', 'joshua.martin@email.com', 3),
(16,'Charlotte Thompson', 'charlotte.thompson@email.com', 4),
(17,'Andrew Chris', 'andrew.garcia@email.com', 1),
(18,'Amelia Martinez', 'amelia.martinez@email.com', 2),
(19,'Joseph Ikejiaku', 'joseph.robinson@email.com', 3),
(20,'Steve Clark', 'harper.clark@email.com', 4),
(21,'Benjamin Rodriguez', 'ben.rodriguez@email.com', 1),
(22,'Evelyn Lewis', 'evelyn.lewis@email.com', 2),
(23,'Samuel Lee', 'samuel.lee@email.com', 3),
(24,'Abigail Walker', 'abigail.walker@email.com', 4),
(25,'Henry Hall', 'henry.hall@email.com', 1),
(26,'Ella Allen', 'ella.allen@email.com', 2),
(27,'Alexander Young', 'alex.young@email.com', 3),
(28,'Avery Hernandez', 'avery.hernandez@email.com', 4),
(29,'Sebastian King', 'sebastian.king@email.com', 1),
(30,'Scarlett Wright', 'scarlett.wright@email.com', 2);

select * from customers;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(100),
    hire_date DATE,
    department VARCHAR(50)
);

insert into employees values
(1,'Denzel Ayogu', '2022-01-15', 'Sales'),
(2,'Prince Chike', '2021-06-10', 'Sales'),
(3,'Jesse Williams', '2020-09-22', 'Sales'),
(4,'Ambassador Success', '2023-03-12', 'Sales'),
(5,'Emmanuel Charles', '2022-11-05', 'Sales'),
(6,'Victor Onyebuchi', '2021-02-18', 'Sales'),
(7,'Baridakara James', '2020-07-30', 'Sales'),
(8,'Daniel Wali', '2023-05-20', 'Sales'),
(9,'Jake Taylor', '2022-04-08', 'Sales'),
(10,'Trig Taylor', '2021-10-14', 'Sales');

select * from employees;

CREATE TABLE categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(50)
);

INSERT INTO categories  VALUES
(1,'Electronics'),
(2,'Furniture'),
(3,'Accessories');

select * from categories;

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100),
FOREIGN KEY (category_id) REFERENCES categories(category_id),
category_id INT,
    price DECIMAL(10,2),
	stock_quantity INT
);

INSERT INTO products VALUES
(1,'Laptop Pro 15', 1, 1200.00, 40),
(2,'Wireless Mouse', 3, 25.00, 200),
(3,'Mechanical Keyboard', 3, 80.00, 120),
(4,'27-inch Monitor', 1, 300.00, 60),
(5,'USB-C Docking Station', 1, 95.00, 75),
(6,'Office Chair Deluxe', 2, 250.00, 50),
(7,'Ergonomic Desk', 2, 450.00, 30),
(8,'Standing Desk Converter', 2, 180.00, 45),
(9,'Noise Cancelling Headphones', 1, 220.00, 70),
(10,'Webcam HD', 1, 65.00, 90),
(11,'Laptop Sleeve', 3, 20.00, 150),
(12,'Bluetooth Speaker', 1, 85.00, 80),
(13,'Smartphone Stand', 3, 15.00, 170),
(14,'Desk Lamp LED', 2, 40.00, 110),
(15,'External Hard Drive 1TB', 1, 95.00, 65),
(16,'Wireless Charger', 1, 35.00, 130),
(17,'Office Cabinet', 2, 300.00, 25),
(18,'Gaming Mouse Pad', 3, 18.00, 140),
(19,'Portable SSD 500GB', 1, 120.00, 55),
(20,'Adjustable Footrest', 2, 60.00, 95),
(21,'Laptop Backpack', 3, 70.00, 85),
(22,'HDMI Cable', 3, 12.00, 250),
(23,'Conference Speakerphone', 1, 150.00, 35),
(24,'Printer All-in-One', 1, 280.00, 28),
(25,'Cable Organizer Kit', 3, 10.00, 300);

select * from products;

CREATE TABLE sales (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    sale_date DATE,
    customer_id INT,
    employee_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO sales 
(sale_date, customer_id, employee_id, product_id, quantity, unit_price, total_amount) VALUES
('2024-01-03',1,1,1,1,1200.00,1200.00),
('2024-01-05',2,2,2,2,25.00,50.00),
('2024-01-06',3,3,6,1,250.00,250.00),
('2024-01-08',4,4,3,1,80.00,80.00),
('2024-01-10',5,5,4,2,300.00,600.00),
('2024-01-12',6,6,7,1,450.00,450.00),
('2024-01-14',7,7,9,1,220.00,220.00),
('2024-01-16',8,8,10,2,65.00,130.00),
('2024-01-18',9,9,12,1,85.00,85.00),
('2024-01-20',10,10,5,1,95.00,95.00),
('2024-01-22',11,1,8,1,180.00,180.00),
('2024-01-24',12,2,11,3,20.00,60.00),
('2024-01-26',13,3,13,2,15.00,30.00),
('2024-01-27',14,4,14,1,40.00,40.00),
('2024-01-29',15,5,15,1,95.00,95.00),
('2024-02-01',16,6,16,2,35.00,70.00),
('2024-02-03',17,7,17,1,300.00,300.00),
('2024-02-05',18,8,18,2,18.00,36.00),
('2024-02-07',19,9,19,1,120.00,120.00),
('2024-02-09',20,10,20,1,60.00,60.00),

('2024-02-11',21,1,21,1,70.00,70.00),
('2024-02-13',22,2,22,4,12.00,48.00),
('2024-02-15',23,3,23,1,150.00,150.00),
('2024-02-17',24,4,24,1,280.00,280.00),
('2024-02-19',25,5,25,5,10.00,50.00),
('2024-02-21',26,6,1,1,1200.00,1200.00),
('2024-02-22',27,7,6,1,250.00,250.00),
('2024-02-24',28,8,4,1,300.00,300.00),
('2024-02-26',29,9,3,2,80.00,160.00),
('2024-02-28',30,10,2,3,25.00,75.00),

('2024-03-01',1,1,9,1,220.00,220.00),
('2024-03-03',2,2,7,1,450.00,450.00),
('2024-03-05',3,3,5,1,95.00,95.00),
('2024-03-06',4,4,10,2,65.00,130.00),
('2024-03-08',5,5,11,2,20.00,40.00),
('2024-03-10',6,6,12,1,85.00,85.00),
('2024-03-12',7,7,13,3,15.00,45.00),
('2024-03-14',8,8,14,1,40.00,40.00),
('2024-03-16',9,9,15,2,95.00,190.00),
('2024-03-18',10,10,16,1,35.00,35.00),

('2024-03-20',11,1,17,1,300.00,300.00),
('2024-03-22',12,2,18,1,18.00,18.00),
('2024-03-24',13,3,19,2,120.00,240.00),
('2024-03-26',14,4,20,1,60.00,60.00),
('2024-03-28',15,5,21,1,70.00,70.00),
('2024-03-30',16,6,22,5,12.00,60.00),
('2024-04-01',17,7,23,1,150.00,150.00),
('2024-04-03',18,8,24,1,280.00,280.00),
('2024-04-05',19,9,25,4,10.00,40.00),
('2024-04-07',20,10,1,1,1200.00,1200.00),

('2024-04-09',21,1,2,2,25.00,50.00),
('2024-04-11',22,2,3,1,80.00,80.00),
('2024-04-13',23,3,4,2,300.00,600.00),
('2024-04-15',24,4,6,1,250.00,250.00),
('2024-04-17',25,5,7,1,450.00,450.00),
('2024-04-19',26,6,8,1,180.00,180.00),
('2024-04-21',27,7,9,1,220.00,220.00),
('2024-04-23',28,8,10,2,65.00,130.00),
('2024-04-25',29,9,11,3,20.00,60.00),
('2024-04-27',30,10,12,1,85.00,85.00),

('2024-05-01',1,1,13,2,15.00,30.00),
('2024-05-03',2,2,14,1,40.00,40.00),
('2024-05-05',3,3,15,1,95.00,95.00),
('2024-05-07',4,4,16,2,35.00,70.00),
('2024-05-09',5,5,17,1,300.00,300.00),
('2024-05-11',6,6,18,2,18.00,36.00),
('2024-05-13',7,7,19,1,120.00,120.00),
('2024-05-15',8,8,20,1,60.00,60.00),
('2024-05-17',9,9,21,1,70.00,70.00),
('2024-05-19',10,10,22,4,12.00,48.00),

('2024-05-21',11,1,23,1,150.00,150.00),
('2024-05-23',12,2,24,1,280.00,280.00),
('2024-05-25',13,3,25,6,10.00,60.00),
('2024-05-27',14,4,1,1,1200.00,1200.00),
('2024-05-29',15,5,6,1,250.00,250.00),

('2024-06-01',16,6,4,1,300.00,300.00),
('2024-06-03',17,7,3,2,80.00,160.00),
('2024-06-05',18,8,2,3,25.00,75.00),
('2024-06-07',19,9,9,1,220.00,220.00),
('2024-06-09',20,10,7,1,450.00,450.00),
('2024-06-11',21,1,5,1,95.00,95.00),
('2024-06-13',22,2,10,2,65.00,130.00),
('2024-06-15',23,3,11,2,20.00,40.00),
('2024-06-17',24,4,12,1,85.00,85.00),
('2024-06-19',25,5,13,3,15.00,45.00),

('2024-06-21',26,6,14,1,40.00,40.00),
('2024-06-23',27,7,15,2,95.00,190.00),
('2024-06-25',28,8,16,1,35.00,35.00),
('2024-06-27',29,9,17,1,300.00,300.00),
('2024-06-29',30,10,18,1,18.00,18.00),

('2024-07-01',1,1,19,2,120.00,240.00),
('2024-07-03',2,2,20,1,60.00,60.00),
('2024-07-05',3,3,21,1,70.00,70.00),
('2024-07-07',4,4,22,5,12.00,60.00),
('2024-07-09',5,5,23,1,150.00,150.00),
('2024-07-11',6,6,24,1,280.00,280.00),
('2024-07-13',7,7,25,4,10.00,40.00),
('2024-07-15',8,8,1,1,1200.00,1200.00),
('2024-07-17',9,9,2,2,25.00,50.00),
('2024-07-19',10,10,3,1,80.00,80.00),

('2024-07-21',11,1,4,2,300.00,600.00),
('2024-07-23',12,2,6,1,250.00,250.00),
('2024-07-25',13,3,7,1,450.00,450.00),
('2024-07-27',14,4,8,1,180.00,180.00),
('2024-07-29',15,5,9,1,220.00,220.00),

('2024-08-01',16,6,10,2,65.00,130.00),
('2024-08-03',17,7,11,3,20.00,60.00),
('2024-08-05',18,8,12,1,85.00,85.00),
('2024-08-07',19,9,13,2,15.00,30.00),
('2024-08-09',20,10,14,1,40.00,40.00),
('2024-08-11',21,1,15,1,95.00,95.00),
('2024-08-13',22,2,16,2,35.00,70.00),
('2024-08-15',23,3,17,1,300.00,300.00),
('2024-08-17',24,4,18,2,18.00,36.00),
('2024-08-19',25,5,19,1,120.00,120.00),

('2024-08-21',26,6,20,1,60.00,60.00),
('2024-08-23',27,7,21,1,70.00,70.00),
('2024-08-25',28,8,22,4,12.00,48.00),
('2024-08-27',29,9,23,1,150.00,150.00),
('2024-08-29',30,10,24,1,280.00,280.00),

('2024-09-01',1,1,25,5,10.00,50.00),
('2024-09-03',2,2,1,1,1200.00,1200.00),
('2024-09-05',3,3,6,1,250.00,250.00),
('2024-09-07',4,4,4,1,300.00,300.00),
('2024-09-09',5,5,3,2,80.00,160.00),

('2024-09-11',6,6,2,3,25.00,75.00),
('2024-09-13',7,7,9,1,220.00,220.00),
('2024-09-15',8,8,7,1,450.00,450.00),
('2024-09-17',9,9,5,1,95.00,95.00),
('2024-09-19',10,10,10,2,65.00,130.00),

('2024-09-21',11,1,11,2,20.00,40.00),
('2024-09-23',12,2,12,1,85.00,85.00),
('2024-09-25',13,3,13,3,15.00,45.00),
('2024-09-27',14,4,14,1,40.00,40.00),
('2024-09-29',15,5,15,2,95.00,190.00),

('2024-10-01',16,6,16,1,35.00,35.00),
('2024-10-03',17,7,17,1,300.00,300.00),
('2024-10-05',18,8,18,1,18.00,18.00),
('2024-10-07',19,9,19,2,120.00,240.00),
('2024-10-09',20,10,20,1,60.00,60.00),

('2024-10-11',21,1,21,1,70.00,70.00),
('2024-10-13',22,2,22,5,12.00,60.00),
('2024-10-15',23,3,23,1,150.00,150.00),
('2024-10-17',24,4,24,1,280.00,280.00),
('2024-10-19',25,5,25,4,10.00,40.00),

('2024-10-21',26,6,1,1,1200.00,1200.00),
('2024-10-23',27,7,6,1,250.00,250.00),
('2024-10-25',28,8,4,1,300.00,300.00),
('2024-10-27',29,9,3,2,80.00,160.00),
('2024-10-29',30,10,2,3,25.00,75.00),

('2024-11-01',1,1,9,1,220.00,220.00),
('2024-11-03',2,2,7,1,450.00,450.00),
('2024-11-05',3,3,5,1,95.00,95.00),
('2024-11-07',4,4,10,2,65.00,130.00),
('2024-11-09',5,5,11,2,20.00,40.00),
('2024-11-11',6,6,12,1,85.00,85.00),
('2024-11-13',7,7,13,3,15.00,45.00),
('2024-11-15',8,8,14,1,40.00,40.00),
('2024-11-17',9,9,15,2,95.00,190.00),
('2024-11-19',10,10,16,1,35.00,35.00),

('2024-11-21',11,1,17,1,300.00,300.00),
('2024-11-23',12,2,18,1,18.00,18.00),
('2024-11-25',13,3,19,2,120.00,240.00),
('2024-11-27',14,4,20,1,60.00,60.00),
('2024-11-29',15,5,21,1,70.00,70.00),

('2024-12-01',16,6,22,5,12.00,60.00),
('2024-12-03',17,7,23,1,150.00,150.00),
('2024-12-05',18,8,24,1,280.00,280.00),
('2024-12-07',19,9,25,6,10.00,60.00),
('2024-12-09',20,10,1,1,1200.00,1200.00),
('2024-12-11',21,1,6,1,250.00,250.00),
('2024-12-13',22,2,4,1,300.00,300.00),
('2024-12-15',23,3,3,2,80.00,160.00),
('2024-12-17',24,4,2,3,25.00,75.00),
('2024-12-19',25,5,9,1,220.00,220.00);

select * from sales;

## Total Sales Generated from the Company

SELECT SUM(total_amount) AS total_sales
FROM sales;

## Total Sales Per Month and Year

SELECT YEAR(sale_date) AS year,
       MONTH(sale_date) AS month,
       SUM(total_amount) AS total_sales
FROM sales
GROUP BY YEAR(sale_date), MONTH(sale_date)
ORDER BY year, month;

## Month With The Highest Total Sales

SELECT YEAR(sale_date) AS year,
       MONTH(sale_date) AS month,
       SUM(total_amount) AS total_sales
FROM sales
GROUP BY YEAR(sale_date), MONTH(sale_date)
ORDER BY total_sales DESC
LIMIT 1;

## Average Sale Value Per Transaction

SELECT AVG(total_amount) AS avg_sale_value
FROM sales;

## The Total Sales Generated by each Employee.

SELECT employees.employee_name,
       SUM(sales.total_amount) AS total_sales
FROM sales 
JOIN employees  ON sales.employee_id = employees.employee_id
GROUP BY employees.employee_name
ORDER BY total_sales DESC;

#Employees Ranked Based on Sales Performance

SELECT employees.employee_name,
       SUM(sales.total_amount) AS total_sales,
       RANK() OVER (ORDER BY SUM(sales.total_amount) DESC) AS rank_position
FROM sales 
JOIN employees  ON sales.employee_id = employees.employee_id
GROUP BY employees.employee_name;

#Top 3 best-performing Employees

SELECT employees.employee_name,
       SUM(sales.total_amount) AS total_sales
FROM sales 
JOIN employees  ON sales.employee_id = employees.employee_id
GROUP BY employees.employee_name
ORDER BY total_sales DESC
LIMIT 3;

#Bottom 2 Least-performing Employees

SELECT employees.employee_name,
       SUM(sales.total_amount) AS total_sales
FROM sales 
JOIN employees  ON sales.employee_id = employees.employee_id
GROUP BY employees.employee_name
ORDER BY total_sales ASC
LIMIT 2;



## Determine the difference in total sales between the highest and lowest performing employees.
## Not Done

##Total Revenue Generated by Each Product

SELECT products.product_name,
       SUM(sales.total_amount) AS revenue
FROM sales 
JOIN products  ON sales.product_id = products.product_id
GROUP BY products.product_name
ORDER BY revenue DESC;

##Best Selling Product by Revenue

SELECT products.product_name,
       SUM(sales.total_amount) AS revenue
FROM sales 
JOIN products  ON sales.product_id = products.product_id
GROUP BY products.product_name
ORDER BY revenue DESC
LIMIT 1;

##Top Sales Per Product Category

SELECT categories.category_name,
       SUM(sales.total_amount) AS total_sales
FROM sales 
JOIN products  ON sales.product_id = products.product_id
JOIN categories  ON products.category_id = categories.category_id
GROUP BY categories.category_name;

##Identify the top-performing product in each category.
##Not Done

##Products That Haver Been Sold

SELECT products.product_name
FROM products 
LEFT JOIN sales  ON products.product_id = sales.product_id
WHERE sales.product_id IS NULL;

##Total Number Of Customers Per Region

SELECT regions.region_name,
       COUNT(customers.customer_id) AS total_customers
FROM customers 
JOIN regions  ON customers.region_id = regions.region_id
GROUP BY regions.region_name;

##Total Revenue Generated Per Region

SELECT regions.region_name,
       SUM(sales.total_amount) AS revenue
FROM sales 
JOIN customers  ON sales.customer_id = customers.customer_id
JOIN regions  ON customers.region_id = regions.region_id
GROUP BY regions.region_name
ORDER BY revenue DESC;

##The region with the highest contribution to overall sales.

SELECT regions.region_name,
       SUM(sales.total_amount) AS revenue
FROM sales 
JOIN customers  ON sales.customer_id = customers.customer_id
JOIN regions  ON customers.region_id = regions.region_id
GROUP BY regions.region_name
ORDER BY revenue DESC
LIMIT 1;

##Customer’s total lifetime purchase value.

SELECT customers.customer_name,
       SUM(sales.total_amount) AS lifetime_value
FROM sales 
JOIN customers  ON sales.customer_id = customers.customer_id
GROUP BY customers.customer_name
ORDER BY lifetime_value DESC;

##Customers who have made more than one purchase

SELECT customers.customer_name,
       COUNT(sales.sale_id) AS purchases
FROM sales 
JOIN customers  ON sales.customer_id = customers.customer_id
GROUP BY customers.customer_name
HAVING COUNT(sales.sale_id) > 1;

## Sales trends over time

SELECT sale_date,
       SUM(total_amount) AS daily_sales
FROM sales
GROUP BY sale_date
ORDER BY sale_date;

##Sales values between consecutive months.

SELECT month,
       total_sales,
       LAG(total_sales) OVER (ORDER BY month) AS previous_month
FROM (
    SELECT DATE_FORMAT(sale_date,'%Y-%m') AS month,
           SUM(total_amount) AS total_sales
    FROM sales
    GROUP BY DATE_FORMAT(sale_date,'%Y-%m')
) x;

##sales values between consecutive months.

SELECT *
FROM (
    SELECT DATE_FORMAT(sale_date,'%Y-%m') AS month,
           SUM(total_amount) AS total_sales,
           LAG(SUM(total_amount)) OVER (ORDER BY DATE_FORMAT(sale_date,'%Y-%m')) AS prev_sales
    FROM sales
    GROUP BY DATE_FORMAT(sale_date,'%Y-%m')
) x
WHERE total_sales > prev_sales;

## Periods where sales declined compared to the previous period

SELECT *
FROM (
    SELECT DATE_FORMAT(sale_date,'%Y-%m') AS month,
           SUM(total_amount) AS total_sales,
           LAG(SUM(total_amount)) OVER (ORDER BY DATE_FORMAT(sale_date,'%Y-%m')) AS prev_sales
    FROM sales
    GROUP BY DATE_FORMAT(sale_date,'%Y-%m')
) x
WHERE total_sales < prev_sales;

##Cumulative sales over time

SELECT sale_date,
       SUM(total_amount) OVER (ORDER BY sale_date) AS cumulative_sales
FROM sales;

SELECT *
FROM (
    SELECT employee_id,
           SUM(total_amount) AS total_sales,
           RANK() OVER (ORDER BY SUM(total_amount) DESC) AS rnk
    FROM sales
    GROUP BY employee_id
) x
WHERE rnk = 1;









