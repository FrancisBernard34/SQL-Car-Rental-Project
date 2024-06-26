-- SQLite
SELECT
  C.ID,
  C.NAME,
  C.LASTNAME,
  C.PHONE,
  C.EMAIL,
  C.ADDRESS,
  C.CITY,
  C.STATE,
  C.BIRTH_DATE
FROM
  CUSTOMERS AS C
  INNER JOIN LOCATIONS AS L ON (C.ID = L.CUSTOMER_ID)
GROUP BY
  C.ID
HAVING
  COUNT(L.ID) >= 2