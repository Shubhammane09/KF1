
--------------1.  Basic Select statements--------------- 
SELECT * From hr.employees;

SELECT * FROM hr.Departments;



--------2. To selecting particular column in table: 

SELECT DEPARTMENT_ID, DEPARTMENT_NAME, LOCATION_ID FROM HR.DEPARTMENTS;

SELECT EMPLOYEE_ID, LAST_NAME, HIRE_DATE, JOB_ID, SALARY,  DEPARTMENT_ID FROM HR.EMPLOYEES;


---------3.To perform column operation: -----------------
  --(Calculate annual salary of employees)
SELECT EMPLOYEE_ID, LAST_NAME, HIRE_DATE,JOB_ID,SALARY, SALARY*12 FROM HR.EMPLOYEES


SELECT department_id,department_id/10,Department_name,Location_id,Location_id/100
From hr.departments;

------------------4.	Alias , Literal , Concatenation Operator------------
------------To renaming column heading by using column alias:

SELECT EMPLOYEE_ID,LAST_NAME,SALARY, SALARY*12 ANNUAL_SALARY FROM HR.EMPLOYEES

       	                   
SELECT employee_id "Employee Numbers",Last_name "Full NAME",salary
From hr.employees;
                        --(AS is optional)    
SELECT employee_id AS "Employee Numbers",salary*12 "Annual Salary"
From hr.employees;



-------------To join more than one columns by using Concatenation Operator: ( || ) 

SELECT EMPLOYEE_ID,FIRST_NAME||LAST_NAME FULL_NAME FROM HR.EMPLOYEES

SELECT EMPLOYEE_ID,FIRST_NAME||' '||LAST_NAME FULL_NAME FROM HR.EMPLOYEES

SELECT employee_id||' is '||First_name||' '||last_name Employee_Details
From hr.employees;


---------------------5. Operator Presidency Rule:------------------------
 /* Oracle give operators higher priority based
Operator		
    *    (Multiplication 1ST )
   /    ( Division 2nd)
  +      (Addition 3rd)
-	    (Substation 4th )   */


SELECT EMPLOYEE_ID, LAST_NAME,SALARY, SALARY+100*12 Annual_Sal FROM HR.EMPLOYEES
--(Above example oracle firstly perform multiplication after then addition is perform)

--(Below example oracle firstly perform addition after then multiplication  is perform)
SELECT employee_id,last_name,salary,(salary +100) *12 Annual_Sal
From hr.employees;



-------------------------To Sorting Columns :------------------------

----- 6.	Sorting data by using Order by clause. 

/*
Syntax:
SELECT  * | Column_list | Exp | Alias 
 	FROM table_name
	Order by column_name [ASC][DESC];   */ 
  
 

SELECT EMPLOYEE_ID, LAST_NAME,HIRE_DATE,SALARY,DEPARTMENT_ID FROM HR.EMPLOYEES
ORDER BY SALARY;

SELECT EMPLOYEE_ID, LAST_NAME,HIRE_DATE,SALARY,DEPARTMENT_ID FROM HR.EMPLOYEES
ORDER BY SALARY DESC;

SELECT EMPLOYEE_ID, LAST_NAME,HIRE_DATE,SALARY,DEPARTMENT_ID FROM HR.EMPLOYEES
ORDER BY DEPARTMENT_ID, SALARY DESC;


SELECT EMPLOYEE_ID, LAST_NAME,HIRE_DATE,SALARY,DEPARTMENT_ID FROM HR.EMPLOYEES
ORDER BY 1;  -- ASENDING ORDER ON 1st COLUMN


SELECT EMPLOYEE_ID, LAST_NAME,HIRE_DATE,SALARY,DEPARTMENT_ID FROM HR.EMPLOYEES
ORDER BY 4,5;  -- ASENDING ORDER ON 4th AND 5th COLUMN



------------------------------------------------------------------------------
------------------------------------------------------------------------------

---------2. Selecting Particular Rows: (Selection) ------------------
/*	
  Syntax:
		SELECT * | Column_list | Exp
		From table_name
		WHERE <condition>
		ORDER BY column_name [DESC];    */
    
    
--Comparison Operators: = equal to , 
                        < less than,
                        > greter than, 
                        <= less than equal too, 
                        >= greter than equal too, 
                        <>,!=  not equal too
                        
                        
SELECT EMPLOYEE_ID, LAST_NAME, SALARY, DEPARTMENT_ID FROM HR.EMPLOYEES
WHERE DEPARTMENT_ID = 50;


SELECT EMPLOYEE_ID, LAST_NAME,SALARY,DEPARTMENT_ID FROM HR.EMPLOYEES
WHERE SALARY > 5000 AND DEPARTMENT_ID = 50;

SELECT * FROM HR.EMPLOYEES
WHERE LAST_NAME='Abel';


SELECT EMPLOYEE_ID, LAST_NAME, HIRE_DATE, SALARY, DEPARTMENT_ID FROM HR.EMPLOYEES
WHERE LAST_NAME > 'Smith';


SELECT EMPLOYEE_ID, LAST_NAME, HIRE_DATE, SALARY, DEPARTMENT_ID FROM HR.EMPLOYEES
WHERE HIRE_DATE > '31-DEC-04'


SELECT EMPLOYEE_ID, LAST_NAME, HIRE_DATE, SALARY, DEPARTMENT_ID FROM HR.EMPLOYEES
WHERE DEPARTMENT_ID<>50;


--------------Advanced Comparison Operators:-----------

    IN,
    BETWEEN,
    LIKE,
    IS NULL
    
    
 -------1 IN Operator
 Syntax:
Where   column_name IN (val1,val2,val3…..);


SELECT EMPLOYEE_ID, LAST_NAME, HIRE_DATE, SALARY, DEPARTMENT_ID FROM HR.EMPLOYEES
WHERE LAST_NAME IN ('King','Smith','Abel');


SELECT EMPLOYEE_ID, LAST_NAME, HIRE_DATE, SALARY, DEPARTMENT_ID FROM HR.EMPLOYEES
WHERE EMPLOYEE_ID IN (100,150,200);


SELECT EMPLOYEE_ID, LAST_NAME, HIRE_DATE, SALARY, DEPARTMENT_ID FROM HR.EMPLOYEES
WHERE SALARY IN (10000,13000,17000,24000);


SELECT EMPLOYEE_ID, LAST_NAME, HIRE_DATE, SALARY, DEPARTMENT_ID FROM HR.EMPLOYEES
WHERE HIRE_DATE IN ('10-MAR-05','07-JUN-02','05-JAN-04');


SELECT EMPLOYEE_ID, LAST_NAME, HIRE_DATE,JOB_ID, SALARY, DEPARTMENT_ID FROM HR.EMPLOYEES
WHERE JOB_ID IN ('IT_PROG','SA_REP');



----2. Between:-----------------------------------------------------------
Syntax:
	WHERE COLUMN_NAME BETWEEN LOWER_VAL AND HIGHER_VAL
  
  
SELECT EMPLOYEE_ID, LAST_NAME, HIRE_DATE,JOB_ID, SALARY, DEPARTMENT_ID FROM HR.EMPLOYEES
WHERE SALARY BETWEEN 10000 AND 20000;
   
SELECT EMPLOYEE_ID, LAST_NAME, HIRE_DATE,JOB_ID, SALARY, DEPARTMENT_ID FROM HR.EMPLOYEES
WHERE DEPARTMENT_ID BETWEEN 10 AND 50;

SELECT EMPLOYEE_ID, LAST_NAME, HIRE_DATE,JOB_ID, SALARY, DEPARTMENT_ID FROM HR.EMPLOYEES
WHERE LAST_NAME BETWEEN 'Abel' AND 'King';


SELECT EMPLOYEE_ID, LAST_NAME, HIRE_DATE,JOB_ID, SALARY, DEPARTMENT_ID FROM HR.EMPLOYEES
WHERE HIRE_DATE BETWEEN '01-JAN-04' AND '31-DEC-04';


---- 3. LIKE OPERATOR

     Syntax: WHERE COLUMN_NAME LIKE 'EXP'
     
     Wild card Character:
     %      (Multiple character skip)
     _       (Single Character Skip)
     
     
 
SELECT EMPLOYEE_ID, LAST_NAME, HIRE_DATE,JOB_ID, SALARY, DEPARTMENT_ID FROM HR.EMPLOYEES
WHERE LAST_NAME LIKE 'A%';


SELECT EMPLOYEE_ID, LAST_NAME, HIRE_DATE,JOB_ID, SALARY, DEPARTMENT_ID FROM HR.EMPLOYEES
WHERE LAST_NAME LIKE '%a';


SELECT EMPLOYEE_ID, LAST_NAME, HIRE_DATE,JOB_ID, SALARY, DEPARTMENT_ID FROM HR.EMPLOYEES
WHERE LAST_NAME LIKE '_o%';


SELECT EMPLOYEE_ID, LAST_NAME, HIRE_DATE,JOB_ID, SALARY, DEPARTMENT_ID FROM HR.EMPLOYEES
WHERE LAST_NAME LIKE '%n__';


SELECT EMPLOYEE_ID, LAST_NAME, HIRE_DATE,JOB_ID, SALARY, DEPARTMENT_ID FROM HR.EMPLOYEES
WHERE LAST_NAME LIKE '%e%e%e%';


SELECT EMPLOYEE_ID, LAST_NAME, HIRE_DATE,JOB_ID, SALARY, DEPARTMENT_ID FROM HR.EMPLOYEES
WHERE HIRE_DATE LIKE '%JAN%';


SELECT EMPLOYEE_ID, LAST_NAME, HIRE_DATE,JOB_ID, SALARY, DEPARTMENT_ID FROM HR.EMPLOYEES
WHERE JOB_ID LIKE '%REP%';
     
----4.  IS NULL:

SELECT * From hr.employees
where commission_pct IS NULL;

SELECT * From hr.employees
where Manager_id IS NULL;

SELECT * From hr.departments
Where manager_id IS NULL;



-----------Logical Operators in oracle:

----AND
Syntax:
	Where  <condition1>  and <condition2> ;

AND True  False Null
True  T   F      F
False F   F      F
Null  F   F      N

--OR
Syntax:
	Where  <condition1>  or <condition2> ;
  
OR  True  False Null
True  T   T     T
False T   F     F
Null  T   F     N


--NOT
NOT	True	False	Null
	  False	True	Null

-----------------------------------------------------------------------------

--------------Types of functions in Oracle:

1. Single Row Functions
2. Multiple Row Functions (Group Functions)



--1. Single Row Functions in Oracle:

--A. Characters Functions

--a. Upper ():


Syntax: UPPER (string1|Column_name)

Examples:
	 SELECT UPPER(‘Hello World’)From dual;


SELECT Employee_id,last_name,UPPER(last_name) 
From hr.employees;

select *
from hr.employees
Where Upper(last_name)='KING';

----b. lower():

--Syntax : Lower( string1|Column_name )

SELECT lower('Hello World')
From dual;

SELECT EMPLOYEE_ID, LAST_NAME, LOWER(FIRST_NAME||' '||LAST_NAME) FULL_NAME FROM HR.EMPLOYEES


----c. INITCAP ():

--Syntax  : INITCAP(string1|Column_name )

SELECT initcap('hello world')
From dual;

SELECT EMPLOYEE_ID, LAST_NAME, SALARY, DEPARTMENT_ID, INITCAP(FIRST_NAME) FROM HR.EMPLOYEES

SELECT EMPLOYEE_ID, LAST_NAME, SALARY, DEPARTMENT_ID, INITCAP(FIRST_NAME) FROM HR.EMPLOYEES
WHERE LAST_NAME = INITCAP ('King');



----d. SUBSTR ():

-- Syntax:  SUBSTR( string | Column_name, start_position [,length])

SELECT SUBSTR ('Hello World',2,5) FROM DUAL;

SELECT SUBSTR ('Hello World',2,6) FROM DUAL;

SELECT SUBSTR ('Hello World',-5) FROM DUAL;
--(It search string in reverse form output is ‘World’)

SELECT SUBSTR ('Hello World',-5,2) FROM DUAL;
--(It search string in reverse from and cut only two starting character in result Output is ‘Wo’)

SELECT EMPLOYEE_ID, LAST_NAME, SALARY, JOB_ID FROM HR.EMPLOYEES
WHERE SUBSTR (JOB_ID,4) = 'REP';

SELECT FIRST_NAME,SUBSTR (FIRST_NAME,1,1)||'. '|| LAST_NAME NAME FROM HR.EMPLOYEES


----d. INSTR():

-- Syntax:  INSTR(string |Column ,substring[,start_position],[th_appearance])

SELECT INSTR ('Hello World','o') FROM DUAL;

SELECT INSTR ('Hello World','e',1) FROM DUAL;

SELECT INSTR ('Hello World','o',1) FROM DUAL;

SELECT INSTR ('Hello World','o',1,2) FROM DUAL;

SELECT INSTR ('Hello World','l',1,2) FROM DUAL;

SELECT INSTR ('Hello World','l',1,3) FROM DUAL;

SELECT INSTR ('Hello World',' ',1) FROM DUAL;


-- e.Length ():

-- Syntax: LENGTH(string |Column_name )

SELECT LENGTH ('Hello World')FROM DUAL; 

SELECT EMPLOYEE_ID, LAST_NAME, LENGTH (LAST_NAME) LAST_LENGTH FROM HR.EMPLOYEES


-- f. Trim ():
-- Syntax:  TRIM ([Leading][Trailing][Both]Char From String|Column_name )


SELECT TRIM ('H' FROM 'Hello World') FROM DUAL

SELECT TRIM ('d' FROM 'Hello World') FROM DUAL

SELECT TRIM ('0' FROM '00123100') FROM DUAL

--Leading: To remove character from the front of string.
SELECT TRIM (Leading '0' FROM '00123100') FROM DUAL

--Trailing: To remove character from the end of string.
SELECT TRIM (Trailing '0' FROM '00123100') FROM DUAL

--Both : To remove character from both side. (Default) 
SELECT TRIM (BOTH '0' FROM '00123100') FROM DUAL


SELECT EMPLOYEE_ID, LAST_NAME, SALARY FROM HR.EMPLOYEES
WHERE LAST_NAME = TRIM (' ' FROM '   King   ');



-------g. LPAD ():------ LPAD function pads left side of a string with a specific set of characters.

--  Syntax: LPAD(String| Column_name , Padded_length, pad_string )


SELECT LPAD('Hello World',15,'*') From dual;

SELECT EMPLOYEE_ID, LAST_NAME, LPAD(SALARY,LENGTH(SALARY)+1,'$') US_DOLLER FROM HR.EMPLOYEES

SELECT EMPLOYEE_ID, LAST_NAME, LPAD(SALARY,LENGTH(SALARY)+2,'$ ') US_DOLLER FROM HR.EMPLOYEES



--------------h. RPAD ():------RPAD function pads Right side of a string with a specific set of characters.

-- Syntax: RPAD(String|Column_name , Padded_length, pad_string )

SELECT RPAD('Hello World',15,'*') From dual;


------------------------------------------------------------------------------------------------------------------------------


--------------------------B. Number Functions ----------------------------

-- a.ROUND():
            --ROUND function returns a number rounded to a certain number of decimal places.

-- Syntax:  ROUND (number[,decimal_places])

SELECT ROUND(45.923,0), ROUND(45.923,2), ROUND(45.923,-1) FROM DUAL; 



-- b. Trunc():
             -- TRUNC function returns a number truncated to a certain number of decimal places.

 --Syntax : TRUNC( number [, decimal_places] )

SELECT TRUNC(45.923,0),TRUNC(45.923,2),TRUNC(492.923,-1) FROM DUAL;

SELECT EMPLOYEE_ID, LAST_NAME, SALARY, TRUNC(SALARY/3) FROM HR.EMPLOYEES;

 

--c.Mod():
       -- MOD function returns the remainder of m divided by n.
/*
Syntax: MOD( m , n )
m: Numeric value used in the calculation.
n : Numeric value used in the calculation. */


SELECT MOD (16,4) FROM DUAL;

SELECT MOD (16,5) FROM DUAL;


---------------------------------------------------------------------------------------------------------------

-------------C. Date Functions -------------------------------

-- a.Sysdate():

-- SYSDATE function returns the current system date and time on your local database.   --

Syntax :  SYSDATE

SELECT SYSDATE FROM DUAL;

SELECT EMPLOYEE_ID , LAST_NAME,HIRE_DATE, ROUND((SYSDATE- HIRE_DATE)/365) TOTAL_YEAR FROM HR.EMPLOYEES


---- b.Months_Between (): 

--MONTHS_BETWEEN function returns the number of months between date1 and date2.

Syntax: MONTHS_BETWEEN (date1, date2)

SELECT MONTHS_BETWEEN ( SYSDATE, '11-APR-18') FROM DUAL;

SELECT EMPLOYEE_ID, LAST_NAME,HIRE_DATE, ROUND(MONTHS_BETWEEN(SYSDATE,HIRE_DATE)) TOTAL_MONTHS FROM HR.EMPLOYEES;



-- b.Add_Months (): 
             -- ADD_MONTHS function returns a date with a specified number of months added.
Syntax: ADD_MONTHS (date1, number months)

SELECT ADD_MONTHS (SYSDATE,5) FROM DUAL;

SELECT EMPLOYEE_ID, LAST_NAME, HIRE_DATE, ADD_MONTHS (HIRE_DATE,5) FROM HR.EMPLOYEES

--Adding Year
SELECT EMPLOYEE_ID, LAST_NAME, HIRE_DATE,ADD_MONTHS(HIRE_DATE,5*12) FROM HR.EMPLOYEES;

SELECT EMPLOYEE_ID, LAST_NAME, HIRE_DATE,ADD_MONTHS(HIRE_DATE,-5*12) FROM HR.EMPLOYEES;


---- c.Next_Day (): 
      NEXT_DAY function returns the first weekday that is greater than a date.

-- Syntax: NEXT_DAY (date, weekday)

SELECT NEXT_DAY(SYSDATE,'FRIDAY') FROM DUAL;

SELECT NEXT_DAY('09-NOV-92','MONDAY') FROM DUAL;


------c.Last_Day ():

--LAST_DAY function returns the last day of the month based on a date value.

Syntax: LAST_DAY( date )

SELECT LAST_DAY('02-JAN-17') FROM DUAL;



---- c.ROUND ():-----

--ROUND function returns a date rounded to a specific unit of measure.

Syntax: ROUND( date [, format] )

SELECT ROUND (SYSDATE,'Year') FROM DUAL;

SELECT ROUND (TO_DATE('12-APR-17'),'YEAR') FROM DUAL;

SELECT ROUND (TO_DATE('12-JUL-17'),'YEAR') FROM DUAL;

SELECT ROUND (TO_DATE('12-APR-17'),'MONTH') FROM DUAL;


SELECT EMPLOYEE_ID, LAST_NAME, HIRE_DATE, ROUND (HIRE_DATE,'YEAR') FROM HR.EMPLOYEES;



------ d.Trunc ():-------

-- TRUNC function returns a date truncated to a specific unit of measure.

SELECT Trunc(Sysdate,'Year') From dual;


SELECT TRUNC (TO_DATE('15-AUG-17'),'YEAR') FROM DUAL;

SELECT EMPLOYEE_ID, LAST_NAME,HIRE_DATE,TRUNC(HIRE_DATE,'YEAR') FROM HR.EMPLOYEES;




--------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------

--------------- C. General Functions ----------------

-- a.NVL ():   NVL function lets you substitute a value when a null value is encountered.

Syntax: NVL( string| Column ,replace_with )

SELECT NVL ('oracle','N/A') FROM DUAL;


SELECT EMPLOYEE_ID,LAST_NAME, SALARY, SALARY+SALARY* NVL(COMMISSION_PCT,0) FROM HR.EMPLOYEES

SELECT EMPLOYEE_ID,LAST_NAME, SALARY, SALARY+SALARY* NVL(COMMISSION_PCT,1) FROM HR.EMPLOYEES


------------b.NVL2 (): -------------------------
   --NVL2 function extends the functionality found in the NVL function. It lets you substitutes a value when a null value is encountered as well as when a non-null value is encountered.

Syntax:NVL2( string |Column , value_if_not_null, value_if_null )

SELECT NVL2(NULL,'Exp1','Exp2') FROM DUAL;

SELECT NVL2('abc','Exp1','Exp2') FROM DUAL;

SELECT EMPLOYEE_ID, LAST_NAME, SALARY, COMMISSION_PCT, NVL2(COMMISSION_PCT,'SAL+COMM','SAL') FROM HR.EMPLOYEES;



----------------c.NULLIF ():

 --= NULLIF function compares expr1 and expr2. If expr1 and expr2 are equal, the NULLIF function returns NULL. Otherwise, it returns expr1.

Syntax: NULLIF (expr1, expr2)

SELECT NULLIF ('ABC','ABC') FROM DUAL;

SELECT NULLIF ('ABC','abc') FROM DUAL;

--WHEN FIRST_NAME AND LAST_NAME THEIR IS LENGTH ARE SAME TO GET NULL VALUE OTHER WISE LENGTH IS NOT SAME TO GET FIRST_NAME CHARACTER LENGTH 
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, NULLIF(LENGTH (FIRST_NAME),LENGTH(LAST_NAME)) FROM HR.EMPLOYEES



------------d. COALESCE ():-----------------
 -- COALESCE function returns the first non-null expression in the list. If all expressions evaluate to null, then the COALESCE function will return null.

Syntax: COALESCE (expr1, expr2, expr_n)

SELECT COALESCE (NULL,NULL,NULL,'ABC',NULL,NULL) FROM DUAL;

SELECT COALESCE (NULL,NULL,null,null) FROM DUAL;

SELECT COALESCE (COMMISSION_PCT,SALARY) FROM HR.EMPLOYEES

SELECT COALESCE (COMMISSION_PCT,MANAGER_ID) FROM HR.EMPLOYEES



-----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------


-------------------E. Conversion Functions
--a. To_Char():
   --Description  TO_CHAR function converts a number or date to a string.

Syntax: TO_CHAR (Value |Column [, format_mask])

SELECT TO_CHAR (24000,'$99999.00') FROM DUAL;

SELECT EMPLOYEE_ID, LAST_NAME, TO_CHAR(SALARY,'$99999.00') FROM HR.EMPLOYEES;

SELECT EMPLOYEE_ID, LAST_NAME, TO_CHAR(SALARY,'$99,999.00') FROM HR.EMPLOYEES;

SELECT EMPLOYEE_ID, LAST_NAME,SALARY FROM HR.EMPLOYEES
WHERE TRIM (TO_CHAR(SALARY,'$99,999.00')) > '$5,000.00'






Select to_char(Sysdate,'Day DD Month Year') from DUAL;

Select to_char(Sysdate,'Day DD MON YYYY') from DUAL;

SELECT TO_CHAR (SYSDATE,'DAY/DD/Month/Year') FROM DUAL;

SELECT TO_CHAR (SYSDATE,'Day DDth Year Month') FROM DUAL;

SELECT TO_CHAR (SYSDATE,'DDSP') FROM DUAL;

SELECT TO_CHAR (SYSDATE+5,'DDSP') FROM DUAL;


-----b. To_Date():
   -- TO_DATE function converts a string to a date.

Syntax: TO_DATE( string| Column [, format_mask])

SELECT TO_DATE('24 MAR 2017','DD MON YYYY') FROM DUAL;

SELECT TO_DATE('MONDAY 10 APR 2017','Day DD MON YYYY') FROM DUAL;

SELECT TO_DATE ('Thursday 13 Apr 2017',' Day DD MON YYYY') FROM DUAL;




--------------c. To_Number(): -----
------- TO_NUMBER function converts a string to a number.
Syntax: TO_NUMBER (string1 [, format_mask])


SELECT TO_NUMBER ('$24,000.00','$99,999.00') FROM DUAL


SELECT EMPLOYEE_ID, LAST_NAME, SALARY FROM HR.EMPLOYEES
WHERE SALARY > TO_NUMBER ('$5,000.00','$9,999.99');




--------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------


-------2. Grouping Functions Or Multiple Row Functions: ------------
    ( Group functions operate on sets of rows to give one result per group.)


------a. SUM ():
           -- SUM function returns the summed value of an expression in a table that satisfy the criteria of SELECT  statements. It accepts only numerical values.

Syntax:  SELECT  SUM (DISTINCT|ALL)
  	     FROM tables
	       [WHERE conditions];














