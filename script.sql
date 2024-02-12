create database pruebatelo;

use pruebatelo;

create table vendedor(
	id integer primary key auto_increment,
	nombre varchar(100)
);

create table marca(
	id integer primary key auto_increment,
	nombre varchar(50)
);

create table color(
	id integer primary key auto_increment,
	nombre varchar(20)
);

create table talla(
	id integer primary key auto_increment,
	talla varchar(20)
);

create table producto(
	id integer primary key auto_increment,
	nombre varchar(50),
	marca_id integer,
	color_id integer,
	talla_id integer,
	foreign key (marca_id) references marca(id),
	foreign key (color_id) references color(id),
	foreign key (talla_id) references talla(id)
);

create table inventario(
	id integer primary key auto_increment,
	producto_id integer,
	cantidad integer,
	precio_compra decimal,
	precio_venta decimal,
	fecha date,
	foreign key (producto_id) references producto(id)
);

create table venta(
	id integer primary key auto_increment,
	vendedor_id integer,
	fecha date,
	total decimal
);

alter table venta
add foreign key (vendedor_id) references vendedor(id)

create table venta_producto(
	id integer primary key auto_increment,
	venta_id integer,
	producto_id integer,
	cantidad integer,
	foreign key(producto_id) references producto(id),
	foreign key(venta_id) references venta(id)
);
