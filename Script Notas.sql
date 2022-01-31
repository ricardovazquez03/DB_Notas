#Creación de la base de datos administracion_notas
CREATE SCHEMA `administracion_notas` DEFAULT CHARACTER SET utf8 ;
USE administracion_notas;

#Creación de las tablas
CREATE TABLE usuarios (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE notas (
id INT NOT NULL AUTO_INCREMENT,
titulo VARCHAR(100) NOT NULL,
creacion DATE NOT NULL,
modificacion DATE NOT NULL,
descripcion TEXT NOT NULL,
permisos_eliminacion BIT NOT NULL,
id_usuarios INT,
PRIMARY KEY(id),
FOREIGN KEY (id_usuarios) REFERENCES usuarios(id)
);

CREATE TABLE categoria (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
categoria_titulo VARCHAR(50) NOT NULL
);

CREATE TABLE categoria_notas (
id INT NOT NULL AUTO_INCREMENT,
id_categoria INT,
id_notas INT,
PRIMARY KEY(id),
FOREIGN KEY (id_notas) REFERENCES notas(id),
FOREIGN KEY (id_categoria) REFERENCES categoria(id)
);

#Insertando 10 registros en cada tabla
INSERT INTO categoria
VALUES (DEFAULT,"TECNOLOGIA"),(DEFAULT, "DEPORTES"),(DEFAULT, "ENTRETENIMIENTO"),(DEFAULT, "BIENESTAR"),(DEFAULT, "ARTE"),(DEFAULT, "ECONOMIA"),(DEFAULT,"POLITICA"),(DEFAULT,"CIENCIA"),(DEFAULT,"MUSICA"),(DEFAULT,"SOCIEDAD");

INSERT INTO usuarios 
VALUES (DEFAULT,"RICARDO VAZQUEZ GARCIA","ricardo.vazquez@gmail.com"),(DEFAULT,"MARTHA VIVIANA PEÑA TORRES","martha.viviana@hotmail.com"),(DEFAULT,"CRUZ PAREDES FERNANDEZ","cruz.paredes@live.com"),(DEFAULT,"LUNA VAZQUEZ PEÑA","luna.vazquez@hotmail.com"),(DEFAULT,"CAMELIO GARCIA PEREZ","camelio.garcia@gmail.com"),(DEFAULT,"MATEO MORALES MENDEZ","mateo.morales@live.com"),(DEFAULT,"NIDIA NUÑEZ NODAL","nidia.nuñez@gmail.com"),(DEFAULT,"PEDRO PEREZ PASTEUR","pedro.perez@live.com"),(DEFAULT,"OSCAR OLARTE ORTIZ","oscar.olarte@hotmail.com"),(DEFAULT,"LUIS LONGORIA LOPEZ","luis.longoria@gmail.com");

INSERT INTO notas 
VALUES (DEFAULT,"Titulo 1","2022-01-29","2022-01-30","Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aut, exercitationem fugit quasi illo aperiam, nulla porro obcaecati facere consectetur, atque modi magni corporis explicabo ab et. Debitis voluptatum est minima?",1,5),(DEFAULT,"Titulo 2","2022-01-30","2022-01-31","Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aut, exercitationem fugit quasi illo aperiam, nulla porro obcaecati facere consectetur, atque modi magni corporis explicabo ab et. Debitis voluptatum est minima?",1,3),(DEFAULT,"Titulo 3","2022-01-31","2022-01-31","Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aut, exercitationem fugit quasi illo aperiam, nulla porro obcaecati facere consectetur, atque modi magni corporis explicabo ab et. Debitis voluptatum est minima?",0,6),(DEFAULT,"Titulo 4","2022-01-25","2022-01-29","Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aut, exercitationem fugit quasi illo aperiam, nulla porro obcaecati facere consectetur, atque modi magni corporis explicabo ab et. Debitis voluptatum est minima?",1,2),(DEFAULT,"Titulo 5","2022-01-20","2022-01-22","Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aut, exercitationem fugit quasi illo aperiam, nulla porro obcaecati facere consectetur, atque modi magni corporis explicabo ab et. Debitis voluptatum est minima?",1,4),(DEFAULT,"Titulo 6","2022-01-31","2022-01-31","Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aut, exercitationem fugit quasi illo aperiam, nulla porro obcaecati facere consectetur, atque modi magni corporis explicabo ab et. Debitis voluptatum est minima?",0,2),(DEFAULT,"Titulo 7","2022-01-18","2022-01-20","Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aut, exercitationem fugit quasi illo aperiam, nulla porro obcaecati facere consectetur, atque modi magni corporis explicabo ab et. Debitis voluptatum est minima?",1,6),(DEFAULT,"Titulo 8","2022-01-14","2022-01-15","Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aut, exercitationem fugit quasi illo aperiam, nulla porro obcaecati facere consectetur, atque modi magni corporis explicabo ab et. Debitis voluptatum est minima?",0,5),(DEFAULT,"Titulo 9","2022-01-03","2022-01-14","Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aut, exercitationem fugit quasi illo aperiam, nulla porro obcaecati facere consectetur, atque modi magni corporis explicabo ab et. Debitis voluptatum est minima?",1,8),(DEFAULT,"Titulo 10","2022-01-21","2022-01-31","Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aut, exercitationem fugit quasi illo aperiam, nulla porro obcaecati facere consectetur, atque modi magni corporis explicabo ab et. Debitis voluptatum est minima?",1,7); 

INSERT INTO categoria_notas
VALUES (DEFAULT, "5","1"),(DEFAULT, "7","2"),(DEFAULT, "5","3"),(DEFAULT, "5","4"),(DEFAULT, "8","5"),(DEFAULT, "7","6"),(DEFAULT, "3","8"),(DEFAULT, "2","7"),(DEFAULT, "10","9"),(DEFAULT, "1","10");