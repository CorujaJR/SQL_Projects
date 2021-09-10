USE Logistica;
GO
SELECT * FROM TableClientes
WHERE Pais NOT IN ('Argentina', 'México', 'Suécia', 'Espanha');