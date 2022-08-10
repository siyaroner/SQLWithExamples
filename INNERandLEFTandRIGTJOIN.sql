----------------------| INNER JOIN |--------------------------------------
--SELECT *
--FROM USERS U
--JOIN ADDRESS A ON A.USERID=U.ID

--SELECT *
--FROM USERS U
--INNER JOIN ADDRESS A ON A.USERID=U.ID  --- JOIN= INNER JOIN

---------------------| LEFT JOIN |---------------------------------------

SELECT *
FROM USERS U LEFT 
JOIN ADDRESS A ON A.USERID=U.ID

---------------------| LEFT JOIN |---------------------------------------

SELECT *
FROM USERS U 
RIGHT JOIN ADDRESS A ON A.USERID=U.ID