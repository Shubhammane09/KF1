-- ============================================================================
-- QUESTION 1: Retrieve first name, last name, and salary of all employees
-- ============================================================================
SELECT FIRST_NAME, LAST_NAME, SALARY 
FROM HR.EMPLOYEES;


-- ============================================================================
-- QUESTION 2: How many employees were hired in the year 2005?
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES
WHERE HIRE_DATE LIKE '%05';


-- ============================================================================
-- QUESTION 3: Display average salary of employees in each department
-- ============================================================================
SELECT JOB_ID, AVG(SALARY) AS avg_salary 
FROM HR.EMPLOYEES
GROUP BY JOB_ID;


-- ============================================================================
-- QUESTION 4: Retrieve names and hire dates before 01-JAN-2023
-- ============================================================================
SELECT FIRST_NAME, LAST_NAME, HIRE_DATE 
FROM HR.EMPLOYEES
WHERE HIRE_DATE < '01-JAN-23';


-- ============================================================================
-- QUESTION 5: List employees with commission percentage LESS than 0.3%
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES 
WHERE COMMISSION_PCT < 0.3
ORDER BY COMMISSION_PCT DESC;


-- ============================================================================
-- QUESTION 6: Find the employee with the highest salary
-- ============================================================================
SELECT EMPLOYEE_ID, MAX(SALARY) AS max_salary 
FROM HR.EMPLOYEES
GROUP BY EMPLOYEE_ID;


-- ============================================================================
-- QUESTION 7: Display the number of employees in each job title
-- ============================================================================
SELECT JOB_ID, COUNT(EMPLOYEE_ID) AS employee_count 
FROM HR.EMPLOYEES
GROUP BY JOB_ID;


-- ============================================================================
-- QUESTION 8: Retrieve first name, last name, department name and manager names
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 9: List employees with manager but no department assigned
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 10: Retrieve distinct hire dates
-- ============================================================================
SELECT DISTINCT HIRE_DATE 
FROM HR.EMPLOYEES;


-- ============================================================================
-- QUESTION 11: Find top 5 highest-paid employees
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 12: Retrieve all columns from employees table
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES;


-- ============================================================================
-- QUESTION 13: Retrieve distinct job titles from employees table
-- ============================================================================
SELECT DISTINCT JOB_ID 
FROM HR.EMPLOYEES;


-- ============================================================================
-- QUESTION 14: Calculate the total number of employees in the employees table
-- ============================================================================
SELECT COUNT(EMPLOYEE_ID) AS total_employees 
FROM HR.EMPLOYEES;


-- ============================================================================
-- QUESTION 15: Retrieve employees whose salary is greater than 5000
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES
WHERE SALARY > 5000;


-- ============================================================================
-- QUESTION 16: Retrieve employees with "Manager" in their job title
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES
WHERE JOB_ID LIKE '%MGR';


-- ============================================================================
-- QUESTION 17: Count total number of managers in organization
-- ============================================================================
SELECT COUNT(MANAGER_ID) AS total_managers 
FROM HR.EMPLOYEES;


-- ============================================================================
-- QUESTION 18: Count total number of employees by job ID
-- ============================================================================
SELECT JOB_ID, COUNT(JOB_ID) AS employee_count 
FROM HR.EMPLOYEES
GROUP BY JOB_ID;


-- ============================================================================
-- QUESTION 19: Calculate the average salary of all employees
-- ============================================================================
SELECT AVG(SALARY) AS average_salary 
FROM HR.EMPLOYEES;


-- ============================================================================
-- QUESTION 20: Retrieve employees whose last names start with the letter "S"
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES
WHERE LAST_NAME LIKE 'S%';


-- ============================================================================
-- QUESTION 21: Calculate the total salary for all employees
-- ============================================================================
SELECT SUM(SALARY) AS total_salary 
FROM HR.EMPLOYEES;


-- ============================================================================
-- QUESTION 22: Retrieve employees who were hired in the year 2002
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES
WHERE HIRE_DATE LIKE '%02';


-- ============================================================================
-- QUESTION 23: Calculate the highest salary in the employees table
-- ============================================================================
SELECT MAX(SALARY) AS highest_salary 
FROM HR.EMPLOYEES;


-- ============================================================================
-- QUESTION 24: Retrieve employees with non-null commission percentage
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES
WHERE COMMISSION_PCT IS NOT NULL;


-- ============================================================================
-- QUESTION 25: Calculate the lowest salary in the employees table
-- ============================================================================
SELECT MIN(SALARY) AS lowest_salary 
FROM HR.EMPLOYEES;


-- ============================================================================
-- QUESTION 26: Retrieve employees with salaries between 3000 and 6000
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES
WHERE SALARY BETWEEN 3000 AND 6000;


-- ============================================================================
-- QUESTION 27: Calculate total number of employees for each job title
-- ============================================================================
SELECT JOB_ID, COUNT(EMPLOYEE_ID) AS employee_count 
FROM HR.EMPLOYEES
GROUP BY JOB_ID;


-- ============================================================================
-- QUESTION 28: Retrieve employees hired in the last 6 months
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES
WHERE HIRE_DATE > '01-OCT-2007';


-- ============================================================================
-- QUESTION 29: Calculate the average salary for each job title
-- ============================================================================
SELECT JOB_ID, AVG(SALARY) AS average_salary 
FROM HR.EMPLOYEES
GROUP BY JOB_ID;


-- ============================================================================
-- QUESTION 30: Retrieve employees whose job titles are not in predefined list
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES
WHERE JOB_ID IS NOT NULL;


-- ============================================================================
-- QUESTION 31: Calculate sum of salaries for each department
-- ============================================================================
SELECT JOB_ID, SUM(SALARY) AS total_salary 
FROM HR.EMPLOYEES
GROUP BY JOB_ID;


-- ============================================================================
-- QUESTION 32: Retrieve employees whose commissions are within 10% of salary
-- ============================================================================
SELECT FIRST_NAME, LAST_NAME, 
       (NVL(COMMISSION_PCT, 0) * SALARY) / 100 AS commission 
FROM HR.EMPLOYEES
WHERE (NVL(COMMISSION_PCT, 0) * SALARY) / 100 > 10;


-- ============================================================================
-- QUESTION 33: Retrieve all info for IT and Sales department employees
-- ============================================================================
-- Method 1: Using OR
SELECT * 
FROM HR.EMPLOYEES 
WHERE JOB_ID = 'IT_PROG' OR JOB_ID = 'SA_MAN';

-- Method 2: Using IN
SELECT * 
FROM HR.EMPLOYEES
WHERE JOB_ID IN ('IT_PROG', 'SA_MAN');


-- ============================================================================
-- QUESTION 34: Calculate average salary for each department
-- ============================================================================
SELECT JOB_ID, AVG(SALARY) AS average_salary 
FROM HR.EMPLOYEES
GROUP BY JOB_ID;


-- ============================================================================
-- QUESTION 35: Employees with IT_PROG or in department 50
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES
WHERE JOB_ID = 'IT_PROG' OR DEPARTMENT_ID = 50;


-- ============================================================================
-- QUESTION 36: Calculate total salary for each department
-- ============================================================================
SELECT JOB_ID, SUM(SALARY) AS total_salary 
FROM HR.EMPLOYEES
GROUP BY JOB_ID;


-- ============================================================================
-- QUESTION 36b: Employees without department assigned
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES
WHERE DEPARTMENT_ID IS NULL;


-- ============================================================================
-- QUESTION 37: Employees whose salaries match their manager's salary
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 38: Calculate number of employees for each manager
-- ============================================================================
SELECT MANAGER_ID, COUNT(EMPLOYEE_ID) AS employee_count 
FROM HR.EMPLOYEES
GROUP BY MANAGER_ID;


-- ============================================================================
-- QUESTION 39: Employees with "C" in last name and "E" in first name
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES
WHERE LAST_NAME LIKE '%c%' AND FIRST_NAME LIKE '%e%';


-- ============================================================================
-- QUESTION 40: Calculate highest salary for each department
-- ============================================================================
SELECT DEPARTMENT_ID, MAX(SALARY) AS highest_salary 
FROM HR.EMPLOYEES
GROUP BY DEPARTMENT_ID;


-- ============================================================================
-- QUESTION 41: Employees whose hire date is not the first day of month
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES
WHERE HIRE_DATE NOT LIKE '01%';


-- ============================================================================
-- QUESTION 42: Calculate lowest salary for each department
-- ============================================================================
SELECT DEPARTMENT_ID, MIN(SALARY) AS lowest_salary 
FROM HR.EMPLOYEES
GROUP BY DEPARTMENT_ID;


-- ============================================================================
-- QUESTION 43: Employees with salary higher than department average
-- ============================================================================
SELECT EMPLOYEE_ID, DEPARTMENT_ID, MAX(SALARY) AS max_salary, 
       AVG(SALARY) AS avg_salary 
FROM HR.EMPLOYEES
GROUP BY EMPLOYEE_ID, DEPARTMENT_ID;


-- ============================================================================
-- QUESTION 44: Mark employee salary status vs average
-- ============================================================================
/*
Retrieve status if employee salary > average salary of all employees
THEN write YES otherwise write NO as status
*/
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 45: Calculate total salary for each manager
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 46: Retrieve employees who do not have managers
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES
WHERE MANAGER_ID IS NULL;


-- ============================================================================
-- QUESTION 47: Calculate average salary for each manager
-- ============================================================================
SELECT MANAGER_ID, AVG(SALARY) AS average_salary 
FROM HR.EMPLOYEES
GROUP BY MANAGER_ID;


-- ============================================================================
-- QUESTION 48: Retrieve employees earning highest salary in department
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 49: Calculate sum of salaries for each manager
-- ============================================================================
SELECT MANAGER_ID, SUM(SALARY) AS total_salary 
FROM HR.EMPLOYEES
GROUP BY MANAGER_ID;


-- ============================================================================
-- QUESTION 50: Employees with job titles in uppercase
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 51: Count employees for each job/department combination
-- ============================================================================
SELECT JOB_ID, DEPARTMENT_ID, COUNT(EMPLOYEE_ID) AS employee_count 
FROM HR.EMPLOYEES
GROUP BY DEPARTMENT_ID, JOB_ID;


-- ============================================================================
-- QUESTION 52: Retrieve employees who do not earn any commission
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES 
WHERE COMMISSION_PCT IS NULL;


-- ============================================================================
-- QUESTION 53: Average salary by job title and department combination
-- ============================================================================
SELECT JOB_ID, DEPARTMENT_ID, AVG(SALARY) AS average_salary 
FROM HR.EMPLOYEES
GROUP BY JOB_ID, DEPARTMENT_ID
ORDER BY DEPARTMENT_ID;


-- ============================================================================
-- QUESTION 54: Employees hired on weekends (Saturday or Sunday)
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 55: Total salary by job title and department combination
-- ============================================================================
SELECT JOB_ID, DEPARTMENT_ID, SUM(SALARY) AS total_salary 
FROM HR.EMPLOYEES
GROUP BY JOB_ID, DEPARTMENT_ID;


-- ============================================================================
-- QUESTION 56: Employees with salary > average of their job title
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 57: Highest salary by job/department combination
-- ============================================================================
SELECT JOB_ID, DEPARTMENT_ID, MAX(SALARY) AS highest_salary 
FROM HR.EMPLOYEES
GROUP BY JOB_ID, DEPARTMENT_ID;


-- ============================================================================
-- QUESTION 58: Employees with salary below overall average
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 59: Lowest salary by job/department combination
-- ============================================================================
SELECT JOB_ID, DEPARTMENT_ID, MIN(SALARY) AS lowest_salary 
FROM HR.EMPLOYEES
GROUP BY JOB_ID, DEPARTMENT_ID;


-- ============================================================================
-- QUESTION 60: Employees whose job titles contain "Manager"
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 61: Sum of salaries by job/department combination
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 62: Employees with company tenure of at least 10 years
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 63: Average salary for employees with "A" in last name
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 64: Employees with second-highest salary in department
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 65: Total salary for employees hired in odd-numbered years
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 66: Extract month from hire date
-- ============================================================================
SELECT FIRST_NAME, LAST_NAME, EXTRACT(MONTH FROM HIRE_DATE) AS hire_month 
FROM HR.EMPLOYEES;


-- ============================================================================
-- QUESTION 67: Extract day from hire date
-- ============================================================================
SELECT FIRST_NAME, LAST_NAME, EXTRACT(DAY FROM HIRE_DATE) AS hire_day 
FROM HR.EMPLOYEES;


-- ============================================================================
-- QUESTION 68: Extract year from hire date
-- ============================================================================
SELECT FIRST_NAME, LAST_NAME, EXTRACT(YEAR FROM HIRE_DATE) AS hire_year 
FROM HR.EMPLOYEES;


-- ============================================================================
-- QUESTION 69: Employee info with manager names using self join
-- ============================================================================
/*
Retrieve first name, last name, job ID and manager names
Concatenate manager names using ||
Use self join
*/
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 70: Find employees with salary greater than 10000
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES
WHERE SALARY > 10000;


-- ============================================================================
-- QUESTION 71: Employees with salary > 5000 and manager ID = 100
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES
WHERE SALARY > 5000 AND MANAGER_ID = 100;


-- ============================================================================
-- QUESTION 72: Employees with IT_PROG job or salary < 25000
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES 
WHERE JOB_ID = 'IT_PROG' OR SALARY < 25000;


-- ============================================================================
-- QUESTION 73: Display employee info ordered by salary
-- ============================================================================
SELECT FIRST_NAME, LAST_NAME, EMPLOYEE_ID, SALARY, CONTACT_NUMBER, HIRE_DATE 
FROM HR.EMPLOYEES
ORDER BY SALARY;


-- ============================================================================
-- QUESTION 74: Display employees with specific first names
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES 
WHERE FIRST_NAME IN ('TJ', 'Ki', 'Guy', 'Donald');


-- ============================================================================
-- QUESTION 75: Employees except specific job IDs
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES
WHERE JOB_ID NOT IN ('IT_PROG', 'PU_CLERK', 'ST_CLERK');


-- ============================================================================
-- QUESTION 77: Employees without commission
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES 
WHERE COMMISSION_PCT IS NULL;


-- ============================================================================
-- QUESTION 78: Employees with commission
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES 
WHERE COMMISSION_PCT IS NOT NULL;


-- ============================================================================
-- QUESTION 79: Employees with salary between 15000 and 18000
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES
WHERE SALARY BETWEEN 15000 AND 18000;


-- ============================================================================
-- QUESTION 80: Employees whose names do not start with "D"
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES
WHERE FIRST_NAME NOT LIKE 'D%';


-- ============================================================================
-- QUESTION 81: Employees whose last name does not start with "S"
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES
WHERE LAST_NAME NOT LIKE 'S%';


-- ============================================================================
-- QUESTION 82: Employees with letter "R" in first name
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES 
WHERE FIRST_NAME LIKE '%r%';


-- ============================================================================
-- QUESTION 83: Employees with "P" as 4th character in first name
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES
WHERE FIRST_NAME LIKE '___p%';


-- ============================================================================
-- QUESTION 84: Employees whose phone number starts with 650
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES
WHERE CONTACT_NUMBER LIKE '650%';


-- ============================================================================
-- QUESTION 85: Commission + Salary calculation
-- ============================================================================
SELECT FIRST_NAME, LAST_NAME, SALARY, COMMISSION_PCT, 
       (NVL(COMMISSION_PCT, 0) + SALARY) AS monthly_salary 
FROM HR.EMPLOYEES;


-- ============================================================================
-- QUESTION 86: Total commission given to each employee in salary
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 87: Annual salary with percentage addition
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 88: Job titles starting with letter "A"
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES
WHERE JOB_ID LIKE 'A%';


-- ============================================================================
-- QUESTION 89: Job titles ending with letter "T"
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES
WHERE JOB_ID LIKE '%T';


-- ============================================================================
-- QUESTION 90: Employees with salary equal to 10000
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES
WHERE SALARY = 10000;


-- ============================================================================
-- QUESTION 91: Order employees by first name (ascending)
-- ============================================================================
SELECT FIRST_NAME 
FROM HR.EMPLOYEES
ORDER BY FIRST_NAME;


-- ============================================================================
-- QUESTION 92: Order employees by last name (descending)
-- ============================================================================
SELECT LAST_NAME 
FROM HR.EMPLOYEES
ORDER BY LAST_NAME DESC;


-- ============================================================================
-- QUESTION 93: Select multiple columns from employees table
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES;


-- ============================================================================
-- QUESTION 94: Concatenate first name and last name
-- ============================================================================
-- Method 1: Using CONCAT function
SELECT CONCAT(FIRST_NAME, LAST_NAME) AS full_name 
FROM HR.EMPLOYEES;

-- Method 2: Using concatenation operator ||
SELECT FIRST_NAME || LAST_NAME AS full_name 
FROM HR.EMPLOYEES;

-- Method 3: With space between names
SELECT FIRST_NAME || ' ' || LAST_NAME AS full_name 
FROM HR.EMPLOYEES;


-- ============================================================================
-- QUESTION 95: Employees with salary between 5000 and 25000
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES
WHERE SALARY BETWEEN 5000 AND 25000;


-- ============================================================================
-- QUESTION 96: Add row number to first name
-- ============================================================================
SELECT ROWNUM, FIRST_NAME 
FROM HR.EMPLOYEES;


-- ============================================================================
-- QUESTION 97: Retrieve last name of employees
-- ============================================================================
SELECT LAST_NAME 
FROM HR.EMPLOYEES;


-- ============================================================================
-- QUESTION 98: Employees with specific last names
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES
WHERE LAST_NAME IN ('King', 'Popp', 'Abel');


-- ============================================================================
-- QUESTION 99: Employees in departments 80, 90, 100
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES
WHERE DEPARTMENT_ID IN ('80', '90', '100');


-- ============================================================================
-- QUESTION 100: Employees with non-null commission percentage
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES
WHERE COMMISSION_PCT IS NOT NULL;


-- ============================================================================
-- QUESTION 101: Employees with specific first name and job ID
-- ============================================================================
SELECT * 
FROM HR.EMPLOYEES
WHERE FIRST_NAME = 'John' AND JOB_ID = 'SA_MAN';


-- ============================================================================
-- QUESTION 102: Employees with specific ID and salary > 12000
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 103: Employees with salary 9000 and commission percentage not null
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 104: Employees with manager ID > 100 and hire date before 01-JAN-2006
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 105: Employees with manager ID > 100 or last name KING
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 106: Employees with salary >= 9000 or job ID = IT_PROG
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 107: Employees not in IT_PROG, FI_MANAGER, or AD_VP
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 108: Employees with salary not in (9000, 7800, 1100)
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 109: Employees whose job ID is not IT_PROG
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 110: Total salary grouped by manager ID
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 111: Total count of employees grouped by job ID
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 112: Add TOTAL column (NUMBER datatype) to employees table
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 113: Average salary and count for specific employee IDs
-- ============================================================================
/*
Calculate AVG salary and total count of employees
For employee IDs 101, 103, 104
Order by employee ID ascending
*/
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 114: Delete TOTAL column from employees table
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 115: Employee details ordered by employee ID (descending)
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 116: Employee first name, last name, job ID and manager ID
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 117: Employees with IT_PROG job ID
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 118: Modify TOTAL column datatype from INT to NUMBER
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 119: Distinct first name and last name
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 120: Employees with salary between 10000 and 20000
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 121: Employees with salary between 10000 and 15000
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 122: Last name, first name, ID, salary and annual salary
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 123: Employee ID, commission percentage, salary and total
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 124: Commission percentage in RS format
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 125: Total salary given to all employees
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 126: Rename commission_pct to commission_percentage
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 127: Full name (concatenation of first and last name)
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 128: Department name and average salary by department
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 129: Employees with phone containing '555' but not '123'
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 130: Employees with salary NOT between 5000 and 10000
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 131: Employees in same department as Programmers
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 132: Employees with email not containing 'gmail'
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 133: Employees not in Seattle or Denver
-- ============================================================================
SELECT E.FIRST_NAME, E.LAST_NAME, D.DEPARTMENT_NAME, D.LOCATION_ID, L.CITY   
FROM HR.EMPLOYEES E
LEFT JOIN HR.DEPARTMENTS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
LEFT JOIN HR.LOCATIONS L ON D.LOCATION_ID = L.LOCATION_ID  
WHERE L.CITY NOT IN ('Seattle', 'Denver');


-- ============================================================================
-- Supporting SELECT statements for reference
-- ============================================================================
-- SELECT * FROM HR.LOCATIONS;
-- SELECT * FROM HR.DEPARTMENTS;
-- SELECT * FROM HR.REGIONS;
-- SELECT * FROM HR.COUNTRIES;
-- SELECT * FROM HR.JOBS;


-- ============================================================================
-- QUESTION 134: Employees in same department as employee ID 102
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 135: Department name, average salary, and employee count
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 137: Departments with at least one manager and employee
-- ============================================================================
/*
Using subquery with EXISTS and NOT EXISTS
Retrieve first name, last name, and job title of employees
who work in departments that have at least one manager
and at least one employee
*/
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 138: Employees with same manager as employee ID 101 (self join)
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 138b: Department name and total salary by department
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 139: Department name and employee count by department
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 140: Departments with more than 5 employees (HAVING clause)
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 141: Departments with max salary > 8000 (GROUP BY clause)
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- GROUP BY AND HAVING CLAUSE
-- ============================================================================

-- ============================================================================
-- QUESTION 142: Highest commission percentage by department
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 143: Manager ID and sum of salary + commission
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 144: Minimum salary by department and job title combination
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- QUESTION 145: Job title and employee count by job category
-- ============================================================================
-- TODO: Implement this query


-- ============================================================================
-- ARITHMETIC OPERATIONS (DUAL)
-- ============================================================================

-- ============================================================================
-- QUESTION 146: Addition and Subtraction (5 + 8 - 3)
-- ============================================================================
-- TODO: Implement this query with SELECT ... FROM DUAL


-- ============================================================================
-- QUESTION 147: Multiplication and Division (10 * 4 / 2)
-- ============================================================================
-- TODO: Implement this query with SELECT ... FROM DUAL


-- ============================================================================
-- QUESTION 148: Complex Expression ((6 + 9) * 2 - 7)
-- ============================================================================
-- TODO: Implement this query with SELECT ... FROM DUAL


-- ============================================================================
-- QUESTION 149: Parentheses (20 / (4 + 2))
-- ============================================================================
-- TODO: Implement this query with SELECT ... FROM DUAL


-- ============================================================================
-- QUESTION 150: Mix of Operators (3 * 5 + 10 / 2)
-- ============================================================================
-- TODO: Implement this query with SELECT ... FROM DUAL


-- ============================================================================
-- QUESTION 151: BODMAS (8 + 2 * 4)
-- ============================================================================
-- TODO: Implement this query with SELECT ... FROM DUAL


-- ============================================================================
-- QUESTION 152: Multiple Parentheses ((10 / (2 + 1)) + ((8 - 3) * 2))
-- ============================================================================
-- TODO: Implement this query with SELECT ... FROM DUAL


-- ============================================================================
-- QUESTION 153: Combining Expressions (15 + 6 / 3 - (4 * 2))
-- ============================================================================
-- TODO: Implement this query with SELECT ... FROM DUAL


-- ============================================================================
-- QUESTION 154: Find present date and time using DUAL
-- ============================================================================
-- TODO: Implement this query with SELECT ... FROM DUAL
