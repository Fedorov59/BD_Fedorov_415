SELECT * FROM TCATERER;
SELECT * FROM TEMPLOYER; /* 14 задание */

SELECT id_material,name FROM TMATERIAL; /* 15 задание */

SELECT name,surname,father_name,birthdate FROM TEMPLOYER; /* 16 задание */

SELECT * FROM TEMPLOYER WHERE father_name = 'М'; /* 17 задание */

SELECT * FROM TCATERER 
  WHERE id_caterer IN
    (SELECT id_caterer FROM TSUPPLY where supply_date >='01.04.2009' 
      AND supply_date <='30.06.2009'); /* 18 задание */

SELECT * FROM TSECTION
  WHERE id_section IN
    (SELECT id_section FROM TDELIVER where deliver_date >='01.08.2009' 
      AND deliver_date <='31.08.2009' AND id_material =0); /* 19 задание */

SELECT name FROM TMATERIAL
  WHERE id_material IN
    (SELECT id_material FROM TDELIVER WHERE deliver_date >='01.01.2017' and deliver_date <=SYSDATE ); /* 21 задание */

SELECT name FROM TMATERIAL
  WHERE id_material not IN
    (SELECT id_material FROM TDELIVER WHERE deliver_date >='01.01.2017' and deliver_date <=SYSDATE) AND
        id_material IN 
          (SELECT id_material FROM TDELIVER WHERE id_store=0); /* 22 задание */

SELECT TSECTION.id_section, TEMPLOYER.name, TEMPLOYER.surname, TEMPLOYER.father_name
  FROM TSECTION, TEMPLOYER
    WHERE TSECTION.id_employer=TEMPLOYER.id_employer; /* 23 задание */

SELECT TSECTION.id_section, TEMPLOYER.name, TEMPLOYER.surname, TEMPLOYER.father_name,TJOB.name
  FROM TSECTION, TEMPLOYER, TJOB
    WHERE TSECTION.id_employer=TEMPLOYER.id_employer AND TEMPLOYER.id_job=TJOB.id_job ; /* 24 задание */

SELECT TСATERER.name, TSUPPLY.id_material, TSUPPLY.volume, TSUPPLY.supply_date, TINPRICE.price
  FROM TСATERER, TSUPPLY, TINPRICE
    WHERE TСATERER.id_caterer=TSUPPLY.id_caterer AND TSUPPLY.id_material=TINPRICE.id_material AND supply_date>='01.01.2009' AND supply_date<='31.03.2009'; /* 25 задание */

SELECT TСATERER.name, TSUPPLY.id_material, TSUPPLY.volume, TSUPPLY.supply_date, TINPRICE.price
  FROM TСATERER, TSUPPLY, TINPRICE
    WHERE TСATERER.id_caterer=TSUPPLY.id_caterer AND TSUPPLY.id_material=TINPRICE.id_material AND supply_date>='01.01.2009' AND supply_date<='31.03.2009' AND TCATERER.address='г. Пермь'; /* 26 задание */

SELECT TMATERIAL.name, TSTORE.NAME, TSURPLUS.volume
  FROM TMATERIAL, TSTORE, TSURPLUS
    WHERE TMATERIAL.id_material=TSURPLUS.id_material AND TSURPLUS.id_store=TSTORE.id_store; /* 27 задание */

SELECT TСATERER.name, TSUPPLY.id_material, TSUPPLY.volume, TSUPPLY.supply_date, TINPRICE.price
  FROM TSUPPLY 
    INNER JOIN TСATERER ON TСATERER.id_caterer=TSUPPLY.id_caterer AND supply_date>='01.01.2009' AND supply_date<='31.03.2009'
    INNER JOIN TINPRICE ON TSUPPLY.id_material=TINPRICE.id_material; /* 28 задание */

SELECT TСATERER.name, TSUPPLY.id_material, TSUPPLY.volume, TSUPPLY.supply_date, TINPRICE.price
  FROM TSUPPLY 
    LEFT OUTER JOIN TСATERER ON TСATERER.id_caterer=TSUPPLY.id_caterer AND supply_date>='01.01.2009' AND supply_date<='31.03.2009'
    INNER JOIN TINPRICE ON TSUPPLY.id_material=TINPRICE.id_material; /* 29 задание */

SELECT TMATERIAL.name, TSTORE.name, TSURPLUS.volume
  FROM TSURPLUS 
  INNER JOIN TMATERIAL ON TMATERIAL.id_material=TSURPLUS.id_material 
  INNER JOIN TSTORE ON TSURPLUS.id_store=TSTORE.id_store; /* 30 задание */

SELECT TMATERIAL.name, TMESSURE.name, TINPRICE.price
  FROM TMATERIAL 
  INNER JOIN TMESSURE ON TMATERIAL.id_messure=TMESSURE.id_messure
  INNER JOIN TINPRICE ON TMATERIAL.id_material=TINPRICE.id_material AND price_date>='01.07.2009' AND price_date<='31.09.2009'; /* 31 задание */

SELECT TMATERIAL.name, TMESSURE.name, TINPRICE.price
  FROM TMATERIAL 
  INNER JOIN TMESSURE ON TMATERIAL.id_messure=TMESSURE.id_messure
  LEFT JOIN TINPRICE ON TMATERIAL.id_material=TINPRICE.id_material AND price_date>='01.07.2009' AND price_date<='31.09.2009'; /* 32 задание */