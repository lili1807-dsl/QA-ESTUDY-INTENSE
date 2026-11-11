# QA Testing Portfolio

Portafolio educativo de **QA manual y técnico** orientado a sistemas ERP, SQL Server, API REST y revisión de código JavaScript/C#. Incluye casos de prueba, reportes de defectos y ejemplos ejecutables con **datos ficticios**.

> Proyecto de aprendizaje independiente. No contiene información, software ni pruebas de sistemas internos de Syscompsa u otra empresa. Los ejemplos son simulados.

## Contenido

| Carpeta | Material |
|---|---|
| `01-Fundamentos-QA` | Conceptos, técnicas de diseño y defectos |
| `02-Pruebas-ERP` | Ventas, inventario, cuentas por cobrar y facturación |
| `03-SQL-Server` | Tablas ficticias, consultas y verificaciones QA |
| `04-Postman-API` | Colección importable, entorno y casos de prueba |
| `05-Analisis-de-Codigo` | Código defectuoso, tests y soluciones JS/C# |
| `06-Evidencias` | Plantilla de ejecución y carpeta de capturas |

## Requisitos y ejecución rápida

- **JavaScript:** Node.js 18+; `node 05-Analisis-de-Codigo/javascript/tests.js` (comprueba que los casos revelan el defecto y que la solución pasa).
- **C#:** .NET SDK 8+; `dotnet run --project 05-Analisis-de-Codigo/csharp/QAExamples.csproj`.
- **SQL Server:** SQL Server o SQL Server Express + SSMS/Azure Data Studio. Ejecuta `03-SQL-Server/01-crear-tablas.sql`, después `02-consultas-basicas.sql`, `03-joins-agrupaciones.sql` y `04-validaciones-qa.sql` en una base de datos **de práctica**. El primer script crea objetos `qa_*` y borra esos objetos si existen; **no usar en bases reales**.
- **Postman:** importa `04-Postman-API/coleccion-postman.json` y `entorno-ejemplo.postman_environment.json`. Los ejemplos usan `https://postman-echo.com` para comprobar transporte HTTP, **no** un ERP real ni reglas de negocio de clientes duplicados. No requiere credenciales. Ejecuta la colección con Collection Runner.

## Cómo estudiar

1. Lee un concepto corto y plantea un caso de prueba con entrada y salida esperada.
2. Ejecuta los ejemplos de código y compara el comportamiento defectuoso con la corrección.
3. Ejecuta las consultas SQL y verifica conteos, estados y relaciones.
4. Ejecuta las solicitudes de Postman y revisa el estado, cuerpo y pruebas automáticas.
5. Documenta hallazgos en `06-Evidencias/resultados-pruebas.md`.

## Criterios QA

Distingue **resultado esperado**, **resultado observado** y **evidencia**. No afirmes que existe un bug si no has confirmado el requisito o la causa. Evita ejecutar cambios de datos en entornos no autorizados.

## Publicar en GitHub

```bash
git init
git add .
git commit -m "Add QA learning portfolio"
git branch -M main
git remote add origin https://github.com/TU-USUARIO/QA-Testing-Portfolio.git
git push -u origin main
```

Crea primero un repositorio **vacío** en GitHub y reemplaza `TU-USUARIO`. También puedes subir los archivos desde la interfaz web. Revisa `.gitignore` antes de publicar y **nunca subas** credenciales, tokens, datos de clientes o capturas de sistemas privados.

## Alcance

Ejemplos diseñados para practicar; no constituyen una certificación ni garantizan resultados en entrevistas. Los tests muestran intencionalmente errores en versiones `buggy` y resultados correctos en versiones `fixed`.
