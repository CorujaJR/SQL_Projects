USE Logistica;
GO

UPDATE TblDetalhesDoPedido
SET PrecoUnitario = -9.80
WHERE NumeroDoPedido = 10248 AND PrecoUnitario = 9.80

SELECT NumeroDoPedido,
ABS (PrecoUnitario)
FROM TblDetalhesDoPedido
WHERE NumeroDoPedido = 10248