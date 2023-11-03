CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE IF NOT EXISTS autores(
	id_autor INT PRIMARY KEY AUTO_INCREMENT,
	nome_autor varchar(255)
);

CREATE TABLE IF NOT EXISTS editoras(
	id_editora INT PRIMARY KEY AUTO_INCREMENT,
    nome_editora varchar(255)
);

CREATE TABLE IF NOT EXISTS livros(
	id_livros int primary key,
    titulo varchar(255) not null,
    autor varchar(255) not null,
    editora varchar(255) not null,
    ano_publicacao int,
    isbn varchar(13)
);

SELECT * FROM livros;
ALTER TABLE livros MODIFY COLUMN id_livros
INT AUTO_INCREMENT;

ALTER TABLE livros
DROP COLUMN autor,
DROP COLUMN editora,
ADD COLUMN autor_id INT NOT NULL,
ADD COLUMN editora_id INT NOT NULL,
ADD FOREIGN KEY(autor_id) REFERENCES autores(id_autor) ON DELETE CASCADE ON UPDATE CASCADE,
ADD FOREIGN KEY(editora_id) REFERENCES editoras(id_editora) ON DELETE CASCADE ON UPDATE CASCADE;

INSERT INTO autores(nome_autor) VALUE('John Green');
INSERT INTO autores(nome_autor) VALUE('J.K. Rowling');
INSERT INTO autores(nome_autor) VALUE('J.R.R. Tolkien');
INSERT INTO autores(nome_autor) VALUE('J.D. Salinger');
INSERT INTO autores(nome_autor) VALUE('George Orwell');
INSERT INTO autores(nome_autor) VALUE('Rick Riordan');
INSERT INTO autores(nome_autor) VALUE('João Guimarães Rosa');
INSERT INTO autores(nome_autor) VALUE('Machado de Assis');
INSERT INTO autores(nome_autor) VALUE('Graciliano Ramos');
INSERT INTO autores(nome_autor) VALUE('Aluísio Azevedo');
INSERT INTO autores(nome_autor) VALUE('Mário de Andrade');

INSERT INTO editoras(nome_editora) VALUE('Intrínseca');
INSERT INTO editoras(nome_editora) VALUE('Rocco');
INSERT INTO editoras(nome_editora) VALUE('Martins Fontes');
INSERT INTO editoras(nome_editora) VALUE('Little, Brown and Company');
INSERT INTO editoras(nome_editora) VALUE('Companhia Editora Nacional');
INSERT INTO editoras(nome_editora) VALUE('Nova Fronteira');
INSERT INTO editoras(nome_editora) VALUE('Companhia das Letras');
INSERT INTO editoras(nome_editora) VALUE('Martin Claret');
INSERT INTO editoras(nome_editora) VALUE('Penguin Companhia');

INSERT INTO livros(titulo, ano_publicacao, isbn, autor_id, editora_id) VALUES('A Culpa é das Estrelas', 2012, '9788580573466', 1, 1);
INSERT INTO livros(titulo, ano_publicacao, isbn, autor_id, editora_id) VALUE('Harry Potter e a Pedra Filosofal', 1997, '9788532511010', 2, 2);
INSERT INTO livros(titulo, ano_publicacao, isbn, autor_id, editora_id) VALUE('O Senhor dos Anéis: A Sociedade do Anel', 1954, '9788533603149', 3, 3);
INSERT INTO livros(titulo, ano_publicacao, isbn, autor_id, editora_id) VALUE('The Catcher in the Rye', 1951, '9780316769488', 4, 4 );
INSERT INTO livros(titulo, ano_publicacao, isbn, autor_id, editora_id) VALUE('1984',  1949, '9788522106169', 5, 5);
INSERT INTO livros(titulo, ano_publicacao, isbn, autor_id, editora_id) VALUE('Percy Jackson e o Ladrão de Raios',  2005, '9788598078355', 6, 1);
INSERT INTO livros(titulo, ano_publicacao, isbn, autor_id, editora_id) VALUE('Grande Sertão: Veredas', 1956, '9788520923251', 7, 6);
INSERT INTO livros(titulo, ano_publicacao, isbn, autor_id, editora_id) VALUE('Memórias Póstumas de Brás Cubas', 1881,'9788535910663', 8, 7);
INSERT INTO livros(titulo, ano_publicacao, isbn, autor_id, editora_id) VALUE('Vidas Secas', 1938,'9788572326972', 9, 5);
INSERT INTO livros(titulo, ano_publicacao, isbn, autor_id, editora_id) VALUE('O Alienista', 1882,'9788572327429', 8, 8);
INSERT INTO livros(titulo, ano_publicacao, isbn, autor_id, editora_id) VALUE('O Cortiço', 1890,'9788579027048', 10, 9);
INSERT INTO livros(titulo, ano_publicacao, isbn, autor_id, editora_id) VALUE('Dom Casmurro', 1899,'9788583862093', 8, 9);
INSERT INTO livros(titulo, ano_publicacao, isbn, autor_id, editora_id) VALUE('Macunaíma', 1928,'9788503012302', 11, 5);


 