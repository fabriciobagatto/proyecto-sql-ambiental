-- ================================================
-- 1) Sitios con mayor cantidad de auditorías
-- ================================================

SELECT 
    s.sitio_id,
    s.nombre,
    COUNT(a.auditoria_id) AS total_auditorias
FROM sitios s
LEFT JOIN auditorias a ON a.sitio_id = s.sitio_id
GROUP BY s.sitio_id, s.nombre
ORDER BY total_auditorias DESC;


-- ================================================
-- 2) Tipos de auditoría más frecuentes y evolución por año
-- ================================================

SELECT
    STRFTIME('%Y', fecha) AS anio,
    tipo_auditoria,
    COUNT(*) AS total
FROM auditorias
GROUP BY anio, tipo_auditoria
ORDER BY anio, total DESC;

-- ================================================
-- 3) Auditorías con más hallazgos y su detalle
-- ================================================

SELECT 
    a.auditoria_id AS id_auditoria,
    s.nombre AS sitio,
    COUNT(h.hallazgo_id) AS total_hallazgos
FROM auditorias a
LEFT JOIN hallazgos h ON h.auditoria_id = a.auditoria_id
LEFT JOIN sitios s ON s.sitio_id = a.sitio_id
GROUP BY a.auditoria_id, s.nombre
ORDER BY total_hallazgos DESC;

-- ================================================
-- 4) Distribución por tipo y criticidad de hallazgos
-- ================================================

SELECT 
    tipo,
    criticidad,
    COUNT(*) AS total
FROM hallazgos
GROUP BY tipo, criticidad
ORDER BY tipo, criticidad;

-- ================================================
-- 5) Tiempo promedio de cierre de acciones correctivas (por sitio y por auditor)
-- ================================================

--5A — Por sitio
SELECT
    s.nombre AS sitio,
    AVG(julianday(ac.fecha_cierre) - julianday(ac.fecha_inicio)) AS dias_promedio_cierre
FROM acciones_correctivas ac
JOIN hallazgos h ON h.hallazgo_id = ac.hallazgo_id
JOIN auditorias a ON a.auditoria_id = h.auditoria_id
JOIN sitios s ON s.sitio_id = a.sitio_id
WHERE ac.fecha_cierre IS NOT NULL
GROUP BY s.nombre
ORDER BY dias_promedio_cierre DESC;

--5B — Por auditor
SELECT
    au.nombre AS auditor,
    AVG(julianday(ac.fecha_cierre) - julianday(ac.fecha_inicio)) AS dias_promedio_cierre
FROM acciones_correctivas ac
JOIN hallazgos h ON h.hallazgo_id = ac.hallazgo_id
JOIN auditorias a ON a.auditoria_id = h.auditoria_id
JOIN auditores au ON au.auditor_id = a.auditor_id
WHERE ac.fecha_cierre IS NOT NULL
GROUP BY au.nombre
ORDER BY dias_promedio_cierre DESC;


-- ================================================
-- 6) Normativas más frecuentemente incumplidas
-- ================================================

SELECT
    n.codigo,
    n.titulo,
    COUNT(h.hallazgo_id) AS total_incumplimientos
FROM normativas n
LEFT JOIN hallazgos h ON h.norma_id = n.norma_id
GROUP BY n.norma_id, n.codigo, n.titulo
ORDER BY total_incumplimientos DESC;

-- ================================================
-- 7) Sitios con mayor proporción de hallazgos “Alta” sobre el total
-- ================================================

SELECT
    s.nombre AS sitio,
    COUNT(CASE WHEN h.criticidad = 'Alta' THEN 1 END) * 1.0 /
    COUNT(h.hallazgo_id) AS proporcion_alta
FROM sitios s
JOIN auditorias a ON a.sitio_id = s.sitio_id
JOIN hallazgos h ON h.auditoria_id = a.auditoria_id
GROUP BY s.nombre
ORDER BY proporcion_alta DESC;


-- ================================================
-- 8) Tasa de cierre de hallazgos por año y por sitio
-- ================================================

SELECT
    STRFTIME('%Y', a.fecha) AS anio,
    s.nombre AS sitio,
    SUM(CASE WHEN h.estado = 'Cerrado' THEN 1 ELSE 0 END) * 1.0 /
    COUNT(h.hallazgo_id) AS tasa_cierre
FROM auditorias a
JOIN hallazgos h ON h.auditoria_id = a.auditoria_id
JOIN sitios s ON s.sitio_id = a.sitio_id
GROUP BY anio, sitio
ORDER BY anio, tasa_cierre DESC;
