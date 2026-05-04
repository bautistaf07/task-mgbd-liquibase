--liquibase formatted sql
--changeset estudiante:7
INSERT INTO persona (identificacion, nombre, apellido, email, telefono) VALUES
('12345678', 'Juan', 'Perez', 'juan@mail.com', '3001112233'),
('87654321', 'Maria', 'Lopez', 'maria@mail.com', '3004455667');

INSERT INTO rol (nombre, descripcion) VALUES
('ADMIN', 'Administrador del sistema'),
('VENDEDOR', 'Vendedor'),
('CLIENTE', 'Cliente');

-- Suponiendo que persona id 1 y 2 existen ahora
INSERT INTO usuario (username, password_hash, persona_id, rol_id) VALUES
('jperez', 'hash_dummy_123', 1, (SELECT id FROM rol WHERE nombre='ADMIN')),
('mlopez', 'hash_dummy_456', 2, (SELECT id FROM rol WHERE nombre='VENDEDOR'));

INSERT INTO producto (codigo, nombre, precio, stock) VALUES
('P001', 'Laptop', 2500.00, 10),
('P002', 'Mouse', 25.50, 50),
('P003', 'Teclado', 45.00, 30);

INSERT INTO factura (numero_factura, persona_id, usuario_id) VALUES
('F001', 1, 1),
('F002', 2, 2);

-- Detalle factura F001
INSERT INTO detalle_factura (cantidad, precio_unitario, factura_id, producto_id) VALUES
(1, 2500.00, 1, (SELECT id FROM producto WHERE codigo='P001')),
(2, 25.50, 1, (SELECT id FROM producto WHERE codigo='P002'));

-- Detalle factura F002
INSERT INTO detalle_factura (cantidad, precio_unitario, factura_id, producto_id) VALUES
(1, 45.00, 2, (SELECT id FROM producto WHERE codigo='P003'));

-- Actualizar el total de facturas (opcional, pero se puede hacer con trigger o manual)
UPDATE factura SET total = (SELECT SUM(subtotal) FROM detalle_factura WHERE factura_id=1) WHERE id=1;
UPDATE factura SET total = (SELECT SUM(subtotal) FROM detalle_factura WHERE factura_id=2) WHERE id=2;