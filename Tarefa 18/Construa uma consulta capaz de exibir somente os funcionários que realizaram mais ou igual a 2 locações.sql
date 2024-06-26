-- SQLite
SELECT
  E.ID,
  E.NAME,
  E.PHONE_NUMBER,
  E.CONTRACT_DATE,
  P.DESCRIPTION AS 'POSITION'
FROM
  EMPLOYEES AS E
  INNER JOIN POSITIONS AS P ON (E.POSITION_ID = P.ID)
  INNER JOIN LOCATIONS AS L ON (E.ID = L.EMPLOYEE_ID)
GROUP BY
  E.ID
HAVING
  COUNT(L.ID) >= 2