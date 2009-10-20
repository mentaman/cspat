SELECT DISTINCT p1.maker FROM product p1 
WHERE p1.type = 'Laptop' 
AND NOT EXISTS (SELECT * from product p2 where p1.maker = p2.maker AND p2.type = 'PC')


SELECT pc3.model, pc2.model FROM PC pc2, (SELECT MIN(pc1.model) AS model, pc1.speed, pc1.ram 
FROM PC pc1 GROUP BY pc1.speed, pc1.ram) pc3 
WHERE pc3.speed = pc2.speed AND pc3.ram = pc2.ram AND pc3.model <> pc2.model;


SELECT DISTINCT maker FROM product p, PC, Laptop l 
WHERE p.model = PC.model  AND PC.speed = (SELECT MAX(pc2.speed) FROM PC pc2) OR (p.model = l.model AND l.speed = (SELECT MAX(l2.speed) FROM Laptop l2));


(SELECT AVG(price) FROM product p, PC WHERE p.maker = 'D' AND p.model = PC.model) 
UNION (SELECT AVG(price)  FROM product p, Laptop l WHERE p.maker = 'D' AND p.model = l.model);


SELECT speed, AVG(price) FROM PC WHERE speed > 2.0 GROUP BY speed;

SELECT AVG(ram),p.maker FROM PC, Product p WHERE PC.model = p.model AND p.maker in (SELECT DISTINCT maker FROM product p2 WHERE p2.type='Printer') GROUP BY p.maker;

