CREATE DATABASE Blog;

USE Blog;

CREATE TABLE Artigos(
ArtigoId INT AUTO_INCREMENT PRIMARY KEY,
Titulo VARCHAR(255) NOT NULL,
Conteudo TEXT,
DataPublicacao DATE
);

CREATE TABLE Comentarios(
ComentarioId INT AUTO_INCREMENT PRIMARY KEY,
ArtigoId INT,
Autor VARCHAR(50) NOT NULL,
Texto TEXT,
DataComentario DATE,
FOREIGN KEY (ArtigoId) REFERENCES Artigos(ArtigoId)
);

INSERT INTO Artigos (Titulo, Conteudo, DataPublicacao) VALUES
('Carros esportivos', 'Carros', '2023-10-08'),
('Famosos ricos', 'Famosos', '2023-11-07'),
('Culinaria Brasileira', 'Culinaria', '2023-06-06'),
('Raças de cachorros', 'Animais domesticos', '2023-04-05'),
('Vida Fitness', 'Saúde', '2023-08-04');

INSERT INTO Comentarios (ArtigoId, Autor, Texto, DataComentario) VALUES
(1, 'Jessica', 'Melhores carros em 2023', '2023-10-08'),
(2, 'André', 'Veja os famosos mais ricos do Brasil', '2023-11-08'),
(3, 'Roberto', 'As melhores comidas brasileiras', '2023-06-06'),
(4, 'Maria', 'As raças de cachorros mais preferidas entre as pessoas', '2023-04-05'),
(5, 'Eduarda', 'Dados sobre a alimentação das pessoas', '2023-08-04');

SELECT * FROM Artigos
JOIN Comentarios on Comentarios.ArtigoId = Artigos.ArtigoId;

SELECT * FROM Comentarios;

