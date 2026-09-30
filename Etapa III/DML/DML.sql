------INSERTAR TIPO_USUARIO---------

INSERT INTO Tipo_usuario (nombre_tipoUsuario)
VALUES
('Administrador'),
('Cliente');

-------INSERTAR USUARIO-------
INSERT INTO Usuario (nombre_usuario, correo, contrasenia, id_tipoUsuario)
VALUES
('Administrador', 'admin@energy.com', 'Admin1234', 1),
('Ana Lopez', 'ana.lopez@gmail.com', 'Ana1234', 2),
('Juan Perez', 'juan.perez@gmail.com', 'Juan1234', 2),
('Maria Gomez', 'maria.gomez@gmail.com', 'Maria1234', 2),
('Pedro Fernandez', 'pedro.fernandez@gmail.com', 'Pedro1234', 2),
('Sofia Martinez', 'sofia.martinez@gmail.com', 'Sofia1234', 2),
('Carlos Romero', 'carlos.romero@gmail.com', 'Carlos1234', 2),
('Lucia Sanchez', 'lucia.sanchez@gmail.com', 'Lucia1234', 2);

----------INSERTAR TELEFONO---------

INSERT INTO Telefono (nro_telefono, id_usuario)
VALUES
('3794000001', 1),
('3794000002', 2),
('3794000003', 3),
('3794000004', 4),
('3794000005', 5),
('3794000006', 6),
('3794000007', 7),
('3794000008', 8);

--------INSERTAR MENSAJES----------

INSERT INTO Mensaje (nombre, correo, asunto, contenido, fecha_envio, telefono, id_usuario)
VALUES
('Ana Lopez', 'ana.lopez@gmail.com', 'Consulta de producto',
'Quisiera saber si tienen stock disponible.', '2026-09-29 18:10:00', '3794000002', 2),

('Juan Perez', 'juan.perez@gmail.com', 'Consulta de pedido',
'Quisiera conocer el estado de mi pedido.', '2026-09-29 18:20:00', '3794000003', 3),

('Maria Gomez', 'maria.gomez@gmail.com', 'Forma de pago',
'Quisiera consultar las formas de pago disponibles.', '2026-09-29 18:30:00', '3794000004', 4),

('Pedro Fernandez', 'pedro.fernandez@gmail.com', 'Envio',
'Quisiera saber cuanto demora el envio.', '2026-09-29 18:40:00', '3794000005', 5),

('Sofia Martinez', 'sofia.martinez@gmail.com', 'Stock',
'Quisiera consultar por un producto.', '2026-09-29 18:50:00', '3794000006', 6),

('Carlos Romero', 'carlos.romero@gmail.com', 'Comprobante',
'Necesito consultar sobre mi comprobante.', '2026-09-29 19:00:00', '3794000007', 7),

('Martin Diaz', 'martin@gmail.com', 'Consulta general',
'Quisiera recibir informacion sobre los productos.', '2026-09-29 19:10:00', '3794111111', NULL),

('Laura Garcia', 'laura@gmail.com', 'Envios',
'Quisiera consultar por los envios disponibles.', '2026-09-29 19:20:00', '3794222222', NULL);

