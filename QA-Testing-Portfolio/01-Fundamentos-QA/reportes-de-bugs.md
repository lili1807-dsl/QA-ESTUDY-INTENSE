# Reportes de defectos

## Plantilla

- **ID y título:**
- **Módulo y versión:**
- **Ambiente y fecha:**
- **Precondiciones y datos ficticios:**
- **Pasos para reproducir:**
- **Resultado esperado (requisito):**
- **Resultado observado:**
- **Frecuencia:**
- **Severidad y motivo:**
- **Prioridad propuesta y motivo:**
- **Evidencia:**
- **Estado / responsable:**

## Ejemplo BUG-001: abono duplicado

**Ambiente:** QA local (simulado). **Precondición:** factura ficticia con saldo 300.

1. Abrir la factura.
2. Ingresar abono 100.
3. Presionar una sola vez «Registrar abono».
4. Consultar movimientos y saldo.

**Esperado:** un movimiento de 100, saldo 200. **Observado:** dos movimientos de 100, saldo 100. **Severidad:** alta por impacto financiero. **Prioridad sugerida:** alta antes de liberar, sujeta a evaluación del equipo. **Evidencia:** capturas anonimizadas de movimientos y saldo. **Causa raíz:** no determinada.
