UPDATE TINPRICE
  SET price=0.85*price
  WHERE PRICE_DATE >= '01.01.2017'
  AND price_date <= '31.12.2017'