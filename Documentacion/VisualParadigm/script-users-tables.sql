CREATE USER 'lap'@'localhost' IDENTIFIED BY 'lap';
CREATE USER 'cesarpa'@'localhost' IDENTIFIED BY 'lap';

GRANT ALL PRIVILEGES ON * . * TO 'lap'@'localhost';
GRANT ALL PRIVILEGES ON * . * TO 'cesarpa'@'localhost';

ALTER USER 'lap'@'localhost' IDENTIFIED WITH mysql_native_password BY 'lap';
ALTER USER 'cesarpa'@'localhost' IDENTIFIED WITH mysql_native_password BY 'cesarpa';



DROP SCHEMA IF EXISTS `lap-cotizacion`;

CREATE SCHEMA `lap-cotizacion`;
USE `lap-cotizacion` ;



CREATE TABLE IF NOT EXISTS  Cotizacion (id_cotizacion int(10) NOT NULL AUTO_INCREMENT, consecutivo_unico int(10), estado int(10), descripcion_estado varchar(255), fecha_emision timestamp NULL, fecha_vencimiento timestamp NULL, costo_directo int(10), valor_total int(10), fecha_creacion timestamp NULL, fecha_modificacion timestamp NULL, id_empresa_cotizacion int(10) NOT NULL, id_empresa_usuario int(10) NOT NULL, PRIMARY KEY (id_cotizacion))
ENGINE=InnoDB
AUTO_INCREMENT = 1;
CREATE TABLE IF NOT EXISTS  Empresa_Cotizacion (id_empresa_cotizacion int(10) NOT NULL AUTO_INCREMENT, nit varchar(255) NOT NULL, nombre varchar(255), contacto varchar(255), telefono varchar(30), direccion varchar(255), email varchar(70), celular varchar(30), fecha_creacion timestamp NULL, fecha_modificacion timestamp NULL, PRIMARY KEY (id_empresa_cotizacion))
ENGINE=InnoDB
AUTO_INCREMENT = 1;
CREATE TABLE IF NOT EXISTS  Empresa_Usuario (id_empresa_usuario int(10) NOT NULL AUTO_INCREMENT, nit varchar(255) NOT NULL, nombre varchar(255), telefono varchar(30), direccion varchar(255), email varchar(70), fecha_creacion timestamp NULL, fecha_modificacion timestamp NULL, PRIMARY KEY (id_empresa_usuario))
ENGINE=InnoDB
AUTO_INCREMENT = 1;
CREATE TABLE IF NOT EXISTS  Factura (id_factura int(10) NOT NULL AUTO_INCREMENT, Cotizacionid_cotizacion int(10) NOT NULL, pagada varchar(255), moneda varchar(255), fecha_emision timestamp NULL, medio_pago varchar(255), fecha_creacion timestamp NULL, fecha_modificaion timestamp NULL, PRIMARY KEY (id_factura))
ENGINE=InnoDB
AUTO_INCREMENT = 1;
CREATE TABLE IF NOT EXISTS  Item (id_item int(10) NOT NULL AUTO_INCREMENT, descripcion int(10) NOT NULL, valor_unidad int(10), fecha_creacion int(10), fecha_modificacion int(10), PRIMARY KEY (id_item))
ENGINE=InnoDB
AUTO_INCREMENT = 1;
CREATE TABLE IF NOT EXISTS  Item_Cotizacion (id_item_cotizacion int(10) NOT NULL AUTO_INCREMENT, Itemid int(10) NOT NULL, Cotizacionid_cotizacion int(10) NOT NULL, cantidad int(10), valor_total_item int(10), fecha_creacion int(10), fecha_modificacion int(10), `Column` int(10), PRIMARY KEY (id_item_cotizacion))
ENGINE=InnoDB
AUTO_INCREMENT = 1;
ALTER TABLE Factura ADD CONSTRAINT FKFactura23239 FOREIGN KEY (Cotizacionid_cotizacion) REFERENCES Cotizacion (id_cotizacion);
ALTER TABLE Item_Cotizacion ADD CONSTRAINT FKItem_Cotiz348745 FOREIGN KEY (Cotizacionid_cotizacion) REFERENCES Cotizacion (id_cotizacion);
ALTER TABLE Item_Cotizacion ADD CONSTRAINT FKItem_Cotiz444882 FOREIGN KEY (Itemid) REFERENCES Item (id_item);
ALTER TABLE Cotizacion ADD CONSTRAINT FKCotizacion56255 FOREIGN KEY (id_empresa_cotizacion) REFERENCES Empresa_Cotizacion (id_empresa_cotizacion);
ALTER TABLE Cotizacion ADD CONSTRAINT FKCotizacion750156 FOREIGN KEY (id_empresa_usuario) REFERENCES Empresa_Usuario (id_empresa_usuario);
