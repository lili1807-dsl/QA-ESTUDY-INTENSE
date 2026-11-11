# SQL Server para QA

Ejecuta scripts **en este orden** en una base de datos de práctica: `01-crear-tablas.sql`, `02-consultas-basicas.sql`, `03-joins-agrupaciones.sql`, `04-validaciones-qa.sql`.

**Advertencia:** el primer script elimina las tablas `qa_*` si ya existen y las recrea. No ejecutarlo en sistemas empresariales ni en una BD con datos que debas conservar.

Las tablas son ficticias y deliberadamente contienen una factura pendiente y un abono duplicado para practicar hallazgos.
