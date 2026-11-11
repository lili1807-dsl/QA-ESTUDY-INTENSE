# Casos de prueba: diseño y ejemplos

Plantilla: **ID | requisito | precondición | datos | pasos | resultado esperado | resultado observado | estado**.

| ID | Escenario | Precondición | Datos | Pasos | Resultado esperado |
|---|---|---|---|---|---|
| QA-001 | Venta válida | Stock 10, sin impuestos | Cantidad 4, precio 25 | Registrar venta | Total 100, stock 6 |
| QA-002 | Stock insuficiente | Stock 10 | Cantidad 11 | Registrar venta | Rechazo, stock 10 |
| QA-003 | Límite exacto | Stock 10 | Cantidad 10, precio 25 | Registrar venta | Total 250, stock 0 |
| QA-004 | Abono único | Factura pendiente 300 | Abono 100 | Registrar una vez | Un movimiento, saldo 200 |
| QA-005 | Abono repetido | Factura pendiente 300 | Abono 100, mismo identificador | Reenviar la misma operación | No duplicar movimiento; saldo 200 |
| QA-006 | Cliente duplicado | Cédula ya registrada | Misma cédula | Crear otro cliente | No crear segundo cliente |

> Cada caso de inventario inicia con stock restablecido a 10. El rechazo de cantidad cero debe confirmarse como requisito antes de exigirlo.

## Técnicas

**Partición de equivalencia (inventario):** cantidad de 1 a 10 (válida bajo reglas asumidas), cantidad mayor que 10 (inválida). Cantidad cero/negativa requiere requisito específico para definir respuesta esperada.

**Valores límite:** 9, 10 y 11 unidades cuando el stock es 10.

**Riesgos:** sobreventa, saldos incorrectos, registros duplicados, facturas inconsistentes.
