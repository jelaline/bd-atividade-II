CREATE DATABASE Pedidos;

USE Pedidos;

CREATE TABLE Clientes (
ClienteID INT PRIMARY KEY,
Nome VARCHAR(255) NOT NULL,
Email VARCHAR(255) UNIQUE NOT NULL,
Telefone VARCHAR(30)
);

CREATE TABLE Pedidos(
PedidoID INT PRIMARY KEY,
ClienteID INT,
DataPedido DATE,
ValorTotal FLOAT,
FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

INSERT INTO Clientes (ClienteId, Nome, Email, Telefone) VALUES
(1, 'Jessica', 'jessica@gmail.com', '(71)98556-7815'),
(2, 'Michelle Atara', 'michelle@gmail.com', '(75)98654-8756'),
(3, 'Anne Caroline', 'anne@gmail.com', '(71)98765-2211'),
(4, 'Cleison', 'cleison@gmail.com', '(72)98534-6655'),
(5, 'Juliana', 'juliana@gmail.com', '(75)98543-1234');

INSERT INTO Pedidos (PedidoID, ClienteID, DataPedido, ValorTotal) VALUES
(5552, 1, '2023-09-10', 15.50),
(7362, 2, '2023-09-21', 80.00),
(8372, 3, '2023-09-24', 100.00),
(7262, 4, '2023-09-12', 87.80),
(0202, 5, '2023-09-06', 32.76);

SELECT * FROM Clientes
JOIN Pedidos on Clientes.ClienteID = Pedidos.ClienteID;

SELECT * FROM pedidos;

