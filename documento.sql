SELECT * FROM `proyecto-marie-tania`.`wa_fn-usec_-hr-employee-attrition`;

#¿Cuántos personas empleadas hay en la base (activas e inactivas)?
SELECT COUNT(*) FROM `proyecto-marie-tania`.`wa_fn-usec_-hr-employee-attrition`;

#¿Cuántos personas empleadas se han ido (inactivas)?
SELECT COUNT(*) FROM `proyecto-marie-tania`.`wa_fn-usec_-hr-employee-attrition`
WHERE Attrition = 'Yes';

#¿Cuántas personas empleadas activas hay por género?
SELECT Gender, COUNT(*) FROM `proyecto-marie-tania`.`wa_fn-usec_-hr-employee-attrition`
WHERE Attrition = 'No'
GROUP BY Gender;

#¿Cuál es la satisfacción laboral promedio de las personas empleadas activas?
SELECT AVG(JobSatisfaction) FROM `proyecto-marie-tania`.`wa_fn-usec_-hr-employee-attrition`
WHERE Attrition = 'No';

#AVANZADAS

#¿Cuál es ingreso promedio mensual por género?
SELECT Gender, avg(MonthlyIncome) FROM `proyecto-marie-tania`.`wa_fn-usec_-hr-employee-attrition`
WHERE Attrition = 'No'
GROUP BY Gender;

#¿Cuál es la distribución de personas inactivas por género?
SELECT Gender, COUNT(*) FROM `proyecto-marie-tania`.`wa_fn-usec_-hr-employee-attrition`
WHERE Attrition = 'Yes'
GROUP BY Gender;

#¿Cuál es la satisfacción laboral promedio por género?
SELECT Gender, AVG(JobSatisfaction) FROM `proyecto-marie-tania`.`wa_fn-usec_-hr-employee-attrition`
WHERE Attrition = 'No'
GROUP BY Gender;

#¿Cuál es el promedio de Balance Vida y Carrera por género?
SELECT Gender, AVG(WorkLifeBalance) FROM `proyecto-marie-tania`.`wa_fn-usec_-hr-employee-attrition`
WHERE Attrition = 'No'
GROUP BY Gender;

#¿Cuál es la distribución de niveles de puesto por género, personas empleadas e ingreso promedio mensual?
SELECT JobLevel,Gender, count(*), avg(MonthlyIncome) FROM `proyecto-marie-tania`.`wa_fn-usec_-hr-employee-attrition`
WHERE Attrition = 'No'
GROUP BY Gender, JobLevel
ORDER BY JobLevel;

#¿Cuántas Mujeres y Hombres están empleadas en cada puesto?
SELECT JobRole, Gender, count(*), avg(MonthlyIncome) FROM `proyecto-marie-tania`.`wa_fn-usec_-hr-employee-attrition`
WHERE Attrition = 'No'
GROUP BY JobRole, Gender
ORDER BY JobRole;
