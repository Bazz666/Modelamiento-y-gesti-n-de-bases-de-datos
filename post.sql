--1. Crear Base de datos posts (1 punto)
CREATE DATABASE posts; -- \c posts para entrar a la base de datos

--2. Crear tabla post, con los atributos id, nombre de usuario, fecha de creación, contenido,descripción (1 punto)
CREATE TABLE post(id SERIAL, Nombre_de_usuario VARCHAR(25), Fecha_de_Creacion DATE, contenido VARCHAR(25),descripcion VARCHAR(25), PRIMARY KEY(id));


--3. Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos" (0.6 puntos)
INSERT INTO post (Nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES ('Pamela', '02-04-21', 'Hola Mundo', 'Primer post de Pamela');
INSERT INTO post (Nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES ('Pamela', '03-04-21', 'Chao mundo', 'Segundo post de Pamela');
INSERT INTO post (Nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES ('Carlos', '03-04-21', 'Hola mundo', 'Primer post de Carlos');

--4. Modificar la tabla post, agregando la columna título (1 punto)
ALTER TABLE post ADD titulo VARCHAR(25);

--5. Agregar título a las publicaciones ya ingresadas ( (1 punto)
UPDATE post SET titulo = 'post1' WHERE id =1;
UPDATE post SET titulo = 'post2' WHERE id =2;
UPDATE post SET titulo = 'post3' WHERE id =3;

--6. Insertar 2 post para el usuario "Pedro" (0.4 puntos)
INSERT INTO post (Nombre_de_usuario, fecha_de_creacion, contenido, descripcion,titulo) VALUES ('Pedro', '04-04-21', 'Hola Mundo', 'Primer post de Pedro','post4');
INSERT INTO post (Nombre_de_usuario, fecha_de_creacion, contenido, descripcion,titulo) VALUES ('Pedro', '04-04-21', 'Hola denuevo', 'segundo post de Pedro','post5');
--7. Eliminar el post de Carlos (1 punto)
DELETE FROM post WHERE id= 3;
--8. Ingresar un nuevo post para el usuario "Carlos" (0.6 puntos)
INSERT INTO post (Nombre_de_usuario, fecha_de_creacion, contenido, descripcion,titulo) VALUES ('Carlos', '04-04-21', 'Hola DENUEVO', 'segundo post de Carlos','post6');

------------------Parte 2------------------

--9. Crear una nueva tabla, llamada comentarios, con los atributos id, fecha y hora de creación,contenido, que se relacione con la tabla posts. (1 punto)
CREATE TABLE comentarios (id SERIAL, Fecha_y_hora TIMESTAMP,contenido VARCHAR(25) ,identificador INT, PRIMARY KEY(id),FOREIGN KEY (identificador) REFERENCES post(id));



10. Crear 2 comentarios para el post de "Pamela" y 4 para "Carlos" (0.4 puntos)
11. Crear un nuevo post para "Margarita" (1 punto)
12. Ingresar 5 comentarios para el post de Margarita. (1 punto)