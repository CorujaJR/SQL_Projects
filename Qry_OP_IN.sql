USE Logistica;
GO
SELECT
Nomedaempresa, 
NomeDoContato, 
Endereco, 
Pais
FROM TableClientes
WHERE Pais IN('Brasil', 'Alemanha', 'Reino Unido');