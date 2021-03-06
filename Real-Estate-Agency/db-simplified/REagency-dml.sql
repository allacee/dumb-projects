-- manager table
------------------------------------------
INSERT INTO manager (manager_id, name, surname, spec, comission)
	VALUES(1, 'name1', 'surname1', 'sale', 22);

INSERT INTO manager (manager_id, name, surname, spec, comission)
	VALUES(2, 'name2', 'surname2', 'sale', 24);

INSERT INTO manager (manager_id, name, surname, spec, comission)
	VALUES(3,'name3', 'surname3', 'sale', 30);

INSERT INTO manager (manager_id, name, surname, spec, comission)
	VALUES(4, 'name4', 'surname4', 'rent', 15);

INSERT INTO manager (manager_id, name, surname, spec, comission)
	VALUES(5, 'name5', 'surname5', 'rent', 16);

INSERT INTO manager (manager_id, name, surname, spec, comission)
	VALUES(6, 'name6', 'surname7', 'rent', 17);

INSERT INTO manager (manager_id, name, surname, spec, comission)
	VALUES(7, 'name7', 'surname7', 'buy', 20);

INSERT INTO manager (manager_id, name, surname, spec, comission)
	VALUES(8, 'name8', 'surname8', 'trade', 13);

SELECT * FROM manager;
------------------------------------------


-- room table
------------------------------------------
INSERT INTO room (type, area)	
    VALUES('isolated', 20);

INSERT INTO room (type, area)	
    VALUES('adjacent', 20);

INSERT INTO room (type, area)	
    VALUES('isolated', 10);

INSERT INTO room (type, area)	
    VALUES('adjacent', 10);

INSERT INTO room (type, area)	
    VALUES('isolated', 13);

INSERT INTO room (type, area)	
    VALUES('adjacent', 14);

SELECT * FROM room;
------------------------------------------


-- house table
------------------------------------------
INSERT INTO house(district, street, num, type, num_of_floors, series)
    VALUES('district1', 'street1', 11, 'panel', 7, 'series1');

INSERT INTO house(district, street, num, type, num_of_floors, series)
    VALUES('district1', 'street1', 12, 'blocks', 7, 'series2');

INSERT INTO house(district, street, num, type, num_of_floors, series)
    VALUES('district1', 'street2', 1, 'bricks', 4, 'series3');

INSERT INTO house(district, street, num, type, num_of_floors, series)
    VALUES('district2', 'street3', 78, 'panel', 20, 'series4');

SELECT * FROM house;
------------------------------------------


-- kitchen table
------------------------------------------
INSERT INTO kitchen(area, cooker_type)
    VALUES(10, 'gas');

INSERT INTO kitchen(area, cooker_type)
    VALUES(12, 'gas');
    
INSERT INTO kitchen(area, cooker_type)
    VALUES(13, 'electric');

INSERT INTO kitchen(area, cooker_type)
    VALUES(9, 'electric');

SELECT * FROM kitchen;
------------------------------------------


-- customer table
------------------------------------------
INSERT INTO customer(name, surname)
    VALUES('cust_name1', 'cust_surname1');

INSERT INTO customer(name, surname)
    VALUES('cust_name2', 'cust_surname2');

INSERT INTO customer(name, surname)
    VALUES('cust_name3', 'cust_surname3');

INSERT INTO customer(name, surname)
    VALUES('cust_name4', 'cust_surname4');

INSERT INTO customer(name, surname)
    VALUES('cust_name5', 'cust_surname5');

SELECT * FROM customer;
------------------------------------------


-- property table
------------------------------------------
INSERT INTO property(house_id, floor, apartments, area, num_of_rooms, kitchen_id, bathroom_type, has_bath, has_balcony)
    VALUES(1, 3, 11, 40, 2, 1, 'combined', 'Y', 'Y');

INSERT INTO property(house_id, floor, apartments, area, num_of_rooms, kitchen_id, bathroom_type, has_bath, has_balcony)
    VALUES(1, 3, 12, 40, 2, 1, 'combined', 'Y', 'Y');

INSERT INTO property(house_id, floor, apartments, area, num_of_rooms, kitchen_id, bathroom_type, has_bath, has_balcony)
    VALUES(1, 4, 13, 40, 2, 1, 'combined', 'Y', 'Y');

INSERT INTO property(house_id, floor, apartments, area, num_of_rooms, kitchen_id, bathroom_type, has_bath, has_balcony)
    VALUES(2, 6, 68, 55, 3, 3, 'isolated', 'Y', 'N');

INSERT INTO property(house_id, floor, apartments, area, num_of_rooms, kitchen_id, bathroom_type, has_bath, has_balcony)
    VALUES(3, 1, 2, 25, 1, 4, 'combined', 'N', 'N');

INSERT INTO property(house_id, floor, apartments, area, num_of_rooms, kitchen_id, bathroom_type, has_bath, has_balcony)
    VALUES(4, 18, 492, 37, 2, 3, 'isolated', 'Y', 'Y');

SELECT * FROM property;
------------------------------------------


-- property_room table
------------------------------------------
INSERT INTO property_room(property_id, room_id)
    VALUES(1, 5);

INSERT INTO property_room(property_id, room_id)
    VALUES(1, 4);

INSERT INTO property_room(property_id, room_id)
    VALUES(2, 5);

INSERT INTO property_room(property_id, room_id)
    VALUES(2, 4);

INSERT INTO property_room(property_id, room_id)
    VALUES(3, 5);

INSERT INTO property_room(property_id, room_id)
    VALUES(3, 4);

INSERT INTO property_room(property_id, room_id)
    VALUES(4, 2);

INSERT INTO property_room(property_id, room_id)
    VALUES(4, 6);

INSERT INTO property_room(property_id, room_id)
    VALUES(4, 4);

INSERT INTO property_room(property_id, room_id)
    VALUES(5, 2);

INSERT INTO property_room(property_id, room_id)
    VALUES(6, 5);

INSERT INTO property_room(property_id, room_id)
    VALUES(6, 3);

SELECT * FROM property_room;
------------------------------------------


-- exchange table
------------------------------------------
INSERT INTO exchange(manager_id, customer_id, property_id, worth) 
    VALUES(1, 1, 1, 3000000);

INSERT INTO exchange(manager_id, customer_id, property_id, worth) 
    VALUES(2, 1, 2, 3500000);

INSERT INTO exchange(manager_id, customer_id, property_id, worth) 
    VALUES(2, 2, 3, 3250000);

INSERT INTO exchange(manager_id, customer_id, property_id, worth) 
    VALUES(2, 2, 4, 8000000);

INSERT INTO exchange(manager_id, customer_id, property_id, worth, start_date, expire_date) 
    VALUES(4, 3, 5, 540000, '04-FEB-2020', '04-FEB-2023');

INSERT INTO exchange(manager_id, customer_id, property_id, worth, start_date, expire_date) 
    VALUES(4, 4, 6, 120000, '11-APR-2020', '11-JUL-2024');


SELECT * FROM exchange;
------------------------------------------

---Запросы в базу данных по заданию---
-- 6. Список вариантов аренды, подобранных по указанному типу квартиры.
SELECT 
    exchange.exchange_id, manager_id, exchange.customer_id, property_id ,property.num_of_rooms AS "PROPERTY_TYPE", manager.spec
FROM 
    exchange 
    INNER JOIN manager USING (manager_id) 
    INNER JOIN property USING (property_id)
WHERE 
    manager.spec = 'rent'
    -- здесь менять тип квартиры (количество комнат) --
    AND property.num_of_rooms = 1; 

-- 7. Список менеджеров, занимающихся продажей, число завершённых договоров за указанный период и сумма процентов
SELECT
    manager_id,  COUNT(manager_id) AS "NUM_OF_FINISHED_EXCHANGES", SUM(exchange.worth * manager.comission / 100) AS "COMISSION_SUM"
FROM   
    manager
    INNER JOIN exchange USING (manager_id)
WHERE
    manager.spec = 'sale'
    -- здесь менять сроки --
    AND exchange.expire_date > '01-JAN-2020'
    AND exchange.expire_date < '01-JAN-2021'
GROUP BY manager_id;


-- 8. Менеджер с макс. комиссией с договоров за этот промежуток
SELECT
    manager_id, SUM(exchange.worth * manager.comission / 100) AS "COMISSION_SUM"
FROM
    manager
    INNER JOIN exchange USING (manager_id)
WHERE
    -- здесь менять сроки --
    exchange.expire_date > '01-JAN-2020'
    AND exchange.expire_date < '01-JAN-2021'
GROUP BY manager_id
ORDER BY COMISSION_SUM DESC
FETCH FIRST 1 ROW ONLY;

-- 9. Не завершенные договоры для менеджера в этот период времени
SELECT 
    exchange.exchange_id, manager_id, exchange.start_date, exchange.expire_date
FROM
    exchange
    INNER JOIN manager USING (manager_id)
WHERE
    -- менять усовия тут --
    manager_id = 4
    AND exchange.start_date >  '01-JAN-2020'
    AND exchange.expire_date > '01-JAN-2022';

-- 10. Клиенты, купившие квартиру в этом районе в этот срок ( общее количество чего?)
SELECT 
    customer.name, customer.surname, house.district
FROM
    customer
    INNER JOIN exchange USING (customer_id)
    INNER JOIN property USING (property_id)
    INNER JOIN house USING (house_id)
WHERE 
    -- менять условия тут --
    house.district = 'district1'
    AND exchange.expire_date > '01-JAN-2020'
    AND exchange.expire_date < '01-JAN-2025'
GROUP BY customer.name, customer.surname, house.district;




SELECT 
    manager.name, sum(exchange.worth)
FROM
    manager
    INNER JOIN exchange on exchange.manager_id = manager.manager_id
GROUP BY 
    manager.name, exchange.start_date
HAVING
    exchange.start_date > '01-JAN-2020'
    AND exchange.start_date < '01-JAN-2025';

SELECT 
    "C##TESTUSER"."РАСТЕНИЯ"."НАЗВАНИЕ", SUM("C##TESTUSER"."ПРОДАЖИ"."ЦЕНА")
FROM
    "C##TESTUSER"."РАСТЕНИЯ".
    INNER JOIN "C##TESTUSER"."ПРОДАЖИ" ON "C##TESTUSER"."РАСТЕНИЯ"."КОД_Р" = "C##TESTUSER"."ПРОДАЖИ"."КОД_РАСТЕНИЯ"
GROUP BY 
    "C##TESTUSER"."РАСТЕНИЯ"."НАЗВАНИЕ", "C##TESTUSER"."ПРОДАЖИ"."ДАТА"
HAVING
    "C##TESTUSER"."ПРОДАЖИ"."ДАТА" > '01-JAN-2020'
    AND "C##TESTUSER"."ПРОДАЖИ"."ДАТА" < '01-JAN-2025';