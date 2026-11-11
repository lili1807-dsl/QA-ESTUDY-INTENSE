# ERP: inventario

**Reglas de práctica:** una venta confirmada descuenta unidades; una venta rechazada no modifica stock; no vender más de lo disponible.

**Pruebas recomendadas:** cantidad 1, cantidad igual al stock, cantidad superior al stock, dos ventas consecutivas, reversión autorizada de venta (si el requisito lo contempla).

**Riesgos:** stock negativo, sobreventa, diferencias físico/sistema, doble descuento. Registrar stock antes/después y movimiento de Kardex si existe.
