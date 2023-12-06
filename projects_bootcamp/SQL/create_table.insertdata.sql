/*.open restaurant.db
--create table customers
CREATE TABLE IF NOT EXISTS customers 
  (
  customers_id int,
  name text,
  city text    
)
;

INSERT INTO customers VALUES 
    (1, "saac", "chiangmai"),
    (2, "arm", "narathiwat"),
    (3, "rong", "bangkok"),
    (4, "tangmae", "chiangmai"),
    (5, "guy", "Chonburi"),
    (6, "tangkwa", "bangkok")
;

--table daywork
CREATE TABLE IF NOT EXISTS daywork 
(
  day_id int,
  day text      
)
;

INSERT INTO daywork VALUES
    (1, "sun"),
    (2, "mon"),
    (3, "tue"),
    (4, "wed"),
    (5, "thu"),  
    (6, "fri"),
    (7, "sat")
;

--table ordered
CREATE TABLE IF NOT EXISTS ordered
(
    ordered_id int,
    customers_id int,
    ordered_date date,
    day_id int
)
;

INSERT INTO ordered VALUES
	(1, 3, "2023.09.03", 1),
	(2, 2, "2023.09.04", 2),
	(3, 1, "2023.09.04", 2),
	(4, 2, "2023.09.05", 3),
	(5, 1, "2023.09.05", 3),
	(6, 4, "2023.09.06", 4),
	(7, 2, "2023.09.07", 5),
	(8, 3, "2023.09.07", 5),
	(9, 3, "2023.09.08", 6),
	(10, 2, "2023.09.08", 6),
	(11, 1, "2023.09.08", 6),
	(12, 2, "2023.09.09", 7),
	(13, 3, "2023.09.09", 7),
	(14, 1, "2023.09.09", 7),
	(15, 4, "2023.09.09", 7)
;

--create table ordered_detail
CREATE TABLE IF NOT EXISTS ordered_detail 
(
	ordered_id int,
	menu_name text,
 	menu_price int,
 	quantity int
)
;

INSERT INTO ordered_detail VALUES
	(1, "pizza", 10, 1),
    (1, "chocolate", 5, 1),
    (2, "hamburger", 9, 2),
    (2, "icecream", 8, 2),
    (3, "steak", 15, 1),
    (3, "icecream", 8, 1),
    (4, "pizza", 10, 2),
    (4, "icecream", 8, 2),
    (5, "hamburger", 9, 2),
    (5, "icecream", 8, 1),
    (5, "chocolate", 5, 1),
    (6, "steak", 15, 2),
    (6, "icecream", 8, 1),
    (6, "chocolate", 5, 1),
    (7, "icecream", 8, 2),
    (8, "chocolate", 5, 1),
    (9, "pizza", 10, 1),
    (9, "chocolate", 5, 1),
    (9, "hamburger", 9, 2),
    (10, "icecream", 8, 2),
    (10, "steak", 15, 1),
    (11, "icecream", 8, 1),
    (11, "pizza", 10, 2),
    (12, "icecream", 8, 2),
    (12, "hamburger", 9, 2),
    (13, "icecream", 8, 1),
    (13, "chocolate", 5, 1),
    (14, "steak", 15, 2),
    (14, "icecream", 8, 1),
    (15, "chocolate", 5, 1),
    (15, "icecream", 8, 2),
    (15, "chocolate", 5, 1)
;

--create table menu 
CREATE TABLE IF NOT EXISTS menu 
(
  	menu_id int,
    menu_name text,
    menu_price int
  )
;

INSERT INTO menu VALUES
	(1, "pizza", 10),
    (2, "hamburger", 9),
    (3, "steak", 15),
    (4, "icecream", 8),
    (5, "chocolate", 5)
; */
