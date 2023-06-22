# hr-gender-analysis
Analisis Organizacional con perspectiva de género.

## 🤷🏻‍♀️ ¿Cuál es la necesidad o problema a resolver? 
Se busca identificar posibles desigualdades o disparidades de género dentro de la organización, en áreas como el nivel de empleo, los salarios, la rotación de personal, la satisfacción con el entorno laboral, el equilibrio entre el trabajo y la vida personal, entre otros.

Estos hallazgos pueden ayudar a la organización a tomar decisiones informadas para promover la equidad de género y mejorar el ambiente de trabajo.

## 💡¿Cuál es la propuesta para resolver esa necesidad o problema? 
El objetivo principal del proyecto es proporcionar información valiosa a través del análisis de los datos del personal de la organización desde una perspectiva de género. Para esto definiremos las consultas agregando la variable “gender”.

## 💾 Base De Datos:
[Ver en Kaggle](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset "Ver en Kaggle")

Dataset ficticio creado por científicos de datos de IBM que simulan características de rendimiento y satisfacción laboral de un conjunto de “empleados” de IBM.
Ver en Kaggle.
Estructura de la base de datos: SQL

## 🔮 Consultas:
### Consultas básicas:
#### ❓ ¿Cuántos personas empleadas hay en la base (activas e inactivas)?
    SELECT COUNT(*) FROM `proyecto-marie-tania`.`wa_fn-usec_-hr-employee-attrition`;

#### ❓ ¿Cuántos personas empleadas se han ido (inactivas)?
    SELECT COUNT(*) FROM `proyecto-marie-tania`.`wa_fn-usec_-hr-employee-attrition`
    WHERE Attrition = 'Yes';

#### ❓ ¿Cuántas personas empleadas activas hay por género?
    SELECT Gender, COUNT(*) FROM `proyecto-marie-tania`.`wa_fn-usec_-hr-employee-attrition`
    WHERE Attrition = 'No'
    GROUP BY Gender;

#### ❓ ¿Cuál es la satisfacción laboral promedio de las personas empleadas activas?
    SELECT AVG(JobSatisfaction) FROM `proyecto-marie-tania`.`wa_fn-usec_-hr-employee-attrition`
    WHERE Attrition = 'No'



### Consultas avanzadas:
#### ❓ ¿Cuál es el ingreso mensual por género?
    SELECT Gender, avg(MonthlyIncome) FROM `proyecto-marie-tania`.`wa_fn-usec_-hr-employee-attrition`
    WHERE Attrition = 'No'
    GROUP BY Gender;

#### ❓ ¿Cuál es la distribución de personas inactivas por género?
    SELECT Gender, COUNT(*) FROM `proyecto-marie-tania`.`wa_fn-usec_-hr-employee-attrition`
    WHERE Attrition = 'Yes'
    GROUP BY Gender;

#### ❓ ¿Cuál es la satisfacción laboral promedio por género?
    SELECT Gender, AVG(JobSatisfaction) FROM `proyecto-marie-tania`.`wa_fn-usec_-hr-employee-attrition`
    WHERE Attrition = 'No'
    GROUP BY Gender;

#### ❓ ¿Cuál es el promedio de satisfacción con el ambiente laboral por género?
    SELECT Gender, AVG(EnvironmentSatisfaction) FROM `proyecto-marie-tania`.`wa_fn-usec_-hr-employee-attrition`
    WHERE Attrition = 'No'
    GROUP BY Gender;

#### ❓ ¿Cuál es el promedio de Balance Vida y Carrera por género?
    SELECT Gender, AVG(WorkLifeBalance) FROM `proyecto-marie-tania`.`wa_fn-usec_-hr-employee-attrition`
    WHERE Attrition = 'No'
    GROUP BY Gender;

#### ❓ ¿Cuál es la distribución de niveles de puesto por género, personas empleadas e ingreso promedio mensual?
    SELECT JobLevel,Gender, count(*), avg(MonthlyIncome) FROM `proyecto-marie-tania`.`wa_fn-usec_-hr-employee-attrition`
    WHERE Attrition = 'No'
    GROUP BY Gender, JobLevel
    ORDER BY JobLevel;

#### ❓ ¿Cuántas Mujeres y Hombres están empleadas en cada puesto?
    SELECT JobRole, Gender, count(*), avg(MonthlyIncome) FROM `proyecto-marie-tania`.`wa_fn-usec_-hr-employee-attrition`
    WHERE Attrition = 'No'
    GROUP BY JobRole, Gender
    ORDER BY JobRole;


## Check-list de tareas:
- [x] Elección de fuente de datos
- [x] Definición de la estructura del proyecto
- [x] Definición de la estructura de la base de datos
- [x] Carga de datos
- [x] Realizar queries básicas
- [x] Realizar queries avanzadas
- [x] Crear presentación
- [x] Subir Github


