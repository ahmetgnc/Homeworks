CREATE TABLE Employee_Test (Emp_Name varchar2(50) , Emp_Surname VARCHAR2(50));
/
/*Inserting Data to Table */
BEGIN
FOR i IN 1..10 LOOP  --0.0035 seconds
INSERT INTO Employee_Test (Emp_Name, Emp_Surname) VALUES ('Ahmet' , 'Genç');
END LOOP;
COMMIT;
END;
/
BEGIN
FOR i IN 1..100 LOOP --0.038 second
INSERT INTO Employee_Test (Emp_Name, Emp_Surname) VALUES ('Ahmet' , 'Genç');
END LOOP;
COMMIT;
END;
/
BEGIN
FOR i IN 1..1000 LOOP --0.042 second
INSERT INTO Employee_Test (Emp_Name, Emp_Surname) VALUES ('Ahmet' , 'Genç');
END LOOP;
COMMIT;
END;
/
/*Delete Data from Table*/
BEGIN
DELETE FROM Employee_Test WHERE EMP_SURNAME='Genç';
COMMIT;
END;
--10 delete 0.032 second
--100 delete 0.033 second
--1000 delete 0.038 second
/
/*Updating Data*/
BEGIN
UPDATE Employee_Test
SET Emp_Name='Abc'
WHERE Emp_Surname='Genç';
COMMIT;
END;
-- 10 update 0.038 seconds
--100 update 0.037 seonds
--1000 update 0.038 seconds
/
SELECT * FROM EMPLOYEE_TEST;
/
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/*Inserting Data to Table */
BEGIN
FOR i IN 1..10 LOOP  --0.0067 seconds
INSERT INTO Employee_Test (Emp_Name, Emp_Surname) VALUES ('Ahmet' , 'Genç');
END LOOP;
ROLLBACK;
END;
/
BEGIN
FOR i IN 1..100 LOOP --0.057 second
INSERT INTO Employee_Test (Emp_Name, Emp_Surname) VALUES ('Ahmet' , 'Genç');
END LOOP;
ROLLBACK;
END;
/
BEGIN
FOR i IN 1..1000 LOOP --0.054 second
INSERT INTO Employee_Test (Emp_Name, Emp_Surname) VALUES ('Ahmet' , 'Genç');
END LOOP;
ROLLBACK;
END;
/
/*Delete Data from Table*/
BEGIN
DELETE FROM Employee_Test WHERE EMP_SURNAME='Genç';
ROLLBACK;
END;
--10 delete 0.058 second
--100 delete 0.078 second
--1000 delete 0.083 second
/
/*Updating Data*/
BEGIN
UPDATE Employee_Test
SET Emp_Name='Abc'
WHERE Emp_Surname='Genç';
ROLLBACK;
END;
-- 10 update 0.049 seconds
--100 update 0.051 seonds
--1000 update 0.059 seconds
/

