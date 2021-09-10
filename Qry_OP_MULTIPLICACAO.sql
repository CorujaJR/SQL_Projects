USE Logistica;
GO

SELECT NumeroDoPedido,
PrecoUnitario,
Quantidade,
Desconto,
Total = PrecoUnitario*Quantidade
FROM TableDetalhesDoPedido