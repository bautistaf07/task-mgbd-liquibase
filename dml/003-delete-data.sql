--liquibase formatted sql
--changeset estudiante:9
-- Eliminar un detalle de factura (ejemplo)
DELETE FROM detalle_factura WHERE id = (SELECT id FROM detalle_factura LIMIT 1);
--- No se eliminan registros clave para mantener integridad.