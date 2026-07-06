-- Remove as tabelas antigas se elas já existirem (evita o erro)
DROP TABLE IF EXISTS Compras;
DROP TABLE IF EXISTS Clientes;

-- Criação da Tabela Clientes
CREATE TABLE Clientes (
    ID INTEGER PRIMARY KEY,
    nomeCliente VARCHAR(100),
    emailCliente VARCHAR(100)
);

-- Criação da Tabela Compras
CREATE TABLE Compras (
    CompraID INTEGER PRIMARY KEY,
    ClienteID INT,
    NomeLivro VARCHAR(150),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);
SELECT * FROM Clientes; 
SELECT * FROM Compras; 
SELECT
Clientes.nomeCliente AS "Nome do Cliente",
Compras.NomeLivro AS "Nome do Livro"
FROM
Compras
INNER JOIN
Clientes ON Compras.ClienteID = Clientes.ID;
