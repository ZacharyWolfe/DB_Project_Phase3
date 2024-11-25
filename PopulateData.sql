-- Zachary Wolfe
-- Matt Taylor

-- 
--        DISCOUNT INSERTS
-- 


INSERT INTO DISCOUNT (DISCOUNT_ID, DISCOUNT_NAME, PERCENT_OFF, DOLLAR_OFF)
VALUES
  (1, "employee"             , 15.00 , NULL),
  (2, "Lunch Special Medium" , NULL  , 1.00),
  (3, "Lunch Special Large"  , NULL  , 2.00),
  (4, "Specialty Pizza"      , NULL  , 1.50),
  (5, "Gameday special"      , 20.00 , NULL);

-- 
--        BASE PRICE INSERTS
-- 

INSERT INTO BASE_PRICE (CRUST_TYPE, BASE_SIZE, PRICE, BASE_COST) 
VALUES 
  ("Small"   , "Thin"         , 3.00  , 0.50),
  ("Small"   , "Original"     , 3.00  , 0.75),
  ("Small"   , "Pan"          , 3.50  , 1.00),
  ("Small"   , "Gluten-Free"  , 4.00  , 2.00),
  ("Medium"  , "Thin"         , 5.00  , 1.00),
  ("Medium"  , "Original"     , 5.00  , 1.50),
  ("Medium"  , "Pan"          , 6.00  , 2.25),
  ("Medium"  , "Gluten-Free"  , 6.25  , 3.00),
  ("Large"   , "Thin"         , 8.00  , 1.25),
  ("Large"   , "Original"     , 8.00  , 2.00),
  ("Large"   , "Pan"          , 9.00  , 3.00),
  ("Large"   , "Gluten-Free"  , 9.50  , 4.00),
  ("X-Large" , "Thin"         , 10.00 , 2.00),
  ("X-Large" , "Original"     , 10.00 , 3.00),
  ("X-Large" , "Pan"          , 11.50 , 4.50),
  ("X-Large" , "Gluten-Free"  , 12.50 , 6.00);

INSERT INTO TOPPINGS (TOPPING_NAME, PRICE, BUSINESS_COST, INVENTORY_LEVEL, AMOUNT_XLarge, AMOUNT_Large, AMOUNT_Medium, AMOUNT_Small)
VALUES
  ("Pepperoni"         , 1.25 , 0.20  , 100 , 2.00  , 2.75  , 3.50  , 4.50),
  ("Sausage"           , 1.25 , 0.15  , 100 , 2.50  , 3.00  , 3.50  , 4.25),
  ("Ham"               , 1.50 , 0.15  , 78  , 2.00  , 2.50  , 3.25  , 4.00),
  ("Chicken"           , 1.75 , 0.25  , 56  , 1.50  , 2.00  , 2.25  , 3.00),
  ("Green Pepper"      , 0.50 , 0.02  , 79  , 1.00  , 1.50  , 2.00  , 2.50),
  ("Onion"             , 0.50 , 0.02  , 85  , 1.00  , 1.50  , 2.00  , 2.75),
  ("Roma Tomato"       , 0.75 , 0.03  , 86  , 2.00  , 3.00  , 3.50  , 4.50),
  ("Mushrooms"         , 0.75 , 0.10  , 52  , 1.50  , 2.00  , 2.50  , 3.00),
  ("Black Olives"      , 0.60 , 0.10  , 39  , 0.75  , 1.00  , 1.50  , 2.00),
  ("Pineapple"         , 1.00 , 0.25  , 15  , 1.00  , 1.25  , 1.75  , 2.00),
  ("Jalapenos"         , 0.50 , 0.05  , 64  , 0.50  , 0.75  , 1.25  , 1.75),
  ("Banana Peppers"    , 0.50 , 0.05  , 36  , 0.60  , 1.00  , 1.30  , 1.75),
  ("Regular Cheese"    , 1.50 , 0.12  , 250 , 2.00  , 3.50  , 5.00  , 7.00),
  ("Four Cheese Blend" , 2.00 , 0.15  , 150 , 2.00  , 3.50  , 5.00  , 7.00),
  ("Feta Cheese"       , 2.00 , 0.18  , 75  , 1.75  , 3.00  , 4.00  , 5.50),
  ("Goat Cheese"       , 2.00 , 0.20  , 54  , 1.60  , 2.75  , 4.00  , 5.50),
  ("Bacon"             , 1.50 , 0.25  , 89  , 1.00  , 1.50  , 2.00  , 3.00);