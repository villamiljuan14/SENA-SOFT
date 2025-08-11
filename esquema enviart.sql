DELETE FROM direccion WHERE ID_DIRECCION='2';
SELECT * FROM direccion WHERE ID_DIRECCION='2';
DELETE FROM pedido WHERE ID_PEDIDO =1;
UPDATE USUARIO SET ESTADO_USUARIO = '0' WHERE ID_USUARIO =1;

SELECT * FROM USUARIO
UPDATE PEDIDO SET ESTADO_PEDIDO = 'BODEGA'WHERE ID_PEDIDO=1;

SET FOREIGN_KEY_CHECKS = 1;
SET FOREIGN_KEY_CHECKS = 0;



CREATE USER 'mvargas'@'localhost' IDENTIFIED BY '123';
CREATE USER 'mlopez'@'localhost' IDENTIFIED BY '123';
CREATE USER 'mgarcia'@'localhost' IDENTIFIED BY '123';

CREATE USER 'mardila'@'localhost' IDENTIFIED BY '123';
CREATE USER 'msastoque'@'localhost' IDENTIFIED BY '123';
CREATE USER 'mrodriguez'@'localhost' IDENTIFIED BY '123';

CREATE USER 'mhernandez'@'localhost' IDENTIFIED BY '123';
CREATE USER 'jlopez'@'localhost' IDENTIFIED BY '123';
CREATE USER 'hcorredor'@'localhost' IDENTIFIED BY '123';
/*ROLES*/
CREATE ROLE 'Proveedor';
CREATE ROLE 'Cliente';
CREATE ROLE 'Mensajero';
CREATE ROLE 'Administrador';



GRANT ALL PRIVILEGES ON enviart.* TO 'Administrador';
GRANT 'Administrador' TO 'mlopez'@'localhost';
FLUSH PRIVILEGES;
SET ROLE 'Administrador';

GRANT SELECT,UPDATE,INSERT ON enviart.* TO 'Mensajero';
GRANT 'Mensajero' TO 'msastoque'@'localhost';
FLUSH PRIVILEGES;
SET ROLE 'Mensajero';

GRANT SELECT,INSERT ON enviart.* TO 'Cliente';
GRANT 'Cliente' TO 'mhernandez'@'localhost';
FLUSH PRIVILEGES;
SET ROLE 'Cliente';

DELETE FROM pedido WHERE ID_PEDIDO =1;
UPDATE Pedido SET ESTADO_PEDIDO= 'BODEGA'WHERE ID_PEDIDO=1;














