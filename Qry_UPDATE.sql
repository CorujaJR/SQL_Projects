USE Logistica;
GO

UPDATE TableClientes
SET CodigoDoCliente = 'KING'
WHERE CodigoDoCliente = 'QUEENB'

SELECT * FROM TableClientes
WHERE CodigoDoCliente = 'KING'