# Conceptos esenciales de QA

- **QA (aseguramiento de calidad):** actividades para prevenir problemas y mejorar el proceso de construcción del software.
- **Testing:** ejecución o evaluación del producto para descubrir diferencias entre lo esperado y lo observado.
- **Prueba positiva:** entradas válidas, p. ej. vender 4 unidades con stock 10.
- **Prueba negativa:** entradas inválidas, p. ej. vender 11 con stock 10.
- **Valor límite:** verificar extremos, p. ej. vender exactamente 10 de 10 disponibles.
- **Particiones de equivalencia:** agrupar entradas con comportamiento esperado semejante: cantidades válidas, superiores al stock, etc.
- **Regresión:** comprobar que un cambio no haya afectado funcionalidades existentes.
- **Reprueba (retest):** ejecutar de nuevo el caso que falló para confirmar una corrección.
- **Severidad:** impacto del defecto sobre el sistema o negocio.
- **Prioridad:** urgencia de resolverlo según contexto y riesgos.
- **Resultado esperado:** comportamiento establecido por requisito.
- **Resultado observado:** comportamiento visto durante la ejecución.
- **Evidencia:** captura, log, ID de operación o salida verificable (sin datos sensibles).

## Antes de declarar un bug

1. Confirma el requisito y el ambiente.
2. Identifica pasos y datos usados.
3. Repite de forma controlada si es posible.
4. Compara esperado vs. observado.
5. Reporta hechos; marca hipótesis y dudas por separado.
