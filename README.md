# hr-gender-analysis
Organizational data analysis with a gender perspective.

### ¿Cuál es la necesidad o problema a resolver? 
Se busca identificar posibles desigualdades o disparidades de género dentro de la organización, en áreas como el nivel de empleo, los salarios, la rotación de personal, la satisfacción con el entorno laboral, el equilibrio entre el trabajo y la vida personal, entre otros.

Estos hallazgos pueden ayudar a la organización a tomar decisiones informadas para promover la equidad de género y mejorar el ambiente de trabajo.


### Base De Datos:
[Ver en Kaggle](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset "Ver en Kaggle")

Dataset ficticio creado por científicos de datos de IBM que simulan características de rendimiento y satisfacción laboral de un conjunto de “empleados” de IBM.
Ver en Kaggle.
Estructura de la base de datos: SQL


### 💡¿Cuál es la propuesta para resolver esa necesidad o problema? 
El objetivo principal del proyecto es proporcionar información valiosa a través del análisis de los datos del personal de la organización desde una perspectiva de género. Para esto definiremos las consultas agregando la variable “gender”.


### Consultas básicas:
¿Cuántos personas empleadas hay en la base?
COUNT EmployeeCount
¿Cuántos personas empleadas se han ido?
COUNT Atrittion
¿Cuántas personas empleadas hay por género?
COUNT EmployeeCount GROUP BY Gender
¿Cuál es la satisfacción laboral promedio?
AVG JobSatisfaction


### Consultas avanzadas:
JobLevel GROUP BY Gender
MonthlyIncome GROUP BY Gender
Atrittion GROUP BY Gender
JobSatisfaction GROUP BY Gender
EnvironmentSatisfaction GROUP BY Gender
WorkLifeBalance GROUP BY Gender
Tabla JobRole | EmployeeCount | Female | Male


### Check-list de tareas:
Elección de fuente de datos
Definición de la estructura del proyecto
Definición de la estructura de la base de datos
Carga de datos
Realizar queries básicas
Realizar queries avanzadas
Crear presentación

