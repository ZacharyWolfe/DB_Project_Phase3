-- Creates all the tables for the database.
-- Zachary Wolfe
-- Matt Taylor

-- ORDERS TABLE
CREATE TABLE CUSTOMERS (
  -- Attributes of CUSTOMERS
  CUSTOMER_ID INT NOT NULL,
  PHONE_NUMBER VARCHAR(10),
  CUSTOMER_ADDRESS VARCHAR(100),
  CUSTOMER_NAME VARCHAR(100),

  UNIQUE(CUSTOMER_ID, PHONE_NUMBER),

  -- Keys of CUSTOMERS
  PRIMARY KEY (CUSTOMER_ID)
);

CREATE TABLE ORDERS (
  -- Attributes of ORDERS
  ORDER_ID INT NOT NULL,
  TOTAL_PRICE DECIMAL(10, 2),
  BUSINESS_COST DECIMAL(10, 2),
  CUSTOMER_ID INT,

  UNIQUE(ORDER_ID),

  -- Keys of ORDERS
  PRIMARY KEY (ORDER_ID),
  FOREIGN KEY 
    (CUSTOMER_ID) REFERENCES CUSTOMERS(CUSTOMER_ID)
);

-- 
--        TYPES OF ORDERS
-- 

-- DELIVERY TABLE
CREATE TABLE DELIVERY (
  -- Attributes of DELIVERY
  DELIVERY_ID INT NOT NULL,

  UNIQUE(DELIVERY_ID),

  -- Keys of DELIVERY
  PRIMARY KEY (DELIVERY_ID),
  FOREIGN KEY
    (DELIVERY_ID) REFERENCES ORDERS(ORDER_ID)
);

-- DINE_IN TABLE
CREATE TABLE DINE_IN (
  -- Attributes of DINE_IN
  DINE_IN_ID INT NOT NULL,
  TABLE_NUMBER INT,

  UNIQUE(DINE_IN_ID),

  -- Keys of DINE_IN
  PRIMARY KEY (DINE_IN_ID),
  FOREIGN KEY
    (DINE_IN_ID) REFERENCES ORDERS(ORDER_ID)
);

-- PICKUP TABLE
CREATE TABLE PICKUP (
  -- Attributes of PICKUP
  PICKUP_ID INT NOT NULL,

  UNIQUE(PICKUP_ID),

  -- Keys of PICKUP
  PRIMARY KEY (PICKUP_ID),
  FOREIGN KEY
    (PICKUP_ID) REFERENCES ORDERS(ORDER_ID)
);


CREATE TABLE SEATS (
  -- Attributes of SEATS
  SEAT_ID INT NOT NULL,
  SEAT_NUMBER INT NOT NULL,

  UNIQUE(SEAT_ID, SEAT_NUMBER),

  -- Keys of SEATS
  PRIMARY KEY (SEAT_ID, SEAT_NUMBER),
  FOREIGN KEY
    (SEAT_ID) REFERENCES DINE_IN(DINE_IN_ID)
);

CREATE TABLE DISCOUNT (
  -- Attributes of DISCOUNT
  DISCOUNT_ID INT NOT NULL,
  DISCOUNT_NAME VARCHAR(50),
  PERCENT_OFF DECIMAL(5, 2),
  DOLLAR_OFF DECIMAL(10, 2),

  UNIQUE(DISCOUNT_ID, DISCOUNT_NAME),

  -- Keys of DISCOUNT
  PRIMARY KEY (DISCOUNT_ID)
);

CREATE TABLE ORDER_DISCOUNT (
  -- Attributes of ORDER_DISCOUNT
  ORDER_DISCOUNT_ID INT NOT NULL,
  DISCOUNT_ID INT NOT NULL,

  -- Keys of ORDER_DISCOUNT
  PRIMARY KEY (ORDER_DISCOUNT_ID, DISCOUNT_ID),
  FOREIGN KEY
    (ORDER_DISCOUNT_ID) REFERENCES ORDERS(ORDER_ID),
  FOREIGN KEY 
    (DISCOUNT_ID) REFERENCES DISCOUNT(DISCOUNT_ID)
);

CREATE TABLE BASE_PRICE (  
  -- Attributes of BASE_PRICE 
  CRUST_TYPE VARCHAR(50),
  BASE_SIZE VARCHAR(25),
  PRICE DECIMAL(10, 2),
  BASE_COST DECIMAL(10, 2),

  PRIMARY KEY (CRUST_TYPE, BASE_SIZE)
);

CREATE TABLE PIZZA (
  -- Attributes of PIZZA
  PIZZA_ID INT NOT NULL,
  CRUST_TYPE VARCHAR(50),
  PRICE DECIMAL(10, 2),
  BASE_SIZE VARCHAR(25),
  BUSINESS_COST DECIMAL(10,2),
  PIZZA_STATUS VARCHAR(25),
  TIME_STAMP TIMESTAMP NOT NULL,
  ORDER_ID INT NOT NULL,

   -- Keys of PIZZA
  PRIMARY KEY (PIZZA_ID),
  FOREIGN KEY
    (ORDER_ID) REFERENCES ORDERS(ORDER_ID),
  FOREIGN KEY 
    (CRUST_TYPE, BASE_SIZE) REFERENCES BASE_PRICE(CRUST_TYPE, BASE_SIZE)
);


CREATE TABLE PIZZA_DISCOUNT (
  -- Keys of PIZZA_DISCOUNT
  PIZZA_ID INT NOT NULL,
  DISCOUNT_ID INT NOT NULL,

  PRIMARY KEY (PIZZA_ID, DISCOUNT_ID),

  FOREIGN KEY
    (DISCOUNT_ID) REFERENCES DISCOUNT(DISCOUNT_ID),
  FOREIGN KEY
    (PIZZA_ID) REFERENCES PIZZA(PIZZA_ID)
);

CREATE TABLE TOPPINGS (
  -- Attributes of TOPPINGS
  TOPPING_NAME VARCHAR(50) NOT NULL,
  PRICE DECIMAL(10, 2),
  BUSINESS_COST DECIMAL(10, 2),
  INVENTORY_LEVEL INT,
  AMOUNT_XLarge DECIMAL(5, 2),
  AMOUNT_Large DECIMAL(5, 2),
  AMOUNT_Medium DECIMAL(5, 2),
  AMOUNT_Small DECIMAL(5, 2),

  -- Keys of TOPPINGS
  PRIMARY KEY (TOPPING_NAME)
);

CREATE TABLE HAS_TOPPING (
  -- Attributes of HAS_TOPPING
  TOPPING_NAME VARCHAR(50) NOT NULL,
  PIZZA_ID INT NOT NULL,
  REQUIRES_DOUBLE BOOLEAN,

  PRIMARY KEY (TOPPING_NAME, PIZZA_ID),
  FOREIGN KEY
    (PIZZA_ID) REFERENCES PIZZA(PIZZA_ID),
  FOREIGN KEY
    (TOPPING_NAME) REFERENCES TOPPINGS(TOPPING_NAME)
);