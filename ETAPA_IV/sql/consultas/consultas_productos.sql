USE EnergyBD;
GO

-- consulta de productos en activos y con stock de una categoria especifica

SELECT id_producto, nombre_producto, descripcion, precio, stock 
FROM Producto 
WHERE id_categoria = 1 
  AND stock > 0 
  AND activo = 1;
GO
