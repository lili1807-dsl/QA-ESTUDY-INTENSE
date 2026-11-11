# API REST y Postman

- **GET:** recuperar información.
- **POST:** enviar datos o solicitar creación.
- **PUT:** reemplazar/actualizar un recurso según contrato de API.
- **200 OK:** solicitud atendida; validar también contenido.
- **201 Created:** recurso creado.
- **400 Bad Request:** petición inválida (según contrato).
- **401 Unauthorized:** faltan credenciales válidas.
- **404 Not Found:** recurso no encontrado.
- **409 Conflict:** posible conflicto por duplicado, si el contrato así lo define.
- **500:** error del servidor.

**Clave QA:** un código 200/201 no prueba por sí solo que se cumplan las reglas de negocio.

## Colección ejecutable

La colección usa el servicio público Postman Echo para demostrar GET y POST y ejecutar assertions en Postman. Este servicio devuelve un eco de los datos y **no** aplica reglas de unicidad ni almacena clientes de un ERP.

Importa `coleccion-postman.json` y `entorno-ejemplo.postman_environment.json`; selecciona el entorno y ejecuta la colección. Requiere conexión a internet.
