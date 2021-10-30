DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos (
    plano_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    valor DOUBLE NOT NULL
);

CREATE TABLE artistas (
    artista_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE usuarios (
    usuario_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    plano_id INT NOT NULL,
    FOREIGN KEY (plano_id)
        REFERENCES planos (plano_id)
);

CREATE TABLE albuns (
    album_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    artista_id INT NOT NULL,
    FOREIGN KEY (artista_id)
        REFERENCES artistas (artista_id)
);

CREATE TABLE musicas (
    musica_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    album_id INT NOT NULL,
    artista_id INT NOT NULL,
    FOREIGN KEY (artista_id)
        REFERENCES artistas (artista_id),
    FOREIGN KEY (album_id)
        REFERENCES albuns (album_id)
);

CREATE TABLE historico (
	usuario_id	INT NOT NULL,
    musica_id	INT NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
    FOREIGN KEY (musica_id) REFERENCES musicas (musica_id),
    CONSTRAINT PRIMARY KEY (usuario_id, musica_id)
);

CREATE TABLE seguidores (
	usuario_id	INT NOT NULL,
    artista_id	INT NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
    FOREIGN KEY (artista_id) REFERENCES artistas (artista_id),
    CONSTRAINT PRIMARY KEY (usuario_id, artista_id)
);

INSERT INTO planos(nome, valor)
  VALUES('gratuito', 0),
        ('universitário', 5.99),
        ('familiar', 7.99);

INSERT INTO artistas(nome)
  VALUES('Walter Phoenix'),
        ('Peter Strong'),
        ('Lance Day'),
        ('Freedie Shannon');
		
INSERT INTO albuns(nome, artista_id) 
	VALUES('Envious', 1), 
		    ('Exuberant', 1),
        ('Hallowed Steam', 2),
        ('Incandescent', 3), 
		    ('Temporary Culture', 4);
          
INSERT INTO musicas(nome, album_id, artista_id) 
	VALUES('Soul For Us', 1, 1), 
		    ('Reflections Of Magic', 1, 1),
        ('Dance With Her Own', 1, 1),
        ('Troubles Of My Inner Fire', 2, 1),
        ('Time Fireworks', 2, 1),
        ('Magic Circus', 3, 2),
        ('Honey, So Do I', 3, 2),
        ("Sweetie, Let's Go Wild", 3, 2),
        ('She Knows', 3, 2),
        ('Fantasy For Me', 4, 3),
        ('Celebration Of More', 4, 3),
        ('Rock His Everything', 4, 3),
        ('Home Forever', 4, 3),
        ('Diamond Power', 4, 3),
        ("Honey, Let's Be Silly", 4, 3),
  		  ('Thang Of Thunder', 5, 4),
        ('Words Of Her Life', 5, 4),
        ('Without My Streets', 5, 4);

INSERT INTO usuarios(nome, idade, plano_id)
  VALUES('Thati', 23, 1), ('Cintia', 35, 3), ('Bill', 20, 2), ('Roger', 45, 1);

INSERT INTO historico(usuario_id, musica_id)
	VALUES(1, 1), (1, 6), (1, 14), (1, 16), (2, 13), (2, 17), (2, 2), (2, 15), (3, 4), (3, 16), (3, 6),
		    (4, 3), (4, 18), (4, 11);
		
INSERT INTO seguidores(usuario_id, artista_id)
  VALUES(1, 1), (1, 4), (1, 3), (2, 1), (2, 3), (3, 2), (3, 1), (4, 4);


