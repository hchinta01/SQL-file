# Human Resources & Employee Salary Dashboard

# SQL Analysis File

# Beginner-friendly SQL examples

-- =========================================================
-- 1. VIEW ALL EMPLOYEES
-- =========================================================

SELECT *
FROM employees;

-- =========================================================
-- 2. COUNT TOTAL EMPLOYEES
-- =========================================================

SELECT COUNT(*) AS total_employees
FROM employees;

-- =========================================================
-- 3. VIEW EMPLOYEES BY DEPARTMENT
-- =========================================================

SELECT
Department,
COUNT(*) AS employee_count
FROM employees
GROUP BY Department
ORDER BY employee_count DESC;

-- =========================================================
-- 4. AVERAGE SALARY
-- =========================================================

SELECT
AVG(Annual_Salary) AS average_salary
FROM employees;

-- =========================================================
-- 5. HIGHEST SALARY
-- =========================================================

SELECT
MAX(Annual_Salary) AS highest_salary
FROM employees;

-- =========================================================
-- 6. LOWEST SALARY
-- =========================================================

SELECT
MIN(Annual_Salary) AS lowest_salary
FROM employees;

-- =========================================================
-- 7. AVERAGE SALARY BY DEPARTMENT
-- =========================================================

SELECT
Department,
AVG(Annual_Salary) AS average_salary
FROM employees
GROUP BY Department
ORDER BY average_salary DESC;

-- =========================================================
-- 8. TOTAL PAYROLL BY DEPARTMENT
-- =========================================================

SELECT
Department,
SUM(Annual_Salary) AS total_payroll
FROM employees
GROUP BY Department
ORDER BY total_payroll DESC;

-- =========================================================
-- 9. EMPLOYEES BY LOCATION
-- =========================================================

SELECT
Location,
COUNT(*) AS employee_count
FROM employees
GROUP BY Location
ORDER BY employee_count DESC;

-- =========================================================
-- 10. EMPLOYEES BY GENDER
-- =========================================================

SELECT
Gender,
COUNT(*) AS employee_count
FROM employees
GROUP BY Gender;

-- =========================================================
-- 11. AVERAGE SALARY BY GENDER
-- =========================================================

SELECT
Gender,
AVG(Annual_Salary) AS average_salary
FROM employees
GROUP BY Gender;

-- =========================================================
-- 12. HIGHEST-PAID EMPLOYEES
-- =========================================================

SELECT
Employee_ID,
First_Name,
Last_Name,
Job_Title,
Department,
Annual_Salary
FROM employees
ORDER BY Annual_Salary DESC
LIMIT 10;

-- =========================================================
-- 13. EMPLOYEES WITH MORE THAN 10 YEARS EXPERIENCE
-- =========================================================

SELECT
Employee_ID,
First_Name,
Last_Name,
Department,
Job_Title,
Years_Experience,
Annual_Salary
FROM employees
WHERE Years_Experience > 10
ORDER BY Years_Experience DESC;

-- =========================================================
-- 14. EMPLOYEES WITH HIGH PERFORMANCE
-- =========================================================

SELECT
Employee_ID,
First_Name,
Last_Name,
Department,
Performance_Rating,
Annual_Salary
FROM employees
WHERE Performance_Rating >= 5
ORDER BY Annual_Salary DESC;

-- =========================================================
-- 15. FULL-TIME EMPLOYEES
-- =========================================================

SELECT
Employee_ID,
First_Name,
Last_Name,
Department,
Job_Title,
Employment_Type
FROM employees
WHERE Employment_Type = 'Full-Time';

-- =========================================================
-- 16. EMPLOYEES WITH MASTER'S DEGREE
-- =========================================================

SELECT
Employee_ID,
First_Name,
Last_Name,
Department,
Education
FROM employees
WHERE Education = 'Masters';

-- =========================================================
-- 17. AVERAGE SALARY BY JOB TITLE
-- =========================================================

SELECT
Job_Title,
COUNT(*) AS employee_count,
AVG(Annual_Salary) AS average_salary
FROM employees
GROUP BY Job_Title
ORDER BY average_salary DESC;

-- =========================================================
-- 18. AVERAGE EXPERIENCE BY DEPARTMENT
-- =========================================================

SELECT
Department,
AVG(Years_Experience) AS average_experience
FROM employees
GROUP BY Department
ORDER BY average_experience DESC;

-- =========================================================
-- 19. EMPLOYEES EARNING MORE THAN 1 MILLION
-- =========================================================

SELECT
Employee_ID,
First_Name,
Last_Name,
Department,
Job_Title,
Annual_Salary
FROM employees
WHERE Annual_Salary > 1000000
ORDER BY Annual_Salary DESC;

-- =========================================================
-- 20. EMPLOYEE SUMMARY
-- =========================================================

SELECT
COUNT(*) AS total_employees,
AVG(Annual_Salary) AS average_salary,
MIN(Annual_Salary) AS lowest_salary,
MAX(Annual_Salary) AS highest_salary,
SUM(Annual_Salary) AS total_payroll,
AVG(Years_Experience) AS average_experience
FROM employees;
