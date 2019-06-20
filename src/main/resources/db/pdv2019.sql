DROP DATABASE pdv2019;
CREATE DATABASE pdv2019;
USE pdv2019;

CREATE TABLE Rol(
     pk_id_rol int not null primary key auto_increment,
     rol varchar(25) not null,
     autorithy varchar(25) not null
);

CREATE TABLE Usuario(
    pk_id_us int not null primary key auto_increment,
    user varchar(25) not null,
    pass varchar(25) not null,
    hab varchar(25) not null
); 

CREATE TABLE Producto(
	pk_id_prod int not null primary key auto_increment,
    nombre varchar(25) not null,
    descu varchar(25) not null,
    precio double not null,
    disponibilidad int not null,
    cantidad int not null
);

CREATE TABLE Compra(
	pk_id_com int not null primary key auto_increment,
    descu double not null,
	monto double not null,
    cantidad int not null
);

CREATE TABLE Detalles_Compra(
	pk_id_dc int not null primary key auto_increment,
    fecha date not null,
    hora datetime not null,
    comprobante varchar(25) not null,
    estado varchar(25) not null 
);

CREATE TABLE HistorialCompra(
    pk_id_hc int not null primary key auto_increment,
    fecha date not null
);

CREATE TABLE Proveedor(
	pk_id_prov int not null primary key auto_increment,
    nombre varchar(25) not null,
	direccion varchar(25) not null,
    tel varchar(25) not null,
    cel varchar(25) not null,
    email varchar(25) not null
);

CREATE TABLE Ciudad(
	pk_id_ciu int not null primary key auto_increment,
    ciudad varchar(25) not null,
    cp varchar(25) not null
);

CREATE TABLE Provincia(
	pk_id_prov int not null primary key auto_increment,
    provincia varchar(25) not null
);

CREATE TABLE Venta(
	pk_id_ven int not null primary key auto_increment,
    descu double not null,
	monto double not null,
    cantidad int not null
);

CREATE TABLE Detalles_Venta(
	pk_id_dv int not null primary key auto_increment,
    fecha date not null,
    hora datetime not null,
    comprobante varchar(25) not null,
    estado varchar(25) not null 
);

CREATE TABLE HistorialVenta(
    pk_id_hv int not null primary key auto_increment,
    fecha date not null
);

CREATE TABLE Cliente(
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

-- Agregar Columnas

ALTER TABLE Producto ADD COLUMN fk_id_prov INT NULL;
ALTER TABLE Detalles_Venta ADD COLUMN fk_id_cli INT NULL;
ALTER TABLE Detalles_Venta ADD COLUMN fk_id_vent INT NULL;
ALTER TABLE Detalles_Compra ADD COLUMN fk_id_prov INT NULL;
ALTER TABLE Detalles_Compra ADD COLUMN fk_id_comp INT NULL;
ALTER TABLE Ciudad ADD COLUMN fk_id_provincia INT NULL;
ALTER TABLE Proveedor ADD COLUMN fk_id_ciu INT NULL;

-- Agregar Relaciones

ALTER TABLE Producto ADD CONSTRAINT fk_id_prov
FOREIGN KEY (fk_id_prov) REFERENCES Proveedor(pk_id_prov);

ALTER TABLE Detalles_Venta ADD CONSTRAINT fk_id_cli
FOREIGN KEY (fk_id_cli) REFERENCES Cliente(pk_id_cli);

ALTER TABLE Detalles_Venta ADD CONSTRAINT fk_id_vent
FOREIGN KEY (fk_id_vent) REFERENCES Venta(pk_id_ven);

ALTER TABLE Detalles_Compra ADD CONSTRAINT fk_id_cli
FOREIGN KEY (fk_id_cli) REFERENCES Cliente(pk_id_cli);

ALTER TABLE Detalles_Compra ADD CONSTRAINT fk_id_comp
FOREIGN KEY (fk_id_comp) REFERENCES Compra(pk_id_com);

ALTER TABLE Ciudad ADD CONSTRAINT fk_id_provincia
FOREIGN KEY (fk_id_provincia) REFERENCES Provincia(pk_id_prov);

ALTER TABLE Proveedor ADD CONSTRAINT fk_id_ciu
FOREIGN KEY (fk_id_ciu) REFERENCES Ciudad(pk_id_ciu);