SELECT df.id, pr.nombre AS producto, df.cantidad, df.precio_unitario, df.subtotal
FROM detalle_factura df
JOIN producto pr ON df.producto_id = pr.id;