----INNER JOIN
SELECT E.EMPLOYEE_ID,E.FIRST_NAME||'' ||E.LAST_NAME  NAME,E.EMAIL,L.CITY 
FROM EMPLOYEES E INNER JOIN DEPARTMENTS D
ON  E.DEPARTMENT_ID=D.DEPARTMENT_ID
INNER JOIN LOCATIONS L
ON D.LOCATION_ID=L.LOCATION_ID ;

----left outer join fro displaying emplyees workings under shich department 

SELECT 
D.DEPARTMENT_ID,D.DEPARTMENT_NAME,
E.FIRST_NAME||'' ||E.LAST_NAME  NAME,
E.EMAIL,E.EMPLOYEE_ID
FROM DEPARTMENTS D LEFT JOIN EMPLOYEES E 
ON E.DEPARTMENT_ID= D.DEPARTMENT_ID;


--RIGHT JOIN

SELECT 
E.FIRST_NAME||'' ||E.LAST_NAME  NAME,
D.DEPARTMENT_ID,D.DEPARTMENT_NAME,
E.EMAIL,E.EMPLOYEE_ID
FROM DEPARTMENTS D RIGHT JOIN EMPLOYEES E 
ON E.DEPARTMENT_ID= D.DEPARTMENT_ID;


--FULL OUTER JOIN

SELECT 
E.FIRST_NAME||'' ||E.LAST_NAME  NAME,
D.DEPARTMENT_ID,D.DEPARTMENT_NAME,
E.EMAIL,E.EMPLOYEE_ID
FROM DEPARTMENTS D FULL OUTER JOIN EMPLOYEES E 
ON E.DEPARTMENT_ID= D.DEPARTMENT_ID;

