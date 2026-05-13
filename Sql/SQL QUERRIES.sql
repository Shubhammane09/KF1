
-----  1) Write a query to retrieve the first name, last name, and salary of all employees.-----

SELECT FIRST_NAME, LAST_NAME,SALARY FROM HR.EMPLOYEES


------- 2) How many employees were hired in the year 2005?

SELECT * FROM HR.EMPLOYEES
WHERE HIRE_DATE LIKE  '%05';


--- 3) Create a query to display the average salary of employees in each department. -----

SELECT JOB_ID, AVG(SALARY) FROM HR.EMPLOYEES
GROUP BY JOB_ID;
 

-------- 4) Retrieve the names and hire dates of employees who were hired BEFORE '01-JAN-2023'.---

SELECT FIRST_NAME,LAST_NAME,HIRE_DATE FROM HR.EMPLOYEES
WHERE HIRE_DATE<'01-JAN-23';


-------- 5) List the employees who have a commission percentage LESS than 0.3%.------

SELECT * FROM HR.EMPLOYEES 
WHERE COMMISSION_PCT <0.3
ORDER BY COMMISSION_PCT DESC;


-------- 6) Write a query to find the employee with the highest salary.------------

SELECT EMPLOYEE_ID, MAX(SALARY) AS MAX_SALARY FROM HR.EMPLOYEES
GROUP BY EMPLOYEE_ID;

--------- 7) Display the number of employees in each job title.--------------
  SELECT JOB_ID,COUNT(EMPLOYEE_ID) FROM HR.EMPLOYEES
  GROUP BY JOB_ID;

---------- 8) Retrieve the first name, last name, and department name of all employees along with their managers names.----



---- 9) List employees who have a manager but are not assigned to any department.---------



----------10) SELECT DISTINCT HIRE_DATE FROM HR.EMPLOYEES--------------
 
SELECT DISTINCT HIRE_DATE FROM HR.EMPLOYEES;



--------- 11) Write a query to find the top 5 highest-paid employees.----------
  


------------/ 12) *Retrieve all columns from the "employees" table. ----------------

SELECT * FROM HR.EMPLOYEES



-----------  13)   Retrieve distinct job titles from the "employees" table.----------

SELECT DISTINCT JOB_ID FROM HR.EMPLOYEES


--------------14) Calculate the total number of employees in the "employees" table.--------
 
SELECT *  FROM HR.EMPLOYEES




----------15) Retrieve employees whose salary is greater than 5000.--------------

SELECT * FROM HR.EMPLOYEES
WHERE SALARY > 5000;

-----------16) Retrieve employees who have "Manager" in their job title.--------------

SELECT * FROM HR.EMPLOYEES
WHERE JOB_ID LIKE '%MGR';


----------------QUESTION -----------



  

---------- 17) COUNT TOTAL NO OF MANAGERS IN ORGANISATION --------

SELECT COUNT (MANAGER_ID) FROM HR.EMPLOYEES;


----------- 18) COUNT TOTAL NO OF EMPLOYEES BY JOB_ID ----

SELECT  COUNT(JOB_ID) FROM HR.EMPLOYEES;
 
------------ 19) Calculate the average salary of all employees. ---------------

SELECT AVG(SALARY) FROM HR.EMPLOYEES

------------ 20) Retrieve employees whose last names start with the letter "S".------
SELECT * FROM HR.EMPLOYEES
WHERE LAST_NAME LIKE '%s';

--------------- 21) Calculate the total salary for all employees.----------

 SELECT SUM(SALARY) FROM HR.EMPLOYEES;

---------------- 22) Retrieve employees who were hired in the year 2002.-----------
 SELECT * FROM HR.EMPLOYEES
 WHERE HIRE_DATE LIKE '%02';


---------   23) Calculate the highest salary in the "employees" table.------------------
SELECT MAX(SALARY) FROM HR.EMPLOYEES;

------------- 24) Retrieve employees whose commission percentage is not null.----------
SELECT * FROM HR.EMPLOYEES
WHERE COMMISSION_PCT IS NOT NULL;

------------ 25) Calculate the lowest salary in the "employees" table. ------------

SELECT MIN(SALARY) FROM HR.EMPLOYEES;

----------- 26) Retrieve employees whose salaries are between 3000 and 6000.-----------
 SELECT * FROM HR.EMPLOYEES
 WHERE SALARY BETWEEN 3000 AND 6000;


--------------- 27) Calculate the total number of employees for each job title.-----------

SELECT COUNT(EMPLOYEE_ID),JOB_ID FROM HR.EMPLOYEES
GROUP BY JOB_ID;

---------- *************28 )Retrieve employees who were hired in the last 6 months. -----------------

SELECT * FROM HR.EMPLOYEES  
WHERE HIRE_DATE > '01-OCT-2007';
 

-----------------29)Calculate the average salary for each job title.--------------

SELECT AVG (SALARY),JOB_ID FROM HR.EMPLOYEES
GROUP BY JOB_ID;





---------- FOR CROSS CHECK USE BELOW QUERY -----------




----------- 30) Retrieve employees whose job titles are not in a predefined list.------------

SELECT * FROM HR.EMPLOYEES
WHERE JOB_ID IS NOT NULL;

--------- IMP QUESTION QUERY ----------------



--------- IMP QUESTION RETRIVE EMPLOYEES WHO DOES NOT HAVE DEPARTMENT SPECIFIED ----------------

----------- ANSWER BY USING NORMAL QUERY---------------------

------------SAME ANSWER USING JOIN CONCEPT

------------ CROSS-CHECK ----------------


------------ 31) Calculate the sum of salaries for employees in each department.------------

SELECT SUM(SALARY),JOB_ID FROM HR.EMPLOYEES
GROUP BY JOB_ID;

---------------- 32) Retrieve employees whose COMMISSIONS (IN RS.) are within 10% of their SALARIES.-----

SELECT FIRST_NAME, LAST_NAME,(NVL(COMMISSION_PCT,0)* SALARY)/ 100 AS COMMISSION FROM HR.EMPLOYEES
WHERE  (NVL(COMMISSION_PCT,0)* SALARY)/ 100 > 10;

------------------- 33)RETRIVE ALL INFORMATION WHO ARE WORKING IN IT AND SALES DEPARTMENT --------

SELECT * FROM HR.EMPLOYEES 
WHERE JOB_ID='IT_PROG' OR JOB_ID='SA_MAN';


SELECT * FROM HR.EMPLOYEES
WHERE JOB_ID IN ('IT_PROG','SA_MAN')




----------34) Calculate the average salary for employees in each department.--------------

SELECT AVG(SALARY),JOB_ID FROM HR.EMPLOYEES
GROUP BY JOB_ID;



----------- 35) Retrieve employees who have "IT_PROG" in their job_ID or are in department 50.----

SELECT * FROM HR.EMPLOYEES
WHERE JOB_ID = 'IT_PROG' OR DEPARTMENT_ID =50;

-------36) Calculate the total salary for employees in each department.-----------

SELECT SUM(SALARY),JOB_ID FROM HR.EMPLOYEES
GROUP BY  JOB_ID;

-------- WHAT ABOUT EMPLOYEE WHO DON'T HAVE ANY DEPARTMENT ASSIGN

SELECT * FROM HR.EMPLOYEES
WHERE DEPARTMENT_ID IS NULL;

-------- 37) Retrieve employees whose salaries are the same as their manager's salary.

 

 
------------IMP QUESTION --------------------------


--------- 38) Calculate the number of employees for each manager. ------------------

SELECT COUNT(EMPLOYEE_ID),MANAGER_ID FROM HR.EMPLOYEES
GROUP BY MANAGER_ID;

-------------------

select * from hr.regions;
select * from hr.countries;
 select * from hr.locations;
 select * from hr.departments;
 select * from hr.jobs;
 select * from hr.employees;

-------- ******  -----

--39)Retrieve employees who have a "C" in their last names and "E" in their first names.---

SELECT * FROM HR.EMPLOYEES
WHERE LAST_NAME LIKE '%c%' AND FIRST_NAME LIKE '%e%';



------ MAY THIS IS USEFUL FOR THIS  39) QUESTION------->  SELECT INSTR('Brain-Woraks',1) FROM DUAL;--------




---------- 40) Calculate the highest salary for each department.----------

SELECT MAX(SALARY),DEPARTMENT_ID FROM HR.EMPLOYEES
GROUP BY DEPARTMENT_ID;

------- ******** 41) Retrieve employees whose hire date is not the first day of the month.----------

SELECT * FROM HR.EMPLOYEES
WHERE HIRE_DATE NOT LIKE '01%';
 
-------- 42) Calculate the lowest salary for each department.--------------

SELECT MIN(SALARY),DEPARTMENT_ID FROM HR.EMPLOYEES
GROUP BY DEPARTMENT_ID;

--------- **** 43) Retrieve employees whose salaries are higher than their department's average salary.--------

SELECT EMPLOYEE_ID, DEPARTMENT_ID,MAX (SALARY), AVG (SALARY) FROM HR.EMPLOYEES
GROUP BY EMPLOYEE_ID, DEPARTMENT_ID;

/*-------- 44) RETRIVE STATUS IF EMPLOYEES SALARY IS > THAN AVERAGE SALARY OF ALL THE EMPLOYEES
              THEN WRITE YES IN FRONT OF EMPLOYEE 
              ELSE WRITE NO AS STATUS */






 --------- **** NOT SOLVED ****  45) Calculate the total salary for each manager.------------
 



 
----------- 46) Retrieve employees who do not have managers. ----------

SELECT * FROM HR.EMPLOYEES
WHERE MANAGER_ID IS NULL;

---------- 47) Calculate the average salary for each manager.---------------

SELECT AVG(SALARY),MANAGER_ID FROM HR.EMPLOYEES
GROUP BY MANAGER_ID;

---------******** 48) Retrieve employees who earn the highest salary in their department.------------

SELECT MAX (SALARY)

------------ 49) Calculate the sum of salaries for each manager.----------

select sum (salary), MANAGER_ID FROM HR.EMPLOYEES
GROUP BY MANAGER_ID;


--------- confusion in question 50)--------------------------
----------50) Retrieve employees who have at least one of their job titles in uppercase.-------




--------------- 51) Calculate the number of employees for each job title and department combination.-----

SELECT COUNT(EMPLOYEE_ID), JOB_ID,DEPARTMENT_ID FROM HR.EMPLOYEES
GROUP BY DEPARTMENT_ID, JOB_ID;


----------- 52) Retrieve employees who do not earn any commission.----

SELECT * FROM HR.EMPLOYEES 
WHERE COMMISSION_PCT IS NULL;

--- 53) Calculate the average salary for employees in each job title and department combination.---

SELECT AVG (SALARY),JOB_ID, DEPARTMENT_ID FROM HR.EMPLOYEES
GROUP BY JOB_ID, DEPARTMENT_ID
ORDER BY DEPARTMENT_ID ;
  
--------- OR ---------


 ------ 54) Retrieve employees whose hire dates fall on weekends (Saturday or Sunday).


 
--------- 55) Calculate the total salary for employees in each job title and department combination.-----

SELECT SUM(SALARY),JOB_ID,DEPARTMENT_ID FROM HR.EMPLOYEES
GROUP BY JOB_ID,DEPARTMENT_ID ;

--56)Retrieve employees whose salaries are greater than the average salary of their job title.



--57)Calculate the highest salary for employees in each job title and department combination.

SELECT MAX(SALARY),JOB_ID,DEPARTMENT_ID FROM HR.EMPLOYEES
GROUP BY JOB_ID, DEPARTMENT_ID;


--58)Retrieve employees whose salaries are below the overall average salary.



--59)Calculate the lowest salary for employees in each job title and department combination.

SELECT MIN(SALARY), JOB_ID, DEPARTMENT_ID FROM HR.EMPLOYEES
GROUP BY JOB_ID,DEPARTMENT_ID;


--60)Retrieve employees whose job titles contain the word "Manager".




--61)Calculate the sum of salaries for employees in each job title and department combination.





--62)Retrieve employees who have been with the company for at least 10 years.





--63)Calculate the average salary for employees who have the letter "A" in their last names.




--64)Retrieve employees whose salaries are the second-highest in their department.







--65)Calculate the total salary for employees who were hired in odd-numbered years.





--  66) EXTRACT MONTH FROM HIRE_DATE

SELECT FIRST_NAME, LAST_NAME, EXTRACT(MONTH FROM HIRE_DATE) AS HIRE_MONTH FROM HR.EMPLOYEES


-- 67) EXTRACT DAY FROM HIRE_DAY (USE EXTRACT OPERATOR )

SELECT FIRST_NAME, LAST_NAME, EXTRACT (DAY FROM HIRE_DATE) AS HIRE_DAY FROM HR.EMPLOYEES;


-- 68) EXTRACT YEAR  OF WEEK FROM HIRE_DATE 


SELECT FIRST_NAME, LAST_NAME, EXTRACT (YEAR FROM HIRE_DATE) AS HIRE_YEAR FROM HR.EMPLOYEES


/*  69)RETRIVE THE DATA OF  OF THE EMPLOYEES FIRST NAME , LAST NAME ,JOB_ID AND MANAGERS
 WHOSE ASSIGNED TO THE EACH EMPLOYEE CONCATE MANAGER NAMES USING || , AND USING SELF JOIN . */



-- 70) FIND THE INFORMTION OF TH EMPLOYEE WHO HAVE SALARY GRATER THAN 10000

SELECT * FROM HR.EMPLOYEES
WHERE SALARY > 10000;


-- 71) FIND THE INFORMATION ABOUT THE EMPLOYEE WHO HAVE SALARY GREATER THAN 5000 AND MANAGER_ID  100

SELECT * FROM HR.EMPLOYEES
WHERE SALARY > 5000 AND MANAGER_ID=100;



--72 ) FIND THE INFORMATION ABOUT THE EMPLOYEES WHO IS JOB_ID IS IT_PROG OR THE SALARY IS LESS THAN 25000

SELECT * FROM HR.EMPLOYEES 
WHERE JOB_ID = 'IT_PROG'
 OR SALARY < 25000;


/*   73) LAY THE FIRST_NAME , LAST_NAME, EMPLOYEE_ID , SALARY , PHONE_NUMBER , HIRE_DATE AND 
 ORDER BY SALARY*/
 
SELECT FIRST_NAME, LAST_NAME, EMPLOYEE_ID, SALARY, CONTACT_NUMBER, HIRE_DATE FROM HR.EMPLOYEES
ORDER BY SALARY;
 


 /*   74)  DISPLAY THE INFORMATION OF EMPLOYEE WHICH HAVE FIRST_NAME TJ, KI,GUY, DONALD */
 

SELECT * FROM HR.EMPLOYEES 
WHERE FIRST_NAME IN ('TJ', 'Ki', 'Guy', 'Donald');



-- 75)  DISPLAY THE INFORMATION OF THE EMPLOYEES EXECEPT IT_PTOG , PU_CLERK , ST_CLERK,

SELECT * FROM HR.EMPLOYEES
WHERE JOB_ID IN ('IT_PROG', 'PU_CLERK', 'ST_CLERK');



-- 77) DISPALY ALL THE INFORMATION OF THE EMPLOYEES WHICH THE COMMISSION IS NOT GIVEN 

SELECT * FROM HR.EMPLOYEES 
WHERE COMMISSION_PCT IS NULL;


-- 78) DISPLAY ALL THE INFORMATION OF THE EMPLOYEES WHICH THE COMMISSION IS GIVEN 

SELECT * FROM HR.EMPLOYEES 
WHERE COMMISSION_PCT IS NOT NULL;


-- 79)   DISPALY THE THE INFORMATION  OF EMPLOYEES WHICH HAVE SAVE SALARY DETWEEN 15000 AND 18000
 
SELECT * FROM HR.EMPLOYEES
WHERE SALARY BETWEEN 15000 AND 18000;
 

 --80)   DISPAY THE EMPLOYEE DETAILS EHO'S NAME NOT START WITH D
 
SELECT * FROM HR.EMPLOYEES
WHERE FIRST_NAME NOT LIKE 'D%';

 
 -- 81) DISPLAY THE INFORMATION OF THE EMPLOYEES WHO'S LAST_NAME NOT START WITH S 
 

SELECT * FROM HR.EMPLOYEES
WHERE LAST_NAME NOT LIKE 'S%';


-- 82) SHOW THE INFORMATION OF THE EMPLOYEES WHICH HAVE LETTER R IN THEIR FIRST_NAME 

SELECT * FROM HR.EMPLOYEES 
WHERE FIRST_NAME LIKE '%r%';


--83)  THE DETAILS OF THE EMPLOYEES WHICH HAVE FIRST_NAME  4TH LATTER P 

SELECT * FROM HR.EMPLOYEES
WHERE FIRST_NAME LIKE '___p%' ;


-- 84)  SELECT THE EMPLOYEES WHO'S PHONE NUMBER  START WITH  650


SELECT * FROM HR.EMPLOYEES
WHERE CONTACT_NUMBER LIKE '650%' ;

--85) ADD THE COMMISSION PCT AND SALARY 

SELECT FIRST_NAME, LAST_NAME, SALARY, COMMISSION_PCT, (NVL ( COMMISSION_PCT, 0) + SALARY) AS MONTHLY_SALARY FROM HR.EMPLOYEES


-- 86)  DISPLAY  TOTAL COMMISSION GIVEN TO THE EACH EMPLOYEE IN SALARY


 
-- 87) DISPLAY TOTAL ANNUAL SALARY AND ADD GIVEN PERCENTAGE TO THE EACH  EMPLOYEE 



-- 88) Select all records where the value of the job title column starts with the letter "A".

SELECT * FROM HR.EMPLOYEES
WHERE JOB_ID LIKE 'A%';


 -- 89) Select all records where the value of the job title column ends with the letter "T".
 

SELECT * FROM HR.EMPLOYEES
WHERE JOB_ID LIKE '%T';


-- 90) RETRIVE THE SALARY OF THE EMPLOYEES WHOSE SALARY IS EQUAL TO 10000

SELECT *  FROM HR.EMPLOYEES
WHERE SALARY = 10000;

--91)  ORDER BY FIRST_NAME ASCENDING 

SELECT FIRST_NAME FROM HR.EMPLOYEES
ORDER BY FIRST_NAME;


--92) ORDER BY  LAST NAME DESCENDING 

SELECT LAST_NAME FROM HR.EMPLOYEES
ORDER BY LAST_NAME DESC;

--93)SELECT MULTIPLE COLUMNS FROMM TABLE 

SELECT * FROM HR.EMPLOYEES;

--94)CONCAT  FIRST NAME AND LAST_NAME 

SELECT CONCAT (FIRST_NAME, LAST_NAME) FROM HR.EMPLOYEES;
--
SELECT FIRST_NAME || LAST_NAME FROM HR.EMPLOYEES;
-- 
SELECT FIRST_NAME ||' '|| LAST_NAME FROM HR.EMPLOYEES;


-- 95)RETRIVE THE EMPLOYEES DATA WHOSE SALARY IS BETWEEN 5000 AND 25000

SELECT * FROM HR.EMPLOYEES
WHERE SALARY BETWEEN 5000 AND 25000;


--96)   GIVE ROWNUM TO THE FIRST NAME 

 SELECT ROWNUM, FIRST_NAME FROM HR.EMPLOYEES

-- 97)  RETRIVE THE LAST NAME OF THE EMPPLOYEES 

SELECT LAST_NAME FROM HR.EMPLOYEES


-- 98)  RETRIVE THE DATA OF THE EMPLOYEES WHOSE LAST NAME IS KING , POPP,ABEL

SELECT * FROM HR.EMPLOYEES
WHERE LAST_NAME IN ('King','Popp', 'Abel');


-- 99)  RETRVE THE DATA OF THE EMPLOYEES WHO IS DEPARTMENT 80,90,100 

SELECT * FROM HR.EMPLOYEES
WHERE DEPARTMENT_ID IN ('80','90','100');

--100)  RETRIVE THE INFO OF THE EMPLOYEES WHOSE COMMISSION_PCT IS NOT NULL  

SELECT * FROM HR.EMPLOYEES
WHERE COMMISSION_PCT IS NOT NULL;

-- 101)  RETRIVE THE INFORMATON OF THE EMPLOYEES WHOSE JOB ID IS SALESMEN AND FIRST NAME IS JOHN 
  
SELECT * FROM HR.EMPLOYEES
WHERE FIRST_NAME = 'John' AND JOB_ID = 'SA_MAN';

-- 102)  RETRIVE THE INFORMATION OF THE EMPLOYEES WHOSE EMPLOYEE ID IS 80 NAD SALARY IS GREater than 12000



-- 103)   fetch the data of the employees whose SALARY IS 9000 AND COMMISSION_PCT IS NOT NULL 

  

--104)   RETRIVE THE DSTS OF THE EMPLOYEES WHOSE MANAGER ID IS GRERATER THAN 100 AND HIRE DATE IS BEFORE 01 Jan 2006 


-- 105)   RETRIVE THE DATA WHOSE MANAGER ID IS GRATER THAN 100 OR  LAST NAME IS KING  




-- 106)   RETRIVE THE DATA OF THE EMPLOYEES WHOSE SALARY OS GREATER THAN OR EQUAL TO THE 9000 OR JOB ID IS IT PROG 



-- 107)   RETRIVE THE INFORMATION OF THE EMPLOYEE EHOSE NOT IN IT PROG AND FI MANAGER AND AD VP 


-- 108)   RETRIVE THE INFORMATION OF THE EMPLOYEES WHOSE SALARY NOT IN 9000,7800,1100
 

--108)   RETRIVE THE INFORMATION OF THE EMPLOYEES WHOSE SALARY IS NOT EQUAL TO 12000


-- 109)   RETRIVE THE INFORMATION OF THE EMPLOYEE WHOSE NOT IN IT PROG 





-- 110)   CALCULATE THE TOTAL OF THE SALARY OF EMPLOYEES AND GROUP IT BY MANAGER ID 



--  111)  RETRIVE THE TOTSL COUNT OF THE THE EMPLOYEES ABD GROUP IT BY JOB ID 





  -- 112 ) ADD COLUMN TOTAL AND ITS DATATYPE SHOULD BE NUMBER TO THE HR.EMPLOYEES 




-- 113)CALCULATE AVG SALARY , TOTAL COUNT OF TH EMPLOYEES WHOSE EMPLOYEE_ID IS 101,103 ,104  AND ORDER EMPLOYEE ID ASC 




---114)   DELETE COLUMN TOTAL FROM HR. MEPLOYEES 


-- 115 )  RETRIVE FIRST NAME LAST NAME EMPLOYEE ID , AND ORDER THE DATA  DESCENDING ORDER ON THE BASIS OF THE EMPLOYEE _ID 

 
 
--116)   RETRIVE FIRST_NAME , LAST NAME , JOB_ID , NAMAGER ID FRON EMPLOYEES TABLE 



 
--117)   RETRIVE THE DATA OF THE EMPLOYEES WHOSE JOB_ID IS IT_PROG  

 



-- 118 ) MODIFY COLUMN  TOTAL COLUMN DATATYPE FROM INT TO NUMBER 

 
  -- 119) DISTINCT FIRST NAME AND LAST NAME FROM  EMPLOYEE TABLE 



 -- 120)  RETRIVE THE DAT OF THE EMPLOYEES RHOSE SALARY IS BETWEEN 10000 AND 20000

-- 121) RETRIVE THE DATA OF THE EMPLOYEES WHOSE SALARY IS BETEEEN 10000 AND 15000

 


-- 120) RETRIVE THE ALL THE DATA OF THE EMPLOYEES USING ALIAS NAME 


-- 121)  RETRIVE THE LAST DATA INSERTED INTO THE EMPLOYEE TABLE 
-- where represents which column data we require and order by represents the last inserted data ,


-- 122) RETRIVE THE LAST NAME , FIRST NAME , EMPLOYEE ID , SALARY AND ANNUAL SALARY OF THE EACH EMPLOYEE 



-- 123)  RETRIVE THE EMPLOYEE ID ,COMMISSION PCT SALARY AND SALARY + COMMISSION PCT AS TOTAL 




-- 124)  calculate the commission pct into RS format 



--125)  CALCULATE THE TOTAL SALARY GIVEN TO THE ALL SALARY GIVEN TO THE EMPLOYEES 



-- 126)  rename commissionn_pct to the commission_percentage


-- 127)   Retrieve the full name (concatenation of first name and last name) of the employeE






-- 128)    Retrieve the department name and the average salary of employees in each department.







-- 129)   Retrieve the first name, last name, and phone number of employees whose phone numbers contain '555' but not '123'.


-- 130)    Retrieve the first name, last name, and salary of employees whose salary is not between 5000 and 10000.

-- 131)    Retrieve the first name, last name, and salary of employees who work in the same department as employees with job titles 'Programmer'.

-- 132)   Retrieve the first name, last name, and email of employees whose email addresses do not contain 'gmail'.



-- 133)    Retrieve the first name, last name, and department name of employees who do not work in departments located in cities 'Seattle' or 'Denver'.

SELECT E. FIRST_NAME , E.LAST_NAME ,D.DEPARTMENT_NAME,D.LOCATION_ID,L.CITY   
FROM HR.EMPLOYEES E
LEFT JOIN HR.DEPARTMENTS D 
ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
LEFT JOIN HR.LOCATIONS L 
ON D.LOCATION_ID = L.LOCATION_ID  
WHERE CITY NOT IN ('Seattle','denver')
SELECT * FROM HR.LOCATIONS
SELECT * FROM HR.DEPARTMENTS

--   134)   Retrieve the first name, last name, and salary of employees who work in the same department as employee ID 102.

-- 135)   Retrieve the department name, average salary, and total number of employees in each department.




-- 137)   (Using Subquery with EXISTS and NOT EXISTS:)Retrieve the first name, last name, and job title of employees who work in departments that have at least one manager and at least one employee.





--138)     Retrieve the first name, last name, and salary of employees who have the same manager as employee ID 101.(using self join )




-- 138)   Retrieve the department name and the total salary for each department.




-- 139 )   Retrieve the department name and the number of employees in each department.




-- 140)   Retrieve the department ID and the number of employees in each department, but only for departments with more than 5 employees.( use HAVING CLAUSE )








-- 141)   Retrieve the department ID and the maximum salary for departments where the maximum salary is greater than 8000.(USE GROUP BY )








                                                            -- GROUP BY AND HAVING CLAUSE --

-- 142)   Retrieve the department ID and the highest commission percentage among employees in each department.



-- 143)    Retrieve the manager ID and the sum of salary and commission of all employees managed by each manager.



--144)    Retrieve the department ID, job title, and the minimum salary among employees in each department and job title combination.




--145)   Retrieve the job title and the count of employees in each job title category.
 



                                       -- DUAL CHARTS PROBLEM S(SOLVE IN DUAL CHART )

--146)   Addition and Subtraction: Retrieve the result of 5 + 8 - 3.


--147)    Multiplication and Division:Retrieve the result of 10 * 4 / 2


--148)   Complex Expression:Retrieve the result of (6 + 9) * 2 - 7.





--149)    Parentheses:Retrieve the result of 20 / (4 + 2).



--150)    Mix of Operators:Retrieve the result of 3 * 5 + 10 / 2.



--151)   Using BODMAS in SQL Select Statement:Retrieve the result of 8 + 2 * 4.
 



--152)    Using Multiple Parentheses:  Retrieve the result of (10 / (2 + 1)) + ((8 - 3) * 2).





---153)   Combining Expressions:  Retrieve the result of 15 + 6 / 3 - (4 * 2).



-- 154)    FIND PRESENT DATE AND TIME BY USING DUAL 

 





