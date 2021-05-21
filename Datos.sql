/* BACK END -- EQUIPO 34
CUÉLLAR SEGURA PAOLA ALEJANDRA
*/
USE ProyectoWeb;
-- Insertar datos
INSERT INTO usuario(nickname, nombre, apellido, nacimiento, correo, contrasena, foto, estado) VALUES
('gloria1','Gloria', 'Paredes','1973-04-09','gloria@outlook.com', 'Aa3!5678', 'a', 'Activo'),
('toni2','Toni', 'Mohamed','1995-08-07','toni@outlook.com', 'Bb3!5678', 'b', 'Activo'),
('constantino3','Constantino', 'Canales','1977-09-15','constantino@outlook.com', 'Cc3!5678', 'c', 'Activo'),
('bernabe4','Bernabe', 'Galvan','2002-09-04','bernabe@outlook.com', 'Dd3!5678', 'd', 'Activo'),
('paulo5','Paulo', 'Moreira','2012-09-08','paulo@outlook.com', 'Ee3!5678', 'e', 'Suspendido');

INSERT INTO categoria(categoria) VALUES ('Finanzas'), ('Cocina'), ('Educación'), ('Deportes'), ('Videojuegos');

INSERT INTO pregunta(usuario_nick, categoria_id, pregunta, descripcion, foto, fecha, estado) VALUES 
('bernabe4', 1,'¿Cuándo se hace la declaración anual ante hacienda?', 'Es la primera vez que tengo que declarar impuestos y estoy muy confundido. Por favor, ayúdenme.', '01.jpg', '2021-04-01', 'Creada'),
('gloria1', 5, '¿Es buena idea regalar "Grand Theft Auto V" a un nieto?', 'Escuché a mi nieto decir que acaba de salir ese juego a la venta. Parece que le gusta mucho y me gustaría regalárselo para festejar que ya se graduó de la preparatoria. ¿Es buena idea? Es que me han dicho que puede ser una mala influencia.', '02.jpg', '2013-09-17', 'Creada'); 

INSERT INTO respuesta(usuario_nick, pregunta_id, descripcion, foto, fecha, estado) VALUES
('toni2', 1, 'La declaración anual se hace en Abril de cada año y se declara lo del año pasado. Por ejemplo, estamos en 2021, entonces lo que se declara este mes de Abril es lo del 2020.', '01.jpg', '2021-04-02', 'bernabe4'),
('bernabe4', 2, 'Creo que debería mejor hablarlo con su nieto. Solo porque lo haya mencionado no significa que esté interesado en el juego y en base a eso ya puede decidir si regalárselo o no. Puede que arruine el factor sorpresa pero es mejor que tener que andarlo regresando a la tienda y su nieto estará contento de todas formas aunque no sea una sorpresa, se lo aseguro. Ahora, segúramente esté preocupada por que se dice que el juego es violento. Si bien es cierto, dice que su nieto se está graduando de la preparatoria por lo que imagino que tendrá entre 17 y 18 años, así que no debería ser un problema ya que el juego está clasificado para personas de 17 años en adelante.', '02.jpg', '2013-09-23', 'gloria1'),
('constantino3', 2, 'Mejor regálele ropa, si le regala un videojuego se va a distraer de sus estudios.', '03.jpg', '2013-09-21', '');

INSERT INTO util(pregunta_id, usuario_nick) VALUES 
(1, 'toni2'),
(2, 'bernabe4');

INSERT INTO noutil(pregunta_id, usuario_nick) VALUES 
(2, 'toni2'),
(2, 'constantino3');

INSERT INTO favorito(pregunta_id, usuario_nick) VALUES 
(1, 'paulo5');