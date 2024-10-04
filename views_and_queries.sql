-- Creating Views for Data Analysis
-- 1. View for Supplier Product Count
CREATE VIEW SupplierProductCount AS
SELECT s.name AS Supplier_Name, COUNT(p.product_id) AS Number_Of_Products
FROM Suppliers s
LEFT JOIN Products p ON s.supplier_id = p.supplier_id
GROUP BY s.name;

-- 2. View for Top 10 Best-Selling Products
CREATE VIEW TopBestSellingProducts AS
SELECT p.name AS Product_Name, s.name AS Supplier_Name, SUM(oi.quantity) AS Total_Units_Sold
FROM OrderItems oi
JOIN Products p ON oi.product_id = p.product_id
JOIN Suppliers s ON p.supplier_id = s.supplier_id
GROUP BY p.product_id, s.name
ORDER BY Total_Units_Sold DESC
LIMIT 10;

-- 3. View for Customer Spending
CREATE VIEW CustomerTotalPurchases AS
SELECT c.full_name AS Customer_Name, c.email, SUM(o.total_amount) AS Total_Purchases
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id;

-- 4. View for Returned Items
CREATE VIEW ReturnedItemsView AS
SELECT ri.return_id, oi.order_id, p.name AS Product_Name, ri.return_date, ri.return_reason
FROM ReturnedItems ri
JOIN OrderItems oi ON ri.order_item_id = oi.order_item_id
JOIN Products p ON oi.product_id = p.product_id;

-- 5. View for Products Sold in Fashion Category Last Month
CREATE VIEW FashionCategoryLastMonth AS
SELECT p.name AS Product_Name, p.category, SUM(oi.quantity) AS Total_Quantity_Sold
FROM OrderItems oi
JOIN Products p ON oi.product_id = p.product_id
JOIN Orders o ON oi.order_id = o.order_id
WHERE p.category = 'Fashion' AND o.order_date BETWEEN DATE_SUB(CURDATE(), INTERVAL 1 MONTH) AND CURDATE()
GROUP BY p.name;

-- Sample Queries for Reporting
-- 1. Detail information about suppliers and the number of products that they provide
SELECT * FROM SupplierProductCount;

-- 2. 10 best-selling products with the total amount and their supplier
SELECT * FROM TopBestSellingProducts;

-- 3. List of customers and their total purchases
SELECT * FROM CustomerTotalPurchases;

-- 4. List of returned items
SELECT * FROM ReturnedItemsView;

-- 5. List of products in the fashion category that were sold last month
SELECT * FROM FashionCategoryLastMonth;