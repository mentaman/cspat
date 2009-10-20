CREATE ASSERTION duplicate 
CHECK (NOT EXISTS(
	SELECT DISTINCT maker FROM product p WHERE p.type='PC' AND p.maker IN (SELECT p2.maker FROM product p2 WHERE p2.type='Laptop')
	)
);


CREATE ASSERTION  priceCheck 
CHECK (NOT EXISTS(
SELECT l.model,l.ram,l.price,pc.model,pc.ram,pc.price FROM PC, Laptop l WHERE l.ram > pc.ram AND l.price <= pc.price
	)
);


CREATE OR REPLACE TRIGGER check1 BEFORE UPDATE OF ram,hd ON PC FOR EACH ROW BEGIN 
    IF (:new.hd < 100*:new.ram/1000) THEN 
        RAISE_APPLICATION_ERROR(-20000, 'PC has at least 100 times as much hard disk as RAM'); 
    END IF; 
END check1;

