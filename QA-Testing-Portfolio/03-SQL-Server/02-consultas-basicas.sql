-- Ventas confirmadas
SELECT * FROM dbo.qa_ventas WHERE estado = N'Confirmada';
-- Factura por identificador
SELECT * FROM dbo.qa_facturas WHERE id_factura = 203;
-- Facturas pendientes
SELECT * FROM dbo.qa_facturas WHERE estado = N'Pendiente';
-- Ordenar ventas por importe
SELECT id_venta, total FROM dbo.qa_ventas ORDER BY total DESC;
