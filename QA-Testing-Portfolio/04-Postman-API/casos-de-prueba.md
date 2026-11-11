# Casos de prueba API

| ID | Escenario | Datos | Resultado esperado |
|---|---|---|---|
| API-01 | GET de eco | `origen=qa` | HTTP 200 y argumento `origen=qa` |
| API-02 | POST JSON de eco | `nombre=Ana López` | HTTP 200 y cuerpo JSON reflejado (Postman Echo) |
| API-03 | Alta cliente nuevo (ERP hipotético) | Cédula nueva | HTTP 201 y cliente persistido, si contrato lo establece |
| API-04 | Alta cliente duplicado (ERP hipotético) | Cédula existente | No crear segundo cliente; código según contrato (p. ej., 409) |
| API-05 | Petición sin credenciales (ERP hipotético) | Token ausente | Rechazo según política de autenticación (a menudo 401) |

Los casos API-03 a API-05 son **diseños**, no se ejecutan contra Postman Echo. No se incluye URL ni credenciales de un ERP real.
