-- 20/06/2019 --

DROP DATABASE pdv2019;
CREATE DATABASE pdv2019;
USE pdv2019;

CREATE TABLE Roles(
     pk_id_rol int not null primary key auto_increment,
     rol varchar(25) not null,
     autorithy varchar(25) not null
);

CREATE TABLE Usuarios(
    pk_id_us int not null primary key auto_increment,
    us varchar(25) not null,
    ps varchar(25) not null,
    hab varchar(25) not null
); 

CREATE TABLE Productos(
	pk_id_prod int not null primary key auto_increment,
    nombre varchar(25) not null,
    descu varchar(25) not null,
    precio double not null,
    disponibilidad int not null,
    cantidad int not null
);

CREATE TABLE Compras(
	pk_id_com int not null primary key auto_increment,
    descu double not null,
	monto double not null,
    cantidad int not null,
    descripcion varchar(50) not null
);

CREATE TABLE Detalles_Compras(
	pk_id_dc int not null primary key auto_increment,
    fecha date not null,
    hora datetime not null,
    comprobante varchar(25) not null,
    estado varchar(25) not null 
);

/*
CREATE TABLE HistorialCompra(
    pk_id_hc int not null primary key auto_increment,
    fecha date not null
);
*/

CREATE TABLE Proveedores(
	pk_id_prov int not null primary key auto_increment,
    nombre varchar(25) not null,
	direccion varchar(25) not null,
    tel varchar(25) not null,
    cel varchar(25) not null,
    email varchar(25) not null
);

CREATE TABLE Ciudades(
	pk_id_ciu int not null primary key auto_increment,
    ciudad varchar(60) not null
);

CREATE TABLE Provincias(
	pk_id_prov int not null primary key auto_increment,
    provincia varchar(25) not null
);

CREATE TABLE Ventas(
	pk_id_ven int not null primary key auto_increment,
    descripcion varchar(50),
    descu double not null,
	monto double not null,
    cantidad int not null
);

CREATE TABLE Detalles_Ventas(
	pk_id_dv int not null primary key auto_increment,
    fecha date not null,
    hora datetime not null,
    comprobante varchar(25) not null,
    estado varchar(25) not null 
);

CREATE TABLE Tickets(
	pk_id_tic int not null primary key auto_increment
);

/*
CREATE TABLE HistorialVenta(
    pk_id_hv int not null primary key auto_increment,
    fecha date not null
);
*/

CREATE TABLE Clientes(
	pk_id_cli int not null primary key auto_increment,
	nombre varchar(25) not null,
    apellido varchar(25) not null,
    dni varchar(25) not null,
    direccion varchar(25) not null,
    tel varchar(25) not null,
    cel varchar(25) not null,
    email varchar(25) not null,
    obs varchar(25) not null
);

-- Agregar Columnas Modificado MatiasEspindola 20/06/2019 --
ALTER TABLE Ciudades ADD COLUMN fk_id_provincia INT NULL;
ALTER TABLE Proveedores ADD COLUMN fk_id_ciu INT NULL;
ALTER TABLE Productos ADD COLUMN fk_id_prov INT NULL;
ALTER TABLE Detalles_Compras ADD COLUMN fk_id_comp INT NULL;
ALTER TABLE Compras ADD COLUMN fk_id_prod INT NULL;
ALTER TABLE Ventas ADD COLUMN fk_id_producto INT NULL;
ALTER TABLE Ventas ADD COLUMN fk_id_us INT NULL;
ALTER TABLE Compras ADD COLUMN fk_id_usuario INT NULL;
ALTER TABLE Detalles_Ventas ADD COLUMN fk_id_cli INT NULL;
ALTER TABLE Detalles_Ventas ADD COLUMN fk_id_vent INT NULL;
ALTER TABLE Clientes ADD COLUMN fk_id_ciudad INT NULL;
ALTER TABLE Tickets ADD COLUMN fk_id_det_vent INT NULL;

-- MatiasEspindola 20/06/2019 --

ALTER TABLE Usuarios ADD COLUMN fk_id_rol INT NULL;

-- Agregar Relaciones

ALTER TABLE Productos ADD CONSTRAINT fk_id_prov
FOREIGN KEY (fk_id_prov) REFERENCES Proveedores(pk_id_prov);

ALTER TABLE Detalles_Ventas ADD CONSTRAINT fk_id_cli
FOREIGN KEY (fk_id_cli) REFERENCES Clientes(pk_id_cli);

ALTER TABLE Detalles_Ventas ADD CONSTRAINT fk_id_vent
FOREIGN KEY (fk_id_vent) REFERENCES Ventas(pk_id_ven);

ALTER TABLE Detalles_Compras ADD CONSTRAINT fk_id_comp
FOREIGN KEY (fk_id_comp) REFERENCES Compras(pk_id_com);

ALTER TABLE Ciudades ADD CONSTRAINT fk_id_provincia
FOREIGN KEY (fk_id_provincia) REFERENCES Provincias(pk_id_prov);

ALTER TABLE Proveedores ADD CONSTRAINT fk_id_ciu
FOREIGN KEY (fk_id_ciu) REFERENCES Ciudades(pk_id_ciu);

-- Agregado MatiasEspindola 20/06/2019

ALTER TABLE Clientes ADD CONSTRAINT fk_id_ciudad
FOREIGN KEY (fk_id_ciudad) REFERENCES Ciudades(pk_id_ciu);

ALTER TABLE Compras ADD CONSTRAINT fk_id_prod
FOREIGN KEY (fk_id_prod) REFERENCES Productos(pk_id_prod);

ALTER TABLE Ventas ADD CONSTRAINT fk_id_producto
FOREIGN KEY (fk_id_producto) REFERENCES Productos(pk_id_prod);

ALTER TABLE Ventas ADD CONSTRAINT fk_id_us
FOREIGN KEY (fk_id_us) REFERENCES Usuarios(pk_id_us);

ALTER TABLE Compras ADD CONSTRAINT fk_id_usuario
FOREIGN KEY (fk_id_usuario) REFERENCES Usuarios(pk_id_us);

 ALTER TABLE Usuarios ADD CONSTRAINT fk_id_rol
FOREIGN KEY (fk_id_rol) REFERENCES Roles(pk_id_rol);

 ALTER TABLE Tickets ADD CONSTRAINT fk_id_det_vent
FOREIGN KEY (fk_id_det_vent) REFERENCES Detalles_Ventas(pk_id_dv);