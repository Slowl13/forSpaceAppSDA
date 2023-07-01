1. SELECT model, speed, hd FROM PC WHERE price < 500

2. SELECT DISTINCT maker FROM Product WHERE type='Printer'

3. SELECT model, ram, screen FROM Laptop WHERE price > 1000

4. SELECT * FROM Printer WHERE color='y'

5. SELECT model, speed, hd FROM PC WHERE (cd='12x' OR cd='24x') AND price<600

6. SELECT DISTINCT maker, speed FROM Laptop l
LEFT JOIN Product p ON l.model = p.model
WHERE hd>=10

7. SELECT result.model, price
FROM (
SELECT model, price FROM PC
UNION
SELECT model, price FROM Laptop
UNION
SELECT model, price FROM Printer
)
AS result
JOIN Product p ON result.model=p.model
WHERE p.maker='B'

8. SELECT maker FROM Product
WHERE type='PC'
EXCEPT
SELECT maker FROM Product
WHERE type='Laptop'

9. SELECT DISTINCT maker FROM PC pc
JOIN Product p
ON p.model=pc.model
WHERE SPEED>=450

10. SELECT model, price
FROM Printer
WHERE price=(
SELECT MAX(price)
FROM
Printer
)
