--liquibase formatted sql
--changeset estudiante:8
-- Aumentar precio de algunos productos
UPDATE producto SET precio = precio * 1.05 WHERE codigo = 'P001';

-- Cambiar teléfono de una persona
UPDATE persona SET telefono = '3112223344' WHERE identificacion = '12345678';