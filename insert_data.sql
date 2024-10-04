USE abc_shop_db;

-- Populating Suppliers Table
INSERT INTO Suppliers (name, contact_email) VALUES
('Tech Supplies Europe', 'contact@techsupplies.com'),
('Fashion Distributors Co.', 'info@fashionco.com'),
('Home and Kitchen Essentials', 'sales@homekitchen.com'),
('Auto Spare Parts Ltd.', 'support@autospareparts.com'),
('Fitness Gear Solutions', 'info@fitnessgear.com'),
('Kids Toys & More', 'support@kidstoys.com'),
('Office Essentials Ltd.', 'contact@officeessentials.com'),
('Garden Tools Supplier', 'info@gardentools.com'),
('Mobile Accessories Ltd.', 'sales@mobileaccessories.com'),
('Pet Supplies Co.', 'support@petsupplies.com');

-- Populating Products Table
INSERT INTO Products (name, supplier_id, description, price, category, images, tags, comments) VALUES
('Gaming Laptop', 1, 'High-performance gaming laptop', 1200.00, 'Electronics', 'laptop.jpg', 'gaming, electronics', 'Great for gaming enthusiasts.'),
('Leather Jacket', 2, 'Stylish leather jacket for winter', 150.00, 'Fashion', 'jacket.jpg', 'fashion, winter', 'Comfortable and warm.'),
('Kitchen Blender', 3, 'Multi-purpose kitchen blender', 85.00, 'Home Appliances', 'blender.jpg', 'kitchen, home', 'Useful for blending smoothies.'),
('Car Brake Pads', 4, 'High-quality brake pads for sedans', 60.00, 'Automotive', 'brakepads.jpg', 'car, automotive', 'Durable brake pads.'),
('Wireless Headphones', 1, 'Noise-cancelling headphones', 220.00, 'Electronics', 'headphones.jpg', 'electronics, audio', 'Great sound quality.'),
('Sneakers', 2, 'Comfortable sports sneakers', 80.00, 'Fashion', 'sneakers.jpg', 'fashion, shoes', 'Perfect for running.'),
('Pressure Cooker', 3, 'Stainless steel pressure cooker', 50.00, 'Home Appliances', 'pressurecooker.jpg', 'kitchen, cooking', 'Cooks food quickly.'),
('Yoga Mat', 5, 'Non-slip yoga mat for fitness exercises', 30.00, 'Sports', 'yogamat.jpg', 'fitness, yoga', 'Comfortable for workouts.'),
('Building Blocks', 6, 'Educational building blocks set', 25.00, 'Kids', 'blocks.jpg', 'kids, education', 'Great for childrens development.'),
('Office Chair', 7, 'Ergonomic office chair', 130.00, 'Office Supplies', 'chair.jpg', 'office, ergonomic', 'Supports good posture.');

-- Populating Customers Table
INSERT INTO Customers (full_name, email, password, address, phone_number, last_login_time) VALUES
('Amit Patel', 'amit.patel@mail.com', 'password123', '123-789 Berlin, Germany', '123-456-7890', '2024-03-01 10:00:00'),
('Sumit Patil', 'sumit.patil@mail.com', 'password234', '234-678 Brussels, Belgium', '234-567-8901', '2024-03-02 11:30:00'),
('Eshan Khan', 'eshan.khan@mail.com', 'password345', '345-890 Paris, France', '345-678-9012', '2024-03-03 09:15:00'),
('Sahil Verma', 'sahil.verma@mail.com', 'password456', '456-123 Amsterdam, Netherlands', '456-789-0123', '2024-03-04 12:45:00'),
('Rohit Sharma', 'rohit.sharma@mail.com', 'password567', '567-234 Madrid, Spain', '567-890-1234', '2024-03-05 14:20:00'),
('Kiran Reddy', 'kiran.reddy@mail.com', 'password678', '678-345 Lisbon, Portugal', '678-901-2345', '2024-03-06 16:50:00'),
('Pooja Desai', 'pooja.desai@mail.com', 'password789', '789-456 Rome, Italy', '789-012-3456', '2024-03-07 18:00:00'),
('Neha Singh', 'neha.singh@mail.com', 'password890', '890-567 Zurich, Switzerland', '890-123-4567', '2024-03-08 19:10:00'),
('Vikas Mehra', 'vikas.mehra@mail.com', 'password901', '901-678 Vienna, Austria', '901-234-5678', '2024-03-09 20:30:00'),
('Ritika Nair', 'ritika.nair@mail.com', 'password012', '012-789 Helsinki, Finland', '012-345-6789', '2024-03-10 21:00:00');

-- Populating Orders Table
INSERT INTO Orders (customer_id, order_date, total_amount) VALUES
(1, '2024-03-11', 1300.00),
(2, '2024-03-12', 80.00),
(3, '2024-03-13', 150.00),
(4, '2024-03-14', 300.00),
(5, '2024-03-15', 60.00),
(6, '2024-03-16', 85.00),
(7, '2024-03-17', 500.00),
(8, '2024-03-18', 120.00),
(9, '2024-03-19', 220.00),
(10, '2024-03-20', 30.00);

-- Populating OrderItems Table
INSERT INTO OrderItems (order_id, product_id, quantity, item_price, description) VALUES
(1, 1, 1, 1200.00, 'Gaming Laptop for high performance'),
(1, 5, 1, 100.00, 'Wireless Headphones for gaming'),
(2, 6, 1, 80.00, 'Comfortable Sneakers'),
(3, 2, 1, 150.00, 'Leather Jacket for winter'),
(4, 10, 1, 130.00, 'Ergonomic Office Chair'),
(4, 9, 2, 25.00, 'Building Blocks set for kids'),
(5, 4, 1, 60.00, 'Car Brake Pads for sedan'),
(6, 3, 1, 85.00, 'Kitchen Blender for smoothies'),
(7, 8, 1, 30.00, 'Yoga Mat for exercises'),
(8, 7, 1, 50.00, 'Pressure Cooker for cooking'),
(9, 5, 1, 220.00, 'Wireless Headphones for audio'),
(10, 6, 1, 80.00, 'Sneakers for running');

-- Populating ReturnedItems Table
INSERT INTO ReturnedItems (order_item_id, return_date, return_reason) VALUES
(4, '2024-03-21', 'Product did not fit'),
(7, '2024-03-22', 'Defective product'),
(10, '2024-03-23', 'Customer changed mind');

