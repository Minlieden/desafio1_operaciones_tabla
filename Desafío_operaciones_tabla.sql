--1.Crear Base de datos posts
CREATE DATABASE posts;

--2. Crear tabla post, con los atributos id, nombre de usuario, fecha de creación, contenido,descripción
CREATE TABLE post (id SERIAL PRIMARY KEY, nombre_de_usuario VARCHAR(50),fecha_de_creacion DATE, contenido VARCHAR (133), descripcion VARCHAR(40));

--3. Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos" 
INSERT INTO post (nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES ('Pamela', '2021-02-25','hoy fue un gran dia ......', 'mi dia hoy'), ('Pamela', '2021-03-21','hoy la pase bomba debido a ......', 'mi gran momento'), ('Carlos', '2021-03-22','fiesta de la sofi ......', 'relatos de la fiesta');

--4. Modificar la tabla post, agregando la columna título 
ALTER TABLE post ADD titulo VARCHAR(30);

--5. Agregar título a las publicaciones ya ingresadas 
UPDATE post SET titulo = ' Mi Dia' WHERE descripcion = 'mi dia hoy';
UPDATE post SET titulo = ' Mi Momento' WHERE descripcion = 'mi gran momento';
UPDATE post SET titulo = ' La Fiesta' WHERE descripcion = 'relatos de la fiesta';
--6. Insertar 2 post para el usuario "Pedro"


--7. Eliminar el post de Carlos 
DELETE FROM post WHERE nombre_de_usuario = 'Carlos';

--8. Ingresar un nuevo post para el usuario "Carlos" 
INSERT INTO post (nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES ('Carlos', '2021-03-25','lorem ipsum ......', 'Lorem', 'Lorem ipsum');

-- Parte 2
--9. Crear una nueva tabla, llamada comentarios, con los atributos id, fecha y hora de creación,contenido, que se relacione con la tabla posts.
CREATE TABLE comentarios (id SERIAL PRIMARY KEY, fecha DATE, hora_de_creación TIME ,contenido VARCHAR(50), post_id INT , CONSTRAINT fk_post FOREIGN KEY (post_id) REFERENCES post(id));

--10. Crear 2 comentarios para el post de "Pamela" y 4 para "Carlos"
INSERT INTO comentarios (fecha, hora_de_creación,contenido,post_id) VALUES ('2021-02-26','10:00:00',' que bien amigui',1), ('2021-02-26','16:00:00',' lo pasamos genial ese dia',1),('2021-03-25','16:00:00','buena,jajajja',4),('2021-03-26','10:00:00','XP',4),('2021-03-26','11:30:00','de seguro solo estas probando leseras',4),('2021-03-26','14:00:00',' te equivocaste en el lorem, Orz',4);

--11. Crear un nuevo post para "Margarita"
INSERT INTO post (nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES ('Margarita', '2021-03-27','paseando por la plaza ...', 'caminata','descubriendo cosas en mi dia');

--12. Ingresar 5 comentarios para el post de Margarita.
INSERT INTO comentarios (fecha, hora_de_creación,contenido,post_id) VALUES ('2021-03-27','10:00:00','que bien',5), ('2021-03-27','12:00:00','buena caminata',5),('2021-03-27','14:00:00','te vi por alli',5),('2021-03-27','16:00:00','y quien era el acompañante 1313',5),('2021-03-27','18:00:00','supongo que la pasaste bien',5);
