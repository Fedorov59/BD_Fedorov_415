CREATE VIEW V_CATERER
  (id_caterer, caterer_name, contact_name, contact_surname)
AS
  SELECT TCATERER.id_caterer, TCATERER.name, TCONTACT.name, TCONTACT.surname
    FROM TCATERER JOIN TCONTACT
    ON TCATERER.id_caterer = TCONTACT.id_caterer;

SELECT * FROM V_CATERER;

INSERT INTO V_CATERER 
  (id_caterer, caterer_name, contact_name, contact_surname)
  VALUES
  (6, 'Поставщик', 'Имя', 'Фамилия');

DELETE FROM V_CATERER
  WHERE id_caterer = 4;

UPDATE V_CATERER
  SET contact_name = 'Имя2'
    WHERE id_caterer = 2;          /* 48 задание */


CREATE OR REPLACE VIEW V_SURPLUS
  (material, store, volume)
AS
  SELECT TMATERIAL.name, TSTORE.name, sum(TSURPLUS.volume)
    FROM TMATERIAL JOIN TSURPLUS  
      ON TMATERIAL.id_material = TSURPLUS.id_material
    JOIN TSTORE 
      ON TSURPLUS.id_store = TSTORE.id_store
  GROUP BY TMATERIAL.name, TSTORE.name;          /* 49 задание */


CREATE VIEW V_SUPPLY
  (caterer_name, material, messure, supply_data, price, volume, suma)
AS
  SELECT TCATERER.name, TMATERIAL.name, TMESSURE.name, TSUPPLY.supply_data, TINPRICE.price, TSUPPLY.volume, TSUPPLY.volume * TINPRICE.price
  FROM TSUPPLY JOIN TCATERER
  ON TSUPPLY.id_caterer = TCATERER.id_caterer
  JOIN TMATERIAL 
  ON TSUPPLY.id_material = TMATERIAL.id_material
  JOIN TMESSURE
  ON TMATERIAL.id_messure = TMESSURE.id_messure
  JOIN TINPRICE 
  ON TMATERIAL.id_material = TINPRICE.id_material;       /* 50 задание */


CREATE VIEW V_STORE
  (store, material, messure, suma)
AS
  SELECT TSTORE.name, TMATERIAL.name, TMESSURE.name, sum(TDELIVER.volume)
    FROM TDELIVER JOIN TSTORE
    ON TDELIVER.id_store = TSTORE.id_store   
    JOIN TMATERIAL
    ON TDELIVER.id_material = TMATERIAL.id_material
    JOIN TMESSURE 
    ON TMATERIAL.id_messure = TMESSURE.id_messure
    WHERE deliver_data >= '01.01.2017' AND deliver_data <= SYSDATE
GROUP BY TSTORE.name, TMATERIAL.name, TMESSURE.name;       /* 51 задание */


CREATE OR REPLACE VIEW V_SUPPLY_PRICE
  (id, material, volume, store, price, suma)
AS
  SELECT TSUPPLY.id_supply, TMATERIAL.name, TSUPPLY.volume, TSTORE.name, TSUPPLY.price, TSUPPLY.volume * TSUPPLY.price
  FROM TSUPPLY JOIN TMATERIAL
    ON TSUPPLY.id_material = TMATERIAL.id_material
  JOIN TSTORE 
    ON TSUPPLY.id_store = TSTORE.id_store
  ORDER BY TSUPPLY.id_supply;

CREATE OR REPLACE VIEW V_INPRICE
  (id, material, volume, store, price, suma)
AS
  SELECT TSUPPLY.id_supply, TMATERIAL.name, TSUPPLY.volume, TSTORE.name, TINPRICE.price, TSUPPLY.volume * TINPRICE.price
  FROM TSUPPLY JOIN t_material 
    ON TSUPPLY.id_material = TMATERIAL.id_material
  JOIN TINPRICE 
    ON TMATERIAL.id_material = TINPRICE.id_material
  JOIN TSTORE 
    ON TSUPPLY.id_store = TSTORE.id_store
  ORDER BY TSUPPLY.id_supply;

CREATE VIEW V_COMPARE
  (material, volume, store, supply_price, inprice, difference)
AS
  SELECT TMATERIAL.name, TSUPPLY.volume, TSTORE.name, V_SUPPLY_PRICE.suma, V_INPRICE.suma, ABS(V_SUPPLY_PRICE.suma - V_INPRICE.suma)
  FROM TSUPPLY JOIN TMATERIAL 
    ON TSUPPLY.id_material = TMATERIAL.id_material
  JOIN TSTORE 
    ON TSUPPLY.id_store = TSTORE.id_store
  JOIN V_SUPPLY_PRICE 
    ON TSUPPLY.id_supply = V_SUPPLY_PRICE.id
  JOIN V_INPRICE 
    ON TSUPPLY.id_supply = V_INPRICE.id;        /* 52 задание */