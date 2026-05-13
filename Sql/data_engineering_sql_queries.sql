-- Data Engineering SQL Queries Handbook

-- 1. Select Query
SELECT *
FROM employee;

SELECT employee_id, employee_name, salary
FROM employee;

-- 2. WHERE Condition
SELECT *
FROM employee
WHERE salary > 50000;

SELECT *
FROM employee
WHERE department = 'IT'
AND salary > 50000;

-- 3. ORDER BY
SELECT *
FROM employee
ORDER BY salary DESC;

-- 4. DISTINCT
SELECT DISTINCT department
FROM employee;

-- 5. LIMIT / TOP
SELECT *
FROM employee
LIMIT 10;

-- SQL Server
SELECT TOP 10 *
FROM employee;

-- 6. GROUP BY
SELECT department,
       COUNT(*) AS total_employee
FROM employee
GROUP BY department;

-- 7. HAVING
SELECT department,
       COUNT(*) AS total_employee
FROM employee
GROUP BY department
HAVING COUNT(*) > 5;

-- 8. INNER JOIN
SELECT e.employee_name,
       d.department_name
FROM employee e
INNER JOIN department d
ON e.department_id = d.department_id;

-- 9. LEFT JOIN
SELECT e.employee_name,
       d.department_name
FROM employee e
LEFT JOIN department d
ON e.department_id = d.department_id;

-- 10. RIGHT JOIN
SELECT e.employee_name,
       d.department_name
FROM employee e
RIGHT JOIN department d
ON e.department_id = d.department_id;

-- 11. FULL OUTER JOIN
SELECT e.employee_name,
       d.department_name
FROM employee e
FULL OUTER JOIN department d
ON e.department_id = d.department_id;

-- 12. SELF JOIN
SELECT a.employee_name AS employee,
       b.employee_name AS manager
FROM employee a
LEFT JOIN employee b
ON a.manager_id = b.employee_id;

-- 13. UNION
SELECT employee_name
FROM employee_current

UNION

SELECT employee_name
FROM employee_old;

-- 14. UNION ALL
SELECT employee_name
FROM employee_current

UNION ALL

SELECT employee_name
FROM employee_old;

-- 15. INSERT
INSERT INTO employee (
    employee_id,
    employee_name,
    salary
)
VALUES (
    101,
    'John',
    60000
);

-- 16. UPDATE
UPDATE employee
SET salary = 70000
WHERE employee_id = 101;

-- 17. DELETE
DELETE FROM employee
WHERE employee_id = 101;

-- 18. TRUNCATE
TRUNCATE TABLE employee;

-- 19. CREATE TABLE
CREATE TABLE employee (
    employee_id INT,
    employee_name VARCHAR(100),
    salary NUMERIC(10,2)
);

-- 20. ALTER TABLE
ALTER TABLE employee
ADD COLUMN email VARCHAR(100);

-- 21. DROP TABLE
DROP TABLE employee;

-- 22. Duplicate Records
SELECT employee_id,
       COUNT(*)
FROM employee
GROUP BY employee_id
HAVING COUNT(*) > 1;

-- 23. ROW_NUMBER
SELECT *,
       ROW_NUMBER() OVER (
           PARTITION BY department
           ORDER BY salary DESC
       ) AS rn
FROM employee;

-- 24. RANK
SELECT employee_name,
       salary,
       RANK() OVER (
           ORDER BY salary DESC
       ) AS ranking
FROM employee;

-- 25. DENSE_RANK
SELECT employee_name,
       salary,
       DENSE_RANK() OVER (
           ORDER BY salary DESC
       ) AS ranking
FROM employee;

-- 26. LEAD
SELECT employee_name,
       salary,
       LEAD(salary) OVER (
           ORDER BY salary
       ) AS next_salary
FROM employee;

-- 27. LAG
SELECT employee_name,
       salary,
       LAG(salary) OVER (
           ORDER BY salary
       ) AS previous_salary
FROM employee;

-- 28. CASE
SELECT employee_name,
       salary,
       CASE
           WHEN salary > 100000 THEN 'High'
           WHEN salary > 50000 THEN 'Medium'
           ELSE 'Low'
       END AS salary_category
FROM employee;

-- 29. COALESCE
SELECT employee_name,
       COALESCE(phone_number, 'NA')
FROM employee;

-- 30. NULL Handling
SELECT *
FROM employee
WHERE email IS NULL;

-- NOT NULL Handling
SELECT *
FROM employee
WHERE email IS NOT NULL;

-- 31. Subquery
SELECT *
FROM employee
WHERE salary > (
    SELECT AVG(salary)
    FROM employee
);

-- 32. CTE
WITH high_salary AS (
    SELECT *
    FROM employee
    WHERE salary > 50000
)
SELECT *
FROM high_salary;

-- 33. MERGE / UPSERT
INSERT INTO target_table (
    id,
    name
)
SELECT id, name
FROM source_table
ON CONFLICT (id)
DO UPDATE
SET name = EXCLUDED.name;

-- 34. Incremental Load
SELECT *
FROM source_table
WHERE updated_dt > '${LastRunDate}';

-- 35. CDC Validation
SELECT *
FROM source_table s
LEFT JOIN target_table t
ON s.id = t.id
WHERE t.id IS NULL;

-- 36. EXISTS
SELECT *
FROM employee e
WHERE EXISTS (
    SELECT 1
    FROM department d
    WHERE e.department_id = d.department_id
);

-- 37. NOT EXISTS
SELECT *
FROM employee e
WHERE NOT EXISTS (
    SELECT 1
    FROM department d
    WHERE e.department_id = d.department_id
);

-- 38. String Functions
SELECT UPPER(employee_name),
       LOWER(employee_name),
       LENGTH(employee_name),
       TRIM(employee_name)
FROM employee;

-- 39. Date Functions
SELECT CURRENT_DATE,
       CURRENT_TIMESTAMP,
       NOW();

-- 40. CREATE INDEX
CREATE INDEX idx_employee_id
ON employee(employee_id);

-- 41. CREATE VIEW
CREATE OR REPLACE VIEW v_employee AS
SELECT employee_id,
       employee_name
FROM employee;

-- 42. JSON Query
SELECT data->>'name' AS employee_name
FROM employee_json;

-- 43. Generate Surrogate Key
SELECT ROW_NUMBER() OVER () AS surrogate_key,
       employee_name
FROM employee;

-- 44. SCD Type 2
UPDATE customer_dim
SET end_date = CURRENT_DATE,
    is_active = 'N'
WHERE customer_id = 101
AND is_active = 'Y';

-- 45. Missing Records
SELECT s.id
FROM source_table s
LEFT JOIN target_table t
ON s.id = t.id
WHERE t.id IS NULL;

-- 46. Primary Key
ALTER TABLE employee
ADD CONSTRAINT pk_employee
PRIMARY KEY (employee_id);

-- 47. Foreign Key
ALTER TABLE employee
ADD CONSTRAINT fk_department
FOREIGN KEY (department_id)
REFERENCES department(department_id);

-- 48. Unique Constraint
ALTER TABLE employee
ADD CONSTRAINT uq_employee_email
UNIQUE (email);

-- 49. Check Constraint
ALTER TABLE employee
ADD CONSTRAINT chk_salary
CHECK (salary > 0);

-- 50. Temporary Table
CREATE TEMP TABLE temp_employee AS
SELECT *
FROM employee;
