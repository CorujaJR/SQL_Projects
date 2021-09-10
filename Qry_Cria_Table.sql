USE Logistica;
GO

CREATE TABLE TblClientes
(CodigoDoCliente char(10) PRIMARY KEY NOT NULL,
NomeDaEmpresa varchar(70) NOT NULL,
NomeDoContato varchar(70) NOT NULL,
CargoDoContato varchar(40) NULL,
Endereco varchar(50) NULL,
Cidade varchar(25) NULL,
Regiao varchar(25) NULL,
CEP char(15) NULL,
Pais varchar(25) NULL,
Telefone char(20) NULL,
Fax char(20) NULL);

CREATE TABLE TblTransportadoras
(CodigoDaTransportadora int PRIMARY KEY NOT NULL,
NomeDaEmpresa varchar(30) NOT NULL,
Telefone char(20) NULL);

CREATE TABLE TblCategorias
(CodigoDaCategoria int PRIMARY KEY NOT NULL,
NomeDaCategoria	varchar(30) NOT NULL,	
Descricao varchar(100) NULL);

CREATE TABLE TblDetalhesdoPedido
(NumeroDoPedido int NOT NULL,
CodigoDoProduto	int NOT NULL,
PrecoUnitario money NULL,
Quantidade int NULL,
Desconto float NULL);

CREATE TABLE TblFornecedores
(CodigoDoFornecedor int PRIMARY KEY NOT NULL,
NomeDaEmpresa varchar(70) NOT NULL,
NomeDoContato varchar(70) NOT NULL,
CargoDoContato varchar(40) NULL,
Endereco varchar(50) NULL,
Cidade varchar(25) NULL,
Regiao varchar(25) NULL,
CEP char(15) NULL,
Pais varchar(25) NULL,
Telefone char(20) NULL,
Fax char(20) NULL);

CREATE TABLE TblFuncionarios
(CodigoDoFuncionario int PRIMARY KEY NOT NULL,
Sobrenome varchar(30) NULL,
Nome varchar(30) NOT NULL,
Cargo varchar(40) NULL,
Tratamento char(10) NULL,
DataDeNascimento date NULL,
DataDeContratacao date NULL,
Endereco varchar(50) NULL,
Cidade varchar(25) NULL,
Regiao varchar(25) NULL,
CEP char(15) NULL,
Pais varchar(25) NULL,
TelefoneResidencial char(20) NULL,
Ramal char(5) NULL,
Observacoes varchar(200) NULL);

CREATE TABLE TblPedidos
(NumeroDoPedido int PRIMARY KEY NOT NULL,
CodigoDoCliente char(10) NOT NULL,
CodigoDoFuncionario int NOT NULL,
DataDoPedido date NULL,
DataDeEntrega date NULL,
DataDeEnvio date NULL,
CodigoDaTransportadora int NOT NULL,
Frete money NULL,
NomeDoDestinatario varchar(50) NULL,
EnderecoDoDestinatario varchar(50) NULL,
CEPdeDestino char(15) NULL,
PaisDeDestino varchar(25) NULL,
CidadeDeDestino varchar(25) NULL,
RegiaoDeDestino varchar(25) NULL);

CREATE TABLE TblProdutos
(CodigoDoProduto int PRIMARY KEY NOT NULL,
NomeDoProduto varchar(50) NOT NULL,
CodigoDoFornecedor int NOT NULL,
CodigoDaCategoria int NOT NULL,
QuantidadePorUnidade char(30) NULL,
PrecoUnitario money NULL,
UnidadesEmEstoque int NULL,
UnidadesPedidas int NULL,
NivelDeReposicao int NULL,
Descontinuado int NULL);

ALTER TABLE TblDetalhesdoPedido
ADD PRIMARY KEY (NumeroDoPedido, CodigoDoProduto);

ALTER TABLE TblPedidos
ADD CONSTRAINT F1 FOREIGN KEY(CodigoDoCliente)
  REFERENCES TblClientes(CodigoDoCliente);

ALTER TABLE TblPedidos
ADD CONSTRAINT F2 FOREIGN KEY(CodigoDoFuncionario)
  REFERENCES TblFuncionarios(CodigoDoFuncionario);

ALTER TABLE TblPedidos
ADD CONSTRAINT F3 FOREIGN KEY(CodigoDaTransportadora)
  REFERENCES TblTransportadoras(CodigoDaTransportadora);

ALTER TABLE TblDetalhesdoPedido
ADD CONSTRAINT F4 FOREIGN KEY(NumeroDoPedido)
  REFERENCES TblPedidos(NumeroDoPedido);

ALTER TABLE TblDetalhesdoPedido
ADD CONSTRAINT F5 FOREIGN KEY(CodigoDoProduto)
  REFERENCES TblProdutos(CodigoDoProduto);

ALTER TABLE TblProdutos
ADD CONSTRAINT F6 FOREIGN KEY(CodigoDoFornecedor)
  REFERENCES TblFornecedores(CodigoDoFornecedor);

ALTER TABLE TblProdutos
ADD CONSTRAINT F7 FOREIGN KEY(CodigoDaCategoria)
  REFERENCES TblCategorias(CodigoDaCategoria);
