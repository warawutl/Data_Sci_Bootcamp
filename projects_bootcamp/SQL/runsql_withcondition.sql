.open restaurant.db

-- เรียกดู Table  
-- SELECT * FROM customers;
-- SELECT * FROM daywork;
-- SELECT * FROM ordered;
-- SELECT * FROM ordered_detail;
-- SELECT * FROM menu;

-- jointableSELECT customers.name
-- FROM customers
-- JOIN ordered
--   ON ordered.customers_id = customers.customers_id
-- JOIN daywork
--   ON daywork.day_id = ordered.day_id
-- JOIN ordered_detail
--   ON ordered_detail.ordered_id = ordered.ordered_id
-- JOIN menu
--   ON menu.menu_name = ordered_detail.menu_name

-- เพื่อความสวยงามอ่านง่าย
.mode box  

-- order  ในแต่ละวัน week นี้
SELECT daywork.day, COUNT(daywork.day) AS countorder  
FROM daywork 
JOIN ordered
ON daywork.day_id = ordered.day_id 
GROUP BY daywork.day_id 
ORDER BY countorder DESC;

-- Total Revenue in a week
SELECT SUM(quantity * menu_price) AS Total_R
FROM ordered_detail ;

--  Top seller in a week
SELECT menu_name AS TOP_SELL, SUM(quantity) AS Q
FROM ordered_detail
GROUP BY menu_name 
ORDER BY SUM(quantity) DESC;

-- sub query ( menu that price > avg price )
SELECT menu_name  
FROM menu
WHERE menu_price > (SELECT AVG(menu_price) FROM menu);

-- CTE ลูกค้าแต่ละคน order in a week 
WITH sub1 AS (SELECT * FROM customers),
sub2 AS (SELECT * FROM ordered),
sub3 AS (SELECT * FROM ordered_detail)

SELECT
  sub1.name,  
  sub3.ordered_id,
  sub2.customers_id

FROM sub1
JOIN sub2
ON sub1.customers_id = sub2.customers_id
JOIN sub3
ON sub2.ordered_id = sub3.ordered_id

ORDER BY sub1.name ;
      
