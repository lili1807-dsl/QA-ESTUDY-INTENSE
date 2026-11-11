# ERP: facturación

**Ejemplo:** precio 25, cantidad 4, sin impuestos ni descuentos → subtotal y total 100.

Verificaciones: número de factura, cliente, detalle, cantidades, total, estado y persistencia. Probar cálculos, anulaciones únicamente si están especificadas, y coherencia entre pantalla y BD.

**Defecto simulado:** interfaz muestra «Pagada» mientras la base de datos indica «Pendiente». Investigar sincronización, transacción y caché antes de concluir causa.
