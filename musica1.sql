-- Ejercicio de Musica1 --
create database dbmusica1;

-- Seleccionamos la DB --
use dbmusica1;

-- Creamos la Tabla de la entidad Género --
create table genero(
idgenero int unsigned not null auto_increment,
nombregenero varchar(100),
primary key(idgenero)
);

-- Creamos la Tabla de la entidad Album --
create table album(
idalbum int unsigned not null auto_increment,
titulo varchar(200),
rating tinyint unsigned,
premios varchar(80),
lanzamiento date,
generoid int unsigned not null,
primary key(idalbum),
foreign key(generoid) references genero(idgenero)
);

-- Creamos la Tabla de la entidad Interprete --
create table interprete(
idinterprete int unsigned not null auto_increment,
nombre varchar(120) not null,
ratinginterprete tinyint,
primary key(idinterprete)
);

-- Creamos la Tabla intermedia entre Album e Interprete --
create table album_interprete(
id int unsigned not null auto_increment,
albumid int unsigned not null,
interpreteid int unsigned not null,
primary key(id),
foreign key(albumid) references album(idalbum),
foreign key(interpreteid) references interprete(idInterprete)
);

-- Cargamos Datos en la Tabla Género --
insert into genero values (null, "Clásico");
insert into genero values (null, "Folklore");
insert into genero values (null, "Romántico");
insert into genero values (null, "Rock Nacional");
insert into genero values (null, "Pop");
insert into genero values (null, "Rap");

-- Cargamos Datos en la Tabla Interpretes --
insert into interprete values (null, "Luis Miguel", 8);
insert into interprete values (null, "Dua Lipa", 10);
insert into interprete values (null, "Ariel Ramírez", 10);
insert into interprete values (null, "J. S. Bach", 10);
insert into interprete values (null, "Soda Stereo", 10);
insert into interprete values (null, "Drake", 5);

-- Cargamos Datos en la Tabla Album --
insert into album values (null, "Romance",  1, "Platino", "1991-11-19", 3);
insert into album values (null, "Future Nostalgia", 1, "Platino", "2020-3-27", 5);
insert into album values (null, "Misa Criolla", 1, "Platino", "1964-5-15",2);
insert into album values (null, "BWV 546 Preludio y fuga en do menor", 1, "Clásico", "1725-03-02", 1);
insert into album values (null, "Signos", 1, "Platino", "1986-11-10", 4);
insert into album values (null, "Certified Lover boy", 1, "Oro", "2021-9-3", 6);

-- Cargamos Datos en la Tabla Album_Interprete --
insert into album_interprete values (null, 1, 1);
insert into album_interprete values (null, 2, 2);
insert into album_interprete values (null, 3, 3);
insert into album_interprete values (null, 4, 4);
insert into album_interprete values (null, 5, 5);
insert into album_interprete values (null, 6, 6);

-- Querys SQL para Musica1 --
select nombre, ratinginterprete from interprete;

select * from album;

-- Consulta de tablas intemedias --
select nombre, interprete.nombre from album inner join interprete on album.idalbum = interprete.idinterprete;


