# ERP: ventas

Flujo: seleccionar cliente → agregar productos → validar stock/precios → confirmar → registrar venta → actualizar inventario.

| ID | Escenario | Datos | Esperado |
|---|---|---|---|
| V-01 | Venta normal | Stock 10, cantidad 4, precio 25 | Total 100 y stock 6 |
| V-02 | Venta superior a stock | Stock 10, cantidad 11 | Rechazo, sin descuento |
| V-03 | Venta de todo el stock | Stock 10, cantidad 10, precio 25 | Total 250 y stock 0 |

**Validación cruzada:** verificar en interfaz y en tablas de ventas, detalle e inventario; no asumir que un mensaje de éxito garantiza persistencia.
