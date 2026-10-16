USE EnergyBD;
GO

-- consulta de productos en activos y con stock de una categoria especifica

SELECT id_producto, nombre_producto, descripcion, precio, stock 
FROM Producto 
WHERE id_categoria = 1 
  AND stock > 0 
  AND activo = 1;
GO

-- consulta de productos activos y con stock asociados con su con su categoria si esta ultima esta activa 
SELECT 
    p.id_producto, 
    p.nombre_producto, 
    p.precio, 
    p.stock, 
    c.nombre_categoria,
    c.descripcion AS descripcion_categoria
FROM Producto p
INNER JOIN Categoria c ON p.id_categoria = c.id_categoria
WHERE p.activo = 1 AND p.stock > 0 AND c.activa = 1;
GO

-- realizamos una consulta para obtener el total de productos, precio promedio y stock de los productos activos por categoria
SELECT 
    c.nombre_categoria,
    COUNT(p.id_producto) AS total_productos,
    ROUND(AVG(p.precio), 2) AS precio_promedio,
    SUM(p.stock) AS stock_total
FROM Categoria c
LEFT JOIN Producto p ON c.id_categoria = p.id_categoria AND p.activo = 1
GROUP BY c.id_categoria, c.nombre_categoria;
GO