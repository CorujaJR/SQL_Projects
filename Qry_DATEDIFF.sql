USE Logistica;
GO
SELECT DATEDIFF (
 DAY,
 DataDoPedido,
 GETDATE()
 )
FROM TblPedidos
WHERE DataDoPedido= '2011-04-18'