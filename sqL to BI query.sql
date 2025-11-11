SELECT * FROM ccdb.cc_add;
-- *=============****==============****=============****================*
-- ALTER!!! NEVER RUN FULL PAGE IN ONE GO AS HAVE DROP TABLE COMMENT
-- RUN 1a, 1b, and 1c IN THIS SEQUENCE ONLY
-- *=============****==============****=============****================*

-- 1a Backup old tables (one-time)
RENAME TABLE customer TO customer_old;
RENAME TABLE credit_card TO credit_card_old;

-- 1b Replace with merged tables
CREATE TABLE customer AS
SELECT * FROM customer_updated;

CREATE TABLE credit_card AS
SELECT * FROM credit_card_updated;

-- 1c drop updated
DROP TABLE customer;
DROP TABLE credit_card;

RENAME TABLE customer_old TO customer;
RENAME TABLE credit_card_old TO credit_card;





-- Total rows check
use ccdb;
SELECT COUNT(*) AS customer_rows FROM customer;  #10108
SELECT COUNT(*) AS credit_card_rows FROM credit_card;  #10108
SELECT COUNT(*) AS cust_add_rows FROM cust_add;  #185
SELECT COUNT(*) AS cc_add_rows FROM cc_add;  #185

SELECT COUNT(DISTINCT Client_Num) as customer_unique FROM customer; #10108
SELECT COUNT(DISTINCT Client_Num) as credit_unique FROM credit_card; #10108

-- Duplicate check
-- For Customer
SELECT COUNT(*) AS duplicate_customers
FROM cust_add c JOIN customer m
ON c.Client_Num = m.Client_Num;

-- For Credit Card
SELECT COUNT(*) AS duplicate_cards
FROM cc_add c JOIN credit_card m
ON c.Client_Num = m.Client_Num;

-- Mergeing the tables 

CREATE TABLE customer_updated AS
SELECT * FROM customer
UNION ALL
SELECT * FROM cust_add;
SELECT COUNT(*) AS new_customer_rows FROM customer_updated; #10293

CREATE TABLE credit_card_updated AS
SELECT * FROM credit_card
UNION ALL
SELECT * FROM cc_add;
SELECT COUNT(*) AS new_creditcard_rows FROM credit_card_updated; #10293







