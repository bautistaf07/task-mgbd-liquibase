SELECT f.numero_factura, p.nombre, p.apellido, f.fecha, f.total
FROM factura f
JOIN persona p ON f.persona_id = p.id;