/* BACK END -- EQUIPO 34
CUÉLLAR SEGURA PAOLA ALEJANDRA
*/

CREATE DATABASE ProyectoWeb;
USE ProyectoWeb;
-- Tablas
CREATE TABLE usuario(
nickname VARCHAR(30) NOT NULL PRIMARY KEY,
nombre VARCHAR(30) NOT NULL,
apellido VARCHAR(30) NOT NULL,
nacimiento DATE NOT NULL,
correo VARCHAR(30) NOT NULL,
contrasena VARCHAR(30) NOT NULL,
foto TEXT NOT NULL,
fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
estado VARCHAR(30) NOT NULL
);

CREATE TABLE categoria(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
categoria VARCHAR(30) NOT NULL
);

CREATE TABLE pregunta(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
usuario_nick VARCHAR(30) NOT NULL, -- Dueño de la pregunta
categoria_id INT NOT NULL,
pregunta TEXT NOT NULL,
descripcion TEXT NOT NULL,
foto TEXT NOT NULL,
fecha DATE NOT NULL,
estado VARCHAR(30) NOT NULL,
FOREIGN KEY (usuario_nick) REFERENCES usuario(nickname), -- Dueño de la pregunta
FOREIGN KEY (categoria_id) REFERENCES categoria(id)
);

CREATE TABLE respuesta(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
usuario_nick VARCHAR(30) NOT NULL, -- Dueño de la respuesta
pregunta_id INT NOT NULL,
descripcion TEXT NOT NULL,
foto TEXT NOT NULL,
fecha DATE NOT NULL,
estado VARCHAR(30) NOT NULL,
FOREIGN KEY (usuario_nick) REFERENCES usuario(nickname),
FOREIGN KEY (pregunta_id) REFERENCES pregunta(id),
FOREIGN KEY (estado) REFERENCES pregunta(usuario_nick) -- Dueño de la pregunta
);

CREATE TABLE util(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
pregunta_id INT NOT NULL,
respuesta_id INT NOT NULL,
usuario_nick VARCHAR(30) NOT NULL,
FOREIGN KEY (usuario_nick) REFERENCES usuario(nickname),
FOREIGN KEY (pregunta_id) REFERENCES pregunta(id)
);

CREATE TABLE noutil(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
pregunta_id INT NOT NULL,
usuario_nick VARCHAR(30) NOT NULL,
FOREIGN KEY (usuario_nick) REFERENCES usuario(nickname),
FOREIGN KEY (pregunta_id) REFERENCES pregunta(id)
);

CREATE TABLE favorito(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
pregunta_id INT NOT NULL,
usuario_nick VARCHAR(30) NOT NULL,
FOREIGN KEY (usuario_nick) REFERENCES usuario(nickname),
FOREIGN KEY (pregunta_id) REFERENCES pregunta(id)
);