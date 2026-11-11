-- Nombre de cliente, venta y total
SELECT c.nombre, v.id_venta, v.total
FROM dbo.qa_clientes AS c
INNER JOIN dbo.qa_ventas AS v ON c.id_cliente = v.id_cliente;
-- Cantidad y suma de ventas confirmadas (esperado: 3 y 800)
SELECT COUNT(*) AS cantidad, SUM(total) AS total_confirmado
FROM dbo.qa_ventas WHERE estado = N'Confirmada';
-- Total confirmado por cliente
SELECT c.nombre, COUNT(*) AS ventas, SUM(v.total) AS total
FROM dbo.qa_clientes AS c
INNER JOIN dbo.qa_ventas AS v ON c.id_cliente = v.id_cliente
WHERE v.estado = N'Confirmada'
GROUP BY c.id_cliente, c.nombre;
