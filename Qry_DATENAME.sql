USE Logistica;
GO
SELECT DATENAME(WEEKDAY, DataDoPedido) FROM TblPedidos
WHERE DataDoPedido= '2011-04-18'