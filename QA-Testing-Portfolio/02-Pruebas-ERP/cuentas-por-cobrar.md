# ERP: cuentas por cobrar

Saldo inicial 300; abono confirmado 100 → saldo 200. Un mismo abono no debe registrarse dos veces.

| ID | Escenario | Esperado |
|---|---|---|
| CXC-01 | Un abono de 100 | Un movimiento; saldo 200 |
| CXC-02 | Reenvío del mismo abono | Sin segundo movimiento; saldo 200 |
| CXC-03 | Abono rechazado | Saldo sin cambios |
| CXC-04 | Abono superior al saldo | No producir saldo negativo; tratamiento exacto depende de reglas confirmadas |

Verificar historial, estado, importe y referencia de pago; no anular facturas como parte de la investigación sin autorización.
