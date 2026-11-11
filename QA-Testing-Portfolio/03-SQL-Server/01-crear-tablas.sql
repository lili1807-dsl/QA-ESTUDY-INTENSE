-- SOLO para una base de datos de practica. Destruye y recrea tablas qa_*.
IF OBJECT_ID('dbo.qa_abonos','U') IS NOT NULL DROP TABLE dbo.qa_abonos;
IF OBJECT_ID('dbo.qa_facturas','U') IS NOT NULL DROP TABLE dbo.qa_facturas;
IF OBJECT_ID('dbo.qa_ventas','U') IS NOT NULL DROP TABLE dbo.qa_ventas;
IF OBJECT_ID('dbo.qa_clientes','U') IS NOT NULL DROP TABLE dbo.qa_clientes;
GO
CREATE TABLE dbo.qa_clientes (
 id_cliente INT PRIMARY KEY,
 nombre NVARCHAR(100) NOT NULL,
 cedula VARCHAR(10) NOT NULL UNIQUE
);
CREATE TABLE dbo.qa_ventas (
 id_venta INT PRIMARY KEY,
 id_cliente INT NOT NULL REFERENCES dbo.qa_clientes(id_cliente),
 total DECIMAL(12,2) NOT NULL,
 estado NVARCHAR(20) NOT NULL
);
CREATE TABLE dbo.qa_facturas (
 id_factura INT PRIMARY KEY,
 id_cliente INT NOT NULL REFERENCES dbo.qa_clientes(id_cliente),
 total DECIMAL(12,2) NOT NULL,
 estado NVARCHAR(20) NOT NULL
);
CREATE TABLE dbo.qa_abonos (
 id_movimiento INT PRIMARY KEY,
 id_factura INT NOT NULL REFERENCES dbo.qa_facturas(id_factura),
 referencia VARCHAR(30) NOT NULL,
 monto DECIMAL(12,2) NOT NULL
);
INSERT INTO dbo.qa_clientes VALUES
(1,N'Ana López','0911111111'),(2,N'Carlos Ruiz','0922222222'),(3,N'María Torres','0933333333');
INSERT INTO dbo.qa_ventas VALUES
(101,1,150,'Confirmada'),(102,2,300,'Pendiente'),
(103,1,200,'Confirmada'),(104,3,450,'Confirmada'),(105,2,100,'Cancelada');
INSERT INTO dbo.qa_facturas VALUES
(201,1,150,'Pagada'),(202,2,300,'Pendiente'),(203,3,150,'Pendiente'),(204,1,400,'Pagada');
-- Dos movimientos con la misma referencia: defecto ficticio para deteccion QA.
INSERT INTO dbo.qa_abonos VALUES
(1,202,'ABONO-001',100),(2,202,'ABONO-001',100);
GO
