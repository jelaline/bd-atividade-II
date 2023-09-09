CREATE DATABASE Empresa;

use empresa;


CREATE TABLE Departamentos(
DepartamentoId INT AUTO_INCREMENT PRIMARY KEY,
NomeDepartamento VARCHAR(255) NOT NULL UNIQUE
);


CREATE TABLE Funcionarios(
FuncionarioId INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255) NOT NULL,
Cargo VARCHAR(255),
Salario DECIMAL(10, 2),
DepartamentoId INT,
FOREIGN KEY (DepartamentoId) REFERENCES Departamentos(DepartamentoId)
);

INSERT INTO Departamentos (NomeDepartamento) VALUES
('Saude'),
('Advocacia'),
('TI'),
('Marketing'),
('Financeiro');

INSERT INTO Funcionarios (Nome, Cargo, Salario, DepartamentoId) VALUES
('Michelle Atara', 'Médica', 500.000, 1),
('Juliana', 'Advogada', 150.000, 2),
('Jessica Aline', 'Programadora Full Stack', 100.000, 3),
('Anne', 'Consultora', 5500.00, 4),
('Cleison', 'Contador', 6500.00, 5);


SELECT Funcionarios.FuncionarioId, Funcionarios.Nome, Funcionarios.Cargo, Departamentos.NomeDepartamento, Funcionarios.Salario, Departamentos.DepartamentoId
FROM Funcionarios
JOIN Departamentos on Funcionarios.DepartamentoId = Departamentos.DepartamentoId;

select * from departamentos;
select * from funcionarios;




