select *from DEPARTMENTS;
SELECT *FROM EMPLOYEES;
SELECT *FROM locations;
SELECT COUNT(*) FROM JOBS;
SELECT *FROM JOBS;



SELECT *
FROM LOCATIONS 
WHERE POSTAL_CODE='98199';

SELECT DEPARTMENT_NAME FROM DEPARTMENTS  JOIN LOCATIONS  ON DEPARTMENTS.LOCATION_ID=LOCATIONS.LOCATION_ID WHERE LOCATIONS.POSTAL_CODE='98199';


SELECT DEPARTMENT_NAME FROM DEPARTMENTS  JOIN LOCATIONS  ON DEPARTMENTS.LOCATION_ID=LOCATIONS.LOCATION_ID WHERE LOCATIONS.POSTAL_CODE !='98199';


SELECT *FROM EMPLOYEES WHERE SALARY >'10000';

SELECT *FROM EMPLOYEES WHERE MANAGER_ID IS NULL;

select *from EMPLOYEES ORDER BY employees.first_name,employees.last_name;



select *from jobs WHERE JOB_TITLE IN ('Finance Manager','Accountant','Shipping Clerk');



select FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,JOB_ID  from employees WHERE JOB_ID LIKE  'AD%';

INSERT INTO  JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY)
VALUES 
(
'20'
,'JAYA',
1000
,10000);

UPDATE JOBS SET MIN_SALARY=4000 WHERE JOB_ID='20';
SELECT *FROM JOBS WHERE JOB_ID='20';

DELETE FROM JOBS WHERE JOB_ID='20';

COMMIT;
ROLLBACK;

CREATE TABLE JOBS_BACKUP AS (SELECT *FROM JOBS);

SELECT *FROM JOBS_BACKUP;

TRUNCATE TABLE JOBS_BACKUP;

INSERT INTO JOBS_BACKUP SELECT *FROM JOBS;
 
----INNER JOIN
SELECT E.EMPLOYEE_ID,E.FIRST_NAME||'' ||E.LAST_NAME  NAME,E.EMAIL,L.CITY 
FROM EMPLOYEES E INNER JOIN DEPARTMENTS D
ON  E.DEPARTMENT_ID=D.DEPARTMENT_ID
INNER JOIN LOCATIONS L
ON D.LOCATION_ID=L.LOCATION_ID ;