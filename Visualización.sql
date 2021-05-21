/* BACK END -- EQUIPO 34
CUÉLLAR SEGURA PAOLA ALEJANDRA
*/
USE ProyectoWeb;
-- Visualizacion
SELECT nickname, nombre, apellido, nacimiento, correo, contrasena, fecha, estado FROM usuario;

SELECT categoria.categoria, pregunta.usuario_nick, pregunta.pregunta, pregunta.descripcion, pregunta.foto, pregunta.fecha, COUNT(util.usuario_nick), COUNT(noutil.usuario_nick) FROM categoria
INNER JOIN pregunta ON categoria.id=pregunta.categoria_id
INNER JOIN util ON pregunta.id=util.pregunta_id
GROUP BY pregunta.id;

SELECT categoria.categoria, pregunta.usuario_nick, pregunta.pregunta, pregunta.descripcion, pregunta.foto, pregunta.fecha, COUNT(util.usuario_nick), COUNT(noutil.usuario_nick) FROM categoria
INNER JOIN pregunta ON categoria.id=pregunta.categoria_id
INNER JOIN noutil ON pregunta.id=noutil.pregunta_id
GROUP BY pregunta.id;
