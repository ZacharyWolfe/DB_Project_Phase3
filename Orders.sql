-- Orders to be added to database
-- Zachary Wolfe
-- Matt Taylor

-- Customers added
INSERT INTO CUSTOMERS (CUSTOMER_ID, PHONE_NUMBER, CUSTOMER_ADDRESS, CUSTOMER_NAME)
VALUES
  (1, '7402545861', '115 Party Blvd, Athens OH 45701', 'Andrew Wilkes-Krier'),
  (2, '7404749953', NULL, 'Matt Engers'),
  (3, '7402328944', '6745 Wessex St Athens OH 45701', 'Frank Turner'),
  (4, '7408785679', '8879 Suburban Home, Athens OH 45701', 'Milo Auckerman');

-- Dine in, pickup, and delivery orders
INSERT INTO ORDERS (ORDER_ID, TOTAL_PRICE, BUSINESS_COST, CUSTOMER_ID)
VALUES
  (1, 13.50, 3.68, NULL), -- Dine-in
  (2, 10.60, 3.23, NULL), -- Dine-in (seat 1)
  (3, 6.75, 1.40, NULL),  -- Dine-in (seat 2)
  (4, 64.50, 19.80, 1),   -- Pickup for Andrew
  (5, 45.50, 16.86, 1),   -- Delivery for Andrew
  (6, 16.85, 7.85, 2),    -- Pickup for Matt
  (7, 13.25, 3.20, 3),    -- Delivery for Frank
  (8, 24.00, 6.30, 4);    -- Delivery for Milo


-- Dine in data
INSERT INTO DINE_IN (DINE_IN_ID, TABLE_NUMBER)
VALUES
  (1, 14),
  (2, 4),
  (3, 4);

-- Seats
INSERT INTO SEATS (SEAT_ID, SEAT_NUMBER)
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 1),
  (3, 2); 

-- Delivery order data
INSERT INTO DELIVERY (DELIVERY_ID)
VALUES
  (5),
  (7),
  (8);

-- Pickup order data
INSERT INTO PICKUP (PICKUP_ID)
VALUES
  (4),
  (6);


-- Pizza data from orders
INSERT INTO PIZZA (PIZZA_ID, CRUST_TYPE, PRICE, BASE_SIZE, BUSINESS_COST, PIZZA_STATUS, TIME_STAMP, ORDER_ID)
VALUES
  -- Order 1
  (1, 'Large', 13.50, 'Thin', 3.68, 'Completed', '2024-03-05 12:03:00', 1),

  -- Order 2
  (2, 'Medium', 10.60, 'Pan', 3.23, 'Completed', '2024-03-03 12:05:00', 2),

  -- Order 3
  (3, 'Small', 6.75, 'Original', 1.40, 'Completed', '2024-03-03 12:05:00', 3),

  -- Order 4
  (4, 'Large', 10.75, 'Original', 3.30, 'Completed', '2024-03-03 21:30:00', 4),
  (4, 'Original', 10.75, 'Large', 3.30, 'Completed', '2024-03-03 21:30:00', 4),
  (41, 'Original', 10.75, 'Large', 3.30, 'Completed', '2024-03-03 21:30:00', 4),
  (42, 'Original', 10.75, 'Large', 3.30, 'Completed', '2024-03-03 21:30:00', 4),
  (43, 'Original', 10.75, 'Large', 3.30, 'Completed', '2024-03-03 21:30:00', 4),
  (44, 'Original', 10.75, 'Large', 3.30, 'Completed', '2024-03-03 21:30:00', 4),
  (45, 'Original', 10.75, 'Large', 3.30, 'Completed', '2024-03-03 21:30:00', 4),

  -- Order 5
  (5, 'X-Large', 14.50, 'Original', 5.59, 'Completed', '2024-03-05 19:11:00', 5),
  (6, 'X-Large', 17.00, 'Original', 5.59, 'Completed', '2024-03-05 19:11:00', 5),
  (7, 'X-Large', 14.00, 'Original', 5.68, 'Completed', '2024-03-05 19:11:00', 5),

  -- Order 6
  (8, 'X-Large', 16.85, 'Gluten-Free', 7.85, 'Completed', '2024-03-02 17:30:00', 6),

  -- Order 7
  (9, 'Large', 13.25, 'Thin', 3.20, 'Completed', '2024-03-02 18:17:00', 7),

  -- Order 8
  (10, 'Large', 12.00, 'Thin', 3.75, 'Completed', '2024-03-06 20:32:00', 8),
  (11, 'Large', 12.00, 'Thin', 2.55, 'Completed', '2024-03-06 20:32:00', 8);

-- Topping data
INSERT INTO HAS_TOPPING (TOPPING_NAME, PIZZA_ID, REQUIRES_DOUBLE)
VALUES
  -- Order 1
  ('Regular Cheese', 1, TRUE), ('Pepperoni', 1, FALSE), ('Sausage', 1, FALSE),

  -- Order 2
  ('Feta Cheese', 2, FALSE), ('Black Olives', 2, FALSE), ('Roma Tomato', 2, FALSE),
  ('Mushrooms', 2, FALSE), ('Banana Peppers', 2, FALSE),

  -- Order 3
  ('Regular Cheese', 3, FALSE), ('Chicken', 3, FALSE), ('Banana Peppers', 3, FALSE),

  -- Order 4
  ('Regular Cheese', 4, FALSE), ('Pepperoni', 4, FALSE),
  ('Regular Cheese', 41, FALSE), ('Pepperoni', 41, FALSE),
  ('Regular Cheese', 42, FALSE), ('Pepperoni', 42, FALSE),
  ('Regular Cheese', 43, FALSE), ('Pepperoni', 43, FALSE),
  ('Regular Cheese', 44, FALSE), ('Pepperoni', 44, FALSE),
  ('Regular Cheese', 45, FALSE), ('Pepperoni', 45, FALSE),

  -- Order 5
  ('Pepperoni', 5, FALSE), ('Sausage', 5, FALSE),
  ('Ham', 6, TRUE), ('Pineapple', 6, TRUE),
  ('Jalapenos', 7, FALSE), ('Bacon', 7, FALSE),

  -- Order 6
  ('Green Pepper', 8, FALSE), ('Onion', 8, FALSE), ('Roma Tomato', 8, FALSE),
  ('Mushrooms', 8, FALSE), ('Black Olives', 8, FALSE),

  -- Order 7
  ('Chicken', 9, FALSE), ('Green Pepper', 9, FALSE), ('Onion', 9, FALSE), ('Mushrooms', 9, FALSE),

  -- Order 8
  ('Four Cheese Blend', 10, TRUE),
  ('Regular Cheese', 11, TRUE), ('Pepperoni', 11, TRUE);

-- Discounts
INSERT INTO ORDER_DISCOUNT (ORDER_DISCOUNT_ID, DISCOUNT_ID)
VALUES
  (1, 5), -- Game-day special
  (2, 1); -- Employee discount

INSERT INTO PIZZA_DISCOUNT (PIZZA_ID, DISCOUNT_ID)
VALUES
  (3, 2), -- Lunch special large
  (4, 1), -- Lunch special medium
  (5, 4), -- Specialty pizza
  (6, 4), -- Specialty pizza
  (7, 4); -- Specialty pizza