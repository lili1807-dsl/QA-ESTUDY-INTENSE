-- Detectar referencias de abono repetidas (esperado: ABONO-001 con 2 movimientos)
SELECT id_factura, referencia, COUNT(*) AS repeticiones
FROM dbo.qa_abonos
GROUP BY id_factura, referencia
HAVING COUNT(*) > 1;
-- Comparar suma de abonos almacenados con deuda de factura (ejercicio)
SELECT f.id_factura, f.total AS total_factura,
 COALESCE(SUM(a.monto), 0) AS abonos_almacenados,
 f.total - COALESCE(SUM(a.monto), 0) AS saldo_calculado
FROM dbo.qa_facturas AS f
LEFT JOIN dbo.qa_abonos AS a ON f.id_factura = a.id_factura
GROUP BY f.id_factura, f.total;
-- OJO: el saldo calculado refleja movimientos almacenados, incluidos duplicados.
-- No demuestra por si solo que el pago bancario se realizo.
