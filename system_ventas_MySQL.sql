-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.1.33-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win32
-- HeidiSQL Versión:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura para tabla system_ventas.bodega
CREATE TABLE IF NOT EXISTS `bodega` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdProducto` int(11) NOT NULL DEFAULT '0',
  `Codigo` varchar(50) NOT NULL DEFAULT '0',
  `Existencia` int(11) NOT NULL DEFAULT '0',
  `Dia` int(11) NOT NULL DEFAULT '0',
  `Mes` varchar(50) NOT NULL DEFAULT '0',
  `Year` varchar(50) NOT NULL DEFAULT '0',
  `Fecha` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla system_ventas.bodega: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `bodega` DISABLE KEYS */;
INSERT INTO `bodega` (`Id`, `IdProducto`, `Codigo`, `Existencia`, `Dia`, `Mes`, `Year`, `Fecha`) VALUES
	(1, 1, '6653309', 46, 30, 'ene.', '2019', '30/ene./2019'),
	(2, 2, '443862092', 4, 1, '02', '2019', '01/02/2019');
/*!40000 ALTER TABLE `bodega` ENABLE KEYS */;

-- Volcando estructura para tabla system_ventas.cajas
CREATE TABLE IF NOT EXISTS `cajas` (
  `IdCaja` int(11) NOT NULL AUTO_INCREMENT,
  `Caja` int(11) NOT NULL DEFAULT '0',
  `Estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`IdCaja`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla system_ventas.cajas: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `cajas` DISABLE KEYS */;
INSERT INTO `cajas` (`IdCaja`, `Caja`, `Estado`) VALUES
	(1, 1, 1),
	(2, 2, 1),
	(3, 3, 1),
	(4, 4, 1),
	(5, 5, 1),
	(6, 6, 1),
	(7, 7, 1),
	(8, 8, 1);
/*!40000 ALTER TABLE `cajas` ENABLE KEYS */;

-- Volcando estructura para tabla system_ventas.cajas_ingresos
CREATE TABLE IF NOT EXISTS `cajas_ingresos` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Caja` int(11) NOT NULL DEFAULT '0',
  `Ingreso` varchar(50) NOT NULL DEFAULT '0',
  `Type` varchar(50) NOT NULL DEFAULT '0',
  `IdUsuario` int(11) NOT NULL DEFAULT '0',
  `Dia` int(11) NOT NULL DEFAULT '0',
  `Mes` varchar(50) NOT NULL DEFAULT '0',
  `Year` varchar(50) NOT NULL DEFAULT '0',
  `Fecha` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla system_ventas.cajas_ingresos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cajas_ingresos` DISABLE KEYS */;
INSERT INTO `cajas_ingresos` (`Id`, `Caja`, `Ingreso`, `Type`, `IdUsuario`, `Dia`, `Mes`, `Year`, `Fecha`) VALUES
	(1, 0, '$9,000.00', 'Ventas', 5, 30, 'ene.', '2019', '30/ene./2019'),
	(2, 0, '$60,000.00', 'Ventas', 6, 9, '02', '2019', '09/02/2019'),
	(3, 0, '$27,000.00', 'Ventas', 5, 2, 'mar.', '2019', '02/mar./2019');
/*!40000 ALTER TABLE `cajas_ingresos` ENABLE KEYS */;

-- Volcando estructura para tabla system_ventas.cajas_reembolso
CREATE TABLE IF NOT EXISTS `cajas_reembolso` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Caja` int(11) NOT NULL DEFAULT '0',
  `Reembolso` int(11) NOT NULL DEFAULT '0',
  `Dia` int(11) NOT NULL DEFAULT '0',
  `Mes` int(11) NOT NULL DEFAULT '0',
  `Year` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla system_ventas.cajas_reembolso: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cajas_reembolso` DISABLE KEYS */;
/*!40000 ALTER TABLE `cajas_reembolso` ENABLE KEYS */;

-- Volcando estructura para tabla system_ventas.cajas_registros
CREATE TABLE IF NOT EXISTS `cajas_registros` (
  `IdCajaTempo` int(11) NOT NULL AUTO_INCREMENT,
  `IdUsuario` int(11) NOT NULL DEFAULT '0',
  `Nombre` varchar(50) NOT NULL DEFAULT '0',
  `Apellido` varchar(50) NOT NULL DEFAULT '0',
  `Usuario` varchar(50) NOT NULL DEFAULT '0',
  `Role` varchar(50) NOT NULL DEFAULT '0',
  `IdCaja` int(11) NOT NULL DEFAULT '0',
  `Caja` int(11) NOT NULL DEFAULT '0',
  `Estado` tinyint(1) NOT NULL DEFAULT '0',
  `Hora` varchar(50) NOT NULL DEFAULT '0',
  `Fecha` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`IdCajaTempo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla system_ventas.cajas_registros: ~39 rows (aproximadamente)
/*!40000 ALTER TABLE `cajas_registros` DISABLE KEYS */;
/*!40000 ALTER TABLE `cajas_registros` ENABLE KEYS */;

-- Volcando estructura para tabla system_ventas.categorias
CREATE TABLE IF NOT EXISTS `categorias` (
  `IdCat` int(11) NOT NULL AUTO_INCREMENT,
  `Categoria` varchar(50) NOT NULL DEFAULT '0',
  `IdDpto` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`IdCat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla system_ventas.categorias: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` (`IdCat`, `Categoria`, `IdDpto`) VALUES
	(1, 'PC', 1),
	(2, 'Impresoras', 1),
	(3, 'TV', 2),
	(4, 'Verduras', 3);
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;

-- Volcando estructura para tabla system_ventas.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `IdCliente` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(50) NOT NULL DEFAULT '0',
  `Nombre` varchar(50) NOT NULL DEFAULT '0',
  `Apellido` varchar(50) NOT NULL DEFAULT '0',
  `Direccion` varchar(50) NOT NULL DEFAULT '0',
  `Telefono` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`IdCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla system_ventas.clientes: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` (`IdCliente`, `ID`, `Nombre`, `Apellido`, `Direccion`, `Telefono`) VALUES
	(6, '1234', 'Alex', 'Pagoada', 'La ceiba', '323333'),
	(7, '12345', 'PDHN', 'Programmer', 'La ceiba', '36332322'),
	(16, '536556', 'Joel', 'Suazo', 'La Ceiba', '65656556'),
	(17, '565656', 'Maria', 'Suazo', 'Atlantida', '2332221');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;

-- Volcando estructura para tabla system_ventas.compras
CREATE TABLE IF NOT EXISTS `compras` (
  `IdCompra` int(11) NOT NULL AUTO_INCREMENT,
  `Producto` varchar(50) NOT NULL DEFAULT '0',
  `Cantidad` int(11) NOT NULL DEFAULT '0',
  `Precio` varchar(50) NOT NULL DEFAULT '0',
  `Importe` varchar(50) NOT NULL DEFAULT '0',
  `IdProveedor` int(11) NOT NULL DEFAULT '0',
  `Proveedor` varchar(50) NOT NULL DEFAULT '0',
  `IdUsuario` int(11) NOT NULL DEFAULT '0',
  `Usuario` varchar(50) NOT NULL DEFAULT '0',
  `Role` varchar(50) NOT NULL DEFAULT '0',
  `Dia` int(11) NOT NULL DEFAULT '0',
  `Mes` varchar(50) NOT NULL DEFAULT '0',
  `Year` varchar(50) NOT NULL DEFAULT '0',
  `Fecha` varchar(50) NOT NULL DEFAULT '0',
  `Codigo` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`IdCompra`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla system_ventas.compras: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` (`IdCompra`, `Producto`, `Cantidad`, `Precio`, `Importe`, `IdProveedor`, `Proveedor`, `IdUsuario`, `Usuario`, `Role`, `Dia`, `Mes`, `Year`, `Fecha`, `Codigo`) VALUES
	(1, 'Ram', 50, '$8000', '$ 400,000.00', 1, 'PDHN', 5, 'AJ', 'Admin', 23, 'ene.', '2019', '23/ene./2019', '2066899'),
	(2, 'PC', 5, '$56,656.00', '$283,280.00', 1, 'PDHN', 6, 'pdhn', 'Admin', 26, '01', '2019', '26/01/2019', '570667830');
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;

-- Volcando estructura para tabla system_ventas.creditos_ventas
CREATE TABLE IF NOT EXISTS `creditos_ventas` (
  `IdCredito` int(11) NOT NULL AUTO_INCREMENT,
  `Total` varchar(50) NOT NULL DEFAULT '0',
  `Pago` varchar(50) NOT NULL DEFAULT '0',
  `Credito` varchar(50) NOT NULL DEFAULT '0',
  `Dia` int(11) NOT NULL DEFAULT '0',
  `Mes` varchar(50) NOT NULL DEFAULT '0',
  `Year` varchar(50) NOT NULL DEFAULT '0',
  `Fecha` varchar(50) NOT NULL DEFAULT '0',
  `Cliente` varchar(50) NOT NULL DEFAULT '0',
  `Caja` int(11) NOT NULL DEFAULT '0',
  `IdUsuario` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`IdCredito`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla system_ventas.creditos_ventas: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `creditos_ventas` DISABLE KEYS */;
INSERT INTO `creditos_ventas` (`IdCredito`, `Total`, `Pago`, `Credito`, `Dia`, `Mes`, `Year`, `Fecha`, `Cliente`, `Caja`, `IdUsuario`) VALUES
	(41, '$150.00', '$0.00', '$150.00', 11, '11', '2018', '11/11/2018', '12345', 0, 6),
	(42, '$600.00', '$0.00', '$600.00', 11, '11', '2018', '11/11/2018', '1234', 0, 6),
	(43, '$1,800.00', '$0.00', '$1,800.00', 11, '11', '2018', '11/11/2018', '1234', 0, 6),
	(44, '$150.00', '$0.00', '$150.00', 12, 'nov.', '2018', '12/nov./2018', '12345', 1, 9),
	(45, '$150.00', '$0.00', '$150.00', 12, 'nov.', '2018', '12/nov./2018', '1234', 1, 9),
	(46, '$600.00', '$0.00', '$600.00', 14, '11', '2018', '14/11/2018', '565656', 1, 7);
/*!40000 ALTER TABLE `creditos_ventas` ENABLE KEYS */;

-- Volcando estructura para tabla system_ventas.departamentos
CREATE TABLE IF NOT EXISTS `departamentos` (
  `IdDpto` int(11) NOT NULL AUTO_INCREMENT,
  `Departamento` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`IdDpto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla system_ventas.departamentos: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` (`IdDpto`, `Departamento`) VALUES
	(1, 'Computadoras'),
	(2, 'Electrodomésticos'),
	(3, 'Abarrotes');
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;

-- Volcando estructura para tabla system_ventas.productos
CREATE TABLE IF NOT EXISTS `productos` (
  `IdProducto` int(11) NOT NULL AUTO_INCREMENT,
  `Codigo` varchar(50) DEFAULT NULL,
  `Producto` varchar(50) DEFAULT NULL,
  `Precio` varchar(50) DEFAULT NULL,
  `Descuento` varchar(50) DEFAULT NULL,
  `Departamento` varchar(50) DEFAULT NULL,
  `Categoria` varchar(50) DEFAULT NULL,
  `Year` varchar(50) DEFAULT NULL,
  `Fecha` varchar(50) DEFAULT NULL,
  `Compra` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IdProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla system_ventas.productos: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` (`IdProducto`, `Codigo`, `Producto`, `Precio`, `Descuento`, `Departamento`, `Categoria`, `Year`, `Fecha`, `Compra`) VALUES
	(1, '6653309', 'Ram', '$9,000.00', '%0.00', 'Computadoras', 'PC', '2019', '30/ene./2019', '2066899'),
	(2, '443862092', 'PC', '$60,000.00', '%0.00', 'Computadoras', 'PC', '2019', '01/02/2019', '570667830');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;

-- Volcando estructura para tabla system_ventas.proveedores
CREATE TABLE IF NOT EXISTS `proveedores` (
  `IdProveedor` int(11) NOT NULL AUTO_INCREMENT,
  `Proveedor` varchar(50) NOT NULL DEFAULT '0',
  `Telefono` varchar(50) NOT NULL DEFAULT '0',
  `Email` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`IdProveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla system_ventas.proveedores: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` (`IdProveedor`, `Proveedor`, `Telefono`, `Email`) VALUES
	(1, 'PDHN', '23232345', 'alex@gmail.com'),
	(6, 'AJ', '565663', 'aj@yahoo.com'),
	(13, 'Sabina', '123', 'sabina@gmail.com'),
	(14, 'Joel', '5223323', 'joel@yahoo.com'),
	(15, 'Alex Joel', '355552126', 'alexjoel@gmail.com'),
	(16, 'Maria', '555254445', 'maria@gmail.com');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;

-- Volcando estructura para tabla system_ventas.reportes_clientes
CREATE TABLE IF NOT EXISTS `reportes_clientes` (
  `IdRegistro` int(11) NOT NULL AUTO_INCREMENT,
  `IdCliente` int(11) NOT NULL DEFAULT '0',
  `SaldoActual` varchar(50) NOT NULL DEFAULT '0',
  `FechaActual` varchar(50) NOT NULL DEFAULT '0',
  `UltimoPago` varchar(50) NOT NULL DEFAULT '0',
  `FechaPago` varchar(50) NOT NULL DEFAULT '0',
  `ID` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`IdRegistro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla system_ventas.reportes_clientes: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `reportes_clientes` DISABLE KEYS */;
INSERT INTO `reportes_clientes` (`IdRegistro`, `IdCliente`, `SaldoActual`, `FechaActual`, `UltimoPago`, `FechaPago`, `ID`) VALUES
	(4, 6, '$9,730.06', '12/nov./2018', '$300.00', '17/abr./2018', '1234'),
	(5, 7, '$2,984.50', '12/nov./2018', '$200.00', '17/10/2018', '12345'),
	(14, 16, '$0.00', 'Sin fecha', '$0.00', 'Sin fecha', '536556'),
	(15, 17, '$1,774.24', '14/11/2018', '$0.00', 'Sin fecha', '565656');
/*!40000 ALTER TABLE `reportes_clientes` ENABLE KEYS */;

-- Volcando estructura para tabla system_ventas.reportes_ingresos
CREATE TABLE IF NOT EXISTS `reportes_ingresos` (
  `IdIngreso` int(11) NOT NULL AUTO_INCREMENT,
  `Admin` varchar(50) NOT NULL DEFAULT '0',
  `Caja` int(11) NOT NULL DEFAULT '0',
  `Ingreso` varchar(50) NOT NULL DEFAULT '0',
  `Fecha` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`IdIngreso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla system_ventas.reportes_ingresos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `reportes_ingresos` DISABLE KEYS */;
INSERT INTO `reportes_ingresos` (`IdIngreso`, `Admin`, `Caja`, `Ingreso`, `Fecha`) VALUES
	(1, 'Alex Pagoada', 2, ' $35.00', '19/jul./2018'),
	(2, 'Alex Pagoada', 1, '$2.50', '25/jul./2018'),
	(3, 'PDHN Programador', 1, '$5.00', '3/8/2018'),
	(4, 'PDHN Programador', 1, '$25.00', '6/8/2018');
/*!40000 ALTER TABLE `reportes_ingresos` ENABLE KEYS */;

-- Volcando estructura para tabla system_ventas.reportes_proveedores
CREATE TABLE IF NOT EXISTS `reportes_proveedores` (
  `IdRegistro` int(11) NOT NULL AUTO_INCREMENT,
  `IdProveedor` int(11) NOT NULL DEFAULT '0',
  `SaldoActual` varchar(50) NOT NULL DEFAULT '0',
  `FechaActual` varchar(50) NOT NULL DEFAULT '0',
  `UltimoPago` varchar(50) NOT NULL DEFAULT '0',
  `FechaPago` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`IdRegistro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla system_ventas.reportes_proveedores: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `reportes_proveedores` DISABLE KEYS */;
INSERT INTO `reportes_proveedores` (`IdRegistro`, `IdProveedor`, `SaldoActual`, `FechaActual`, `UltimoPago`, `FechaPago`) VALUES
	(1, 1, '$777,182.24', '26/01/2019', '$300.00', '21/10/2018'),
	(2, 6, '$25,102.50', '11/11/2018', '$0.00', '22/11/2017'),
	(3, 13, '$0.00', 'Sin fecha', '$0.00', 'Sin fecha'),
	(5, 15, '$7,150.00', '06/nov./2018', '$0.00', 'Sin fecha'),
	(6, 16, '$0.00', 'Sin fecha', '$0.00', 'Sin fecha');
/*!40000 ALTER TABLE `reportes_proveedores` ENABLE KEYS */;

-- Volcando estructura para tabla system_ventas.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `IdRole` int(11) NOT NULL AUTO_INCREMENT,
  `Role` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`IdRole`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla system_ventas.roles: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`IdRole`, `Role`) VALUES
	(1, 'Admin'),
	(2, 'User');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Volcando estructura para tabla system_ventas.tempo_compras
CREATE TABLE IF NOT EXISTS `tempo_compras` (
  `IdCompra` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(50) NOT NULL,
  `Cantidad` int(11) NOT NULL DEFAULT '0',
  `PrecioCompra` varchar(50) NOT NULL DEFAULT '0',
  `Importe` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`IdCompra`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla system_ventas.tempo_compras: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tempo_compras` DISABLE KEYS */;
/*!40000 ALTER TABLE `tempo_compras` ENABLE KEYS */;

-- Volcando estructura para tabla system_ventas.tempo_productos
CREATE TABLE IF NOT EXISTS `tempo_productos` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdCompra` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla system_ventas.tempo_productos: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `tempo_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tempo_productos` ENABLE KEYS */;

-- Volcando estructura para tabla system_ventas.tempo_ventas
CREATE TABLE IF NOT EXISTS `tempo_ventas` (
  `IdTempo` int(11) NOT NULL AUTO_INCREMENT,
  `Codigo` varchar(50) NOT NULL DEFAULT '0',
  `Descripcion` varchar(50) NOT NULL DEFAULT '0',
  `Precio` varchar(50) NOT NULL DEFAULT '0',
  `Cantidad` int(11) NOT NULL DEFAULT '0',
  `Importe` varchar(50) NOT NULL DEFAULT '0',
  `Caja` int(11) NOT NULL DEFAULT '0',
  `IdUsuario` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`IdTempo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla system_ventas.tempo_ventas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tempo_ventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tempo_ventas` ENABLE KEYS */;

-- Volcando estructura para tabla system_ventas.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `IdUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL DEFAULT '0',
  `Apellido` varchar(50) NOT NULL DEFAULT '0',
  `Telefono` varchar(50) NOT NULL DEFAULT '0',
  `Direccion` varchar(50) NOT NULL DEFAULT '0',
  `Email` varchar(50) NOT NULL DEFAULT '0',
  `Usuario` varchar(50) NOT NULL DEFAULT '0',
  `Password` varchar(250) NOT NULL DEFAULT '0',
  `Role` varchar(50) NOT NULL DEFAULT '0',
  `Imagen` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IdUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla system_ventas.usuarios: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`IdUsuario`, `Nombre`, `Apellido`, `Telefono`, `Direccion`, `Email`, `Usuario`, `Password`, `Role`, `Imagen`) VALUES
	(5, 'Alex', 'Pagoada', '5211542', 'La Ceiba', 'alexjpz17@gmail.com', 'AJ', '9fWtfjqKA4ikVQrDYwL7fw==', 'Admin', 'alexjpz17@gmail.com'),
	(6, 'PDHN', 'Programador', '5624156', 'La Ceiba', 'pdhn@gmail.com', 'pdhn', '1kGEk2Id/FN8uUXFbopfOg==', 'Admin', 'pdhn@gmail.com');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

-- Volcando estructura para tabla system_ventas.ventas
CREATE TABLE IF NOT EXISTS `ventas` (
  `IdVenta` int(11) NOT NULL AUTO_INCREMENT,
  `Codigo` varchar(50) NOT NULL DEFAULT '0',
  `Descripcion` varchar(50) NOT NULL DEFAULT '0',
  `Precio` varchar(50) NOT NULL DEFAULT '0',
  `Cantidad` int(11) NOT NULL DEFAULT '0',
  `Importe` varchar(50) NOT NULL DEFAULT '0',
  `Dia` int(11) NOT NULL DEFAULT '0',
  `Mes` varchar(50) NOT NULL DEFAULT '0',
  `Year` varchar(50) NOT NULL DEFAULT '0',
  `Fecha` varchar(50) NOT NULL DEFAULT '0',
  `Caja` int(11) NOT NULL DEFAULT '0',
  `IdUsuario` int(11) NOT NULL DEFAULT '0',
  `Compra` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`IdVenta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla system_ventas.ventas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` (`IdVenta`, `Codigo`, `Descripcion`, `Precio`, `Cantidad`, `Importe`, `Dia`, `Mes`, `Year`, `Fecha`, `Caja`, `IdUsuario`, `Compra`) VALUES
	(1, '6653309', 'Ram', '$9,000.00', 10, '$9,000.00', 30, 'ene.', '2019', '30/ene./2019', 0, 5, '2066899'),
	(2, '443862092', 'PC', '$60,000.00', 1, '$60,000.00', 9, '02', '2019', '09/02/2019', 0, 6, '570667830'),
	(3, '6653309', 'Ram', '$9,000.00', 3, '$27,000.00', 2, 'mar.', '2019', '02/mar./2019', 0, 5, '2066899');
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
