-- ================================================
-- INSERTS PARA PROYECTO SQL AMBIENTAL (OIL & GAS)
-- Autor: Fabricio (generado por ChatGPT)
-- Descripción: Inserciones masivas (catálogos + generación en bloque)
-- Fecha de referencia: hasta 2025-11-30
-- ================================================

PRAGMA foreign_keys = ON;

---------------------------------------------------
-- 1) TABLA sitios (20 registros)
---------------------------------------------------
INSERT INTO sitios (sitio_id, nombre, region, tipo_sitio, lat, lon, operador, estado) VALUES
(1,  'Pozo San Martín',        'Neuquén',  'Pozo',                 -38.9412, -68.0676, 'Andes Energy',      'Operativo'),
(2,  'Pozo El Trébol',         'La Pampa', 'Pozo',                 -35.3000, -64.4020, 'Estepa Oil',        'Operativo'),
(3,  'Planta Río Verde',       'Chubut',   'Planta de tratamiento',-43.3000, -65.1000, 'Mar y Tierra S.A.', 'Mantenimiento'),
(4,  'Estación Norte',         'Neuquén',  'Estación de bombeo',   -38.7320, -68.1500, 'Andes Energy',      'Operativo'),
(5,  'Almacenamiento Sur',     'Santa Cruz','Almacenamiento',      -46.5000, -68.9000, 'Patagonia Fuel',    'Operativo'),
(6,  'Pozo Las Piedras',       'Neuquén',  'Pozo',                 -38.9000, -68.0000, 'Andes Energy',      'Operativo'),
(7,  'Planta Bahía',           'Chubut',   'Planta de tratamiento',-43.5000, -65.2000, 'Mar y Tierra S.A.', 'Operativo'),
(8,  'Estación Central',       'Buenos Aires','Estación de bombeo', -35.0000, -60.0000, 'Pampa Oil',         'Operativo'),
(9,  'Pozo El Pinar',          'La Pampa', 'Pozo',                 -35.5000, -64.7000, 'Estepa Oil',        'Mantenimiento'),
(10, 'Almacen Oeste',          'Neuquén',  'Almacenamiento',       -38.8000, -68.2000, 'Patagonia Fuel',    'Operativo'),
(11, 'Pozo Colonia',           'Santa Cruz','Pozo',                -46.7000, -69.0000, 'Patagonia Fuel',    'Operativo'),
(12, 'Planta Norte',           'La Pampa', 'Planta de tratamiento',-35.1000, -64.3000, 'Estepa Oil',        'Operativo'),
(13, 'Estación Este',          'Chubut',   'Estación de bombeo',   -43.2000, -65.0000, 'Mar y Tierra S.A.', 'Operativo'),
(14, 'Pozo Rio Claro',         'Buenos Aires','Pozo',              -36.0000, -58.0000, 'Pampa Oil',         'Cierre temporal'),
(15, 'Almacen Central',        'Neuquén',  'Almacenamiento',       -38.7000, -68.1000, 'Andes Energy',      'Operativo'),
(16, 'Pozo Sierra Alta',       'La Pampa', 'Pozo',                 -35.8000, -64.9000, 'Estepa Oil',        'Operativo'),
(17, 'Planta Laguna',          'Santa Cruz','Planta de tratamiento',-46.4000, -68.8000,'Patagonia Fuel',   'Operativo'),
(18, 'Pozo Laguna Seca',       'Chubut',   'Pozo',                 -43.6000, -65.3000, 'Mar y Tierra S.A.', 'Operativo'),
(19, 'Estación Sur',           'Buenos Aires','Estación de bombeo', -35.2000, -60.2000, 'Pampa Oil',         'Operativo'),
(20, 'Pozo Altamira',          'Neuquén',  'Pozo',                 -38.9500, -68.1200, 'Andes Energy',      'Operativo');

---------------------------------------------------
-- 2) TABLA auditores (15 registros)
---------------------------------------------------
INSERT INTO auditores (auditor_id, nombre, especialidad, organizacion, contacto) VALUES
(1,  'María González',      'Ambiental - Emisiones',    'Consultora Verde',     'm.gonzalez@consultav.com'),
(2,  'Juan Pérez',          'Residuos',                 'Auditorías Patag.',    'j.perez@audpat.com'),
(3,  'Lucía Fernández',     'Efluentes',                'Sostenible SRL',       'l.fernandez@sost.com'),
(4,  'Diego Ramírez',       'SST y Procesos',           'Control Ambiental',    'd.ramirez@control.com'),
(5,  'Ana Silva',           'Calidad de aire',          'AireLimpio',           'a.silva@airelimpio.com'),
(6,  'Carlos Méndez',       'Gestión de químicos',      'ChemSafe',             'c.mendez@chemsafe.com'),
(7,  'Sofía Torres',        'Ruido',                    'Acústica SA',          's.torres@acustica.com'),
(8,  'Martín López',        'Gestión integrada',        'Auditorías Patag.',    'm.lopez@audpat.com'),
(9,  'Daniela Rojas',       'Normativa / Legal',        'LegalEnv',             'd.rojas@legalenv.com'),
(10, 'Federico Castro',     'Operaciones',              'OperarBien',           'f.castro@operarb.com'),
(11, 'Carolina Díaz',       'EIA y Monitoreo',          'Consultora Verde',     'c.diaz@consultav.com'),
(12, 'Hugo Almeida',        'SST',                      'Control Ambiental',    'h.almeida@control.com'),
(13, 'Valeria Ruiz',        'Emisiones',                'AireLimpio',           'v.ruiz@airelimpio.com'),
(14, 'Pablo Ortega',        'Residuos',                 'Sostenible SRL',       'p.ortega@sost.com'),
(15, 'Irene Castillo',      'Gestión de proyectos',     'ChemSafe',             'i.castillo@chemsafe.com');

---------------------------------------------------
-- 3) TABLA normativas (25 registros)
---------------------------------------------------
INSERT INTO normativas (norma_id, codigo, titulo, descripcion, nivel, vigente_desde, vigente_hasta) VALUES
(1,  'Ley 100/2005',  'Gestión de Residuos Peligrosos',      'Regula manejo y disposición de residuos peligrosos', 'Nacional', '2005-06-01', NULL),
(2,  'Decreto 45/2010','Emisiones Atmosféricas',             'Umbrales y métodos de medición de emisiones',        'Nacional', '2010-03-15', NULL),
(3,  'Res. 12/2012',  'Tratamiento de Efluentes',             'Requisitos de efluentes líquidos industriales',      'Provincial', '2012-09-01', NULL),
(4,  'Norma Int 01',  'Manejo Interno de Químicos',          'Procedimientos internos para almacenamiento',        'Interna', '2018-01-01', NULL),
(5,  'Ley 210/2014',  'Protección de Suelos',                'Límites para contaminantes en suelos',               'Nacional', '2014-05-10', NULL),
(6,  'Res. 33/2016',  'Monitoreo de Ruido',                 'Niveles permisibles de ruido industrial',           'Provincial', '2016-07-01', NULL),
(7,  'Decreto 90/2008','Plan de Emergencia Ambiental',       'Obligaciones de planes de contingencia',            'Nacional', '2008-02-20', NULL),
(8,  'Res. 77/2019',  'Control de Derrames',                'Procedimientos y respuesta ante derrames',          'Provincial', '2019-11-01', NULL),
(9,  'Ley 305/2017',  'Seguridad y Salud Ocupacional',      'Requisitos SST para actividades petroleras',        'Nacional', '2017-04-01', NULL),
(10, 'Prov. 5/2015',  'Protección de Humedales',            'Regulación sobre intervenciones en humedales',      'Provincial', '2015-02-15', NULL),
(11, 'Norma Int 02',  'Reporte Interno de Incidentes',      'Formato y plazos internos de reporte',              'Interna', '2019-01-01', NULL),
(12, 'Ley 420/2011',  'Calidad de Aguas',                   'Estándares de calidad de cuerpos de agua',          'Nacional', '2011-10-01', NULL),
(13, 'Res. 99/2020',  'Muestreo de Emisiones',              'Protocolos para muestreo y análisis',               'Provincial', '2020-06-01', NULL),
(14, 'Decreto 10/2007','Control de Almacenamiento',          'Requisitos para tanques y depósitos',               'Nacional', '2007-08-01', NULL),
(15, 'Res. 55/2018',  'Gestión de Residuos No Peligrosos',  'Buenas prácticas para residuos comunes',             'Provincial', '2018-05-01', NULL),
(16, 'Ley 511/2013',  'Evaluación de Impacto Ambiental',    'Obligatoriedad de EIA para proyectos significativos', 'Nacional', '2013-12-01', NULL),
(17, 'Res. 23/2014',  'Control de Emisiones Fugitivas',     'Medidas sobre fugas en instalaciones',              'Provincial', '2014-09-01', NULL),
(18, 'Norma Int 03',  'Inspecciones Periódicas',            'Frecuencia mínima de inspecciones internas',        'Interna', '2017-06-01', NULL),
(19, 'Decreto 88/2016','Manejo de Lodos',                     'Disposición y tratamiento de lodos',                'Nacional', '2016-03-01', NULL),
(20, 'Res. 44/2013',  'Plan de Monitoreo',                  'Lineamientos para planes de monitoreo ambiental',   'Provincial', '2013-05-01', NULL),
(21, 'Ley 600/2009',  'Protección de Acuíferos',            'Restricciones de actividades sobre acuíferos',      'Nacional', '2009-04-01', NULL),
(22, 'Res. 12/2021',  'Control de Olores',                  'Metodología para evaluación de olores',             'Provincial', '2021-02-01', NULL),
(23, 'Decreto 02/2018','Rutas de Evacuación',                'Normas sobre señalización y rutas de evacuación',   'Nacional', '2018-11-01', NULL),
(24, 'Norma Int 04',  'Capacitación y Competencias',        'Requisitos mínimos de capacitación',                'Interna', '2016-09-01', NULL),
(25, 'Res. 101/2019', 'Reporte Anual Ambiental',            'Formato y contenido del reporte anual',             'Provincial', '2019-12-01', NULL);

---------------------------------------------------
-- 4) Generar 80 auditorías con CTE RECURSIVE (auditorias)
--    - auditoria_id: 1..80
--    - sitio_id, auditor_id se asignan en round-robin
--    - fechas: distribuidas a lo largo de los años (cada ~30 días)
--    - tipo_auditoria y resultado_global rotan por modulo
---------------------------------------------------
WITH RECURSIVE seq(n) AS (
    SELECT 0
    UNION ALL
    SELECT n+1 FROM seq WHERE n < 79
)
INSERT INTO auditorias (auditoria_id, sitio_id, auditor_id, fecha, tipo_auditoria, alcance, resultado_global, comentarios)
SELECT
    n+1 AS auditoria_id,
    (n % 20) + 1 AS sitio_id,
    (n % 15) + 1 AS auditor_id,
    -- fechas: empezando 2018-01-15, cada 30 días aproximadamente
    date('2018-01-15', '+' || (n * 30) || ' days') AS fecha,
    CASE (n % 4)
        WHEN 0 THEN 'Rutina'
        WHEN 1 THEN 'Periódica'
        WHEN 2 THEN 'Incidente'
        ELSE 'Seguimiento'
    END AS tipo_auditoria,
    'Alcance estándar: inspección operativa y documental' AS alcance,
    CASE (n % 3)
        WHEN 0 THEN 'Cumple'
        WHEN 1 THEN 'Condicional'
        ELSE 'No cumple'
    END AS resultado_global,
    'Comentario generado automáticamente para auditoría ' || (n+1) AS comentarios
FROM seq;

-- ============================================
-- 25 REGISTROS ADICIONALES PARA AUDITORÍAS y obtener una distribución de auditorías por sitio desbalanceada
-- ============================================

INSERT INTO auditorias (sitio_id, auditor_id, fecha, tipo_auditoria, alcance, resultado_global, comentarios)
VALUES
-- Sitio 1 – sitio con alto nivel de auditorías
(1, 2, '2024-01-15', 'Rutina', 'Instalaciones superficiales', 'Cumple', 'Auditoría rutinaria sin desvíos'),
(1, 3, '2024-03-22', 'Periódica', 'Equipos críticos', 'Condicional', 'Se requieren ajustes menores'),
(1, 1, '2024-08-10', 'Incidente', 'Derrame menor', 'No cumple', 'Incidente ambiental reportado'),

-- Sitio 2 – frecuencia moderada
(2, 1, '2023-11-05', 'Rutina', 'Operación general', 'Cumple', 'Todo en orden'),
(2, 4, '2024-02-18', 'Periódica', 'Gestión de residuos', 'Condicional', 'Hallazgos menores'),
(2, 2, '2024-06-09', 'Rutina', 'Equipos de bombeo', 'Cumple', 'Correcto funcionamiento'),

-- Sitio 3 – sitio muy auditado
(3, 5, '2023-12-12', 'Rutina', 'Integridad de ductos', 'No cumple', 'Corrosión en tramos expuestos'),
(3, 3, '2024-01-28', 'Periódica', 'Operación general', 'Condicional', 'Se requieren mejoras'),
(3, 4, '2024-04-14', 'Incidente', 'Pérdida de contención', 'No cumple', 'Fuga detectada y controlada'),
(3, 2, '2024-07-30', 'Rutina', 'Seguridad operativa', 'Cumple', 'Correcto funcionamiento'),

-- Sitio 4 – sitio poco auditado
(4, 1, '2024-03-19', 'Rutina', 'Control general', 'Cumple', 'Sin observaciones'),
(4, 5, '2024-09-01', 'Periódica', 'Gestión de residuos', 'Condicional', 'Faltan registros actualizados'),

-- Sitio 5 – sitio de bajo riesgo
(5, 2, '2024-05-11', 'Rutina', 'Inspección general', 'Cumple', 'Todo conforme'),

-- Sitio 6 – varios incidentes
(6, 3, '2023-10-02', 'Incidente', 'Derrame superficial', 'No cumple', 'Evento significativo'),
(6, 3, '2024-01-09', 'Periódica', 'Monitoreo post-incidente', 'Condicional', 'Aún en seguimiento'),
(6, 4, '2024-08-21', 'Rutina', 'Área operativa', 'Cumple', 'Normalizado'),

-- Sitio 7 – moderado
(7, 1, '2024-02-02', 'Rutina', 'Verificación general', 'Cumple', 'Sin desviaciones'),

-- Sitio 8 – crítico por equipos
(8, 2, '2023-09-22', 'Periódica', 'Integridad mecánica', 'No cumple', 'Fallas recurrentes'),
(8, 4, '2024-04-20', 'Rutina', 'Equipos críticos', 'Condicional', 'Fugas menores'),

-- Sitio 9 – baja actividad
(9, 5, '2024-06-04', 'Rutina', 'Control básico', 'Cumple', 'Sin observaciones'),

-- Sitio 10 – sitio nuevo con pocas auditorías
(10, 1, '2024-07-17', 'Rutina', 'Inspección inicial', 'Condicional', 'Registro incompleto'),
(10, 3, '2024-09-29', 'Rutina', 'Seguimiento inicial', 'Cumple', 'Mejora respecto a inspección anterior'),

-- Extras para aumentar el desbalance
(1, 4, '2024-10-05', 'Rutina', 'Baterías', 'Cumple', 'Sin observaciones'),
(3, 2, '2024-10-30', 'Periódica', 'Control operativo', 'Condicional', 'Detalles a corregir');





---------------------------------------------------
-- 5) Generar 200 hallazgos con CTE RECURSIVE (hallazgos)
--    - hallazgo_id: 1..200
--    - auditoria_id: referencia a auditorias 1..80 (round-robin)
--    - norma_id: la mayoría referencian normativas 1..25, algunos NULL (internos)
--    - criticidad, categoria, tipo, estado rotan
--    - fecha_detectado toma la fecha de la auditoría + offset de días
---------------------------------------------------
WITH RECURSIVE seq2(n) AS (
    SELECT 0
    UNION ALL
    SELECT n+1 FROM seq2 WHERE n < 199
)
INSERT INTO hallazgos (hallazgo_id, auditoria_id, norma_id, categoria, tipo, descripcion, criticidad, recomendacion, fecha_detectado, estado)
SELECT
    n+1 AS hallazgo_id,
    ((n % 80) + 1) AS auditoria_id,
    -- Hacemos NULL para ~10% de los hallazgos (internos)
    CASE WHEN (n % 10) = 0 THEN NULL ELSE ((n % 25) + 1) END AS norma_id,
    CASE (n % 7)
        WHEN 0 THEN 'Gestión de residuos'
        WHEN 1 THEN 'Emisiones'
        WHEN 2 THEN 'Vertidos'
        WHEN 3 THEN 'Gestión de químicos'
        WHEN 4 THEN 'Ruido'
        WHEN 5 THEN 'Efluentes'
        ELSE 'SST'
    END AS categoria,
    CASE (n % 3)
        WHEN 0 THEN 'No Conformidad'
        WHEN 1 THEN 'Observación'
        ELSE 'Mejora'
    END AS tipo,
    'Descripción del hallazgo ' || (n+1) || ': evidencia de incumplimiento o condición observada.' AS descripcion,
    CASE (n % 3)
        WHEN 0 THEN 'Baja'
        WHEN 1 THEN 'Media'
        ELSE 'Alta'
    END AS criticidad,
    'Recomendar acción correctiva: revisar procedimiento y ejecutar medidas correctivas. Referencia: auditoría ' || ((n % 80) + 1) AS recomendacion,
    -- fecha_detectado: fecha de auditoria + (n % 10) días
    date(
        (SELECT fecha FROM auditorias WHERE auditoria_id = ((n % 80) + 1)),
        '+' || (n % 10) || ' days'
    ) AS fecha_detectado,
    CASE (n % 3)
        WHEN 0 THEN 'Abierto'
        WHEN 1 THEN 'En progreso'
        ELSE 'Cerrado'
    END AS estado
FROM seq2;

---------------------------------------------------
-- 6) Generar 160 acciones_correctivas con CTE RECURSIVE (acciones_correctivas)
--    - accion_id: 1..160
--    - vinculadas a hallazgo_id 1..160
--    - fechas coherentes: fecha_inicio = fecha_detectado + 7d, fecha_compromiso = +90d, fecha_cierre puede ser NULL o fecha
--    - estado rotante
---------------------------------------------------
WITH RECURSIVE seq3(n) AS (
    SELECT 0
    UNION ALL
    SELECT n+1 FROM seq3 WHERE n < 159
)
INSERT INTO acciones_correctivas (accion_id, hallazgo_id, responsable, fecha_inicio, fecha_compromiso, fecha_cierre, estado, comentarios)
SELECT
    n+1 AS accion_id,
    n+1 AS hallazgo_id,
    CASE (n % 8)
        WHEN 0 THEN 'Jefe de Operaciones'
        WHEN 1 THEN 'Coordinador Ambiental'
        WHEN 2 THEN 'Encargado de Planta'
        WHEN 3 THEN 'Gerente de Mantenimiento'
        WHEN 4 THEN 'Responsable SST'
        WHEN 5 THEN 'Supervisor de Campo'
        WHEN 6 THEN 'Responsable de Calidad'
        ELSE 'Contratista Externo'
    END AS responsable,
    -- fecha_inicio = fecha_detectado + 7 días
    date((SELECT fecha_detectado FROM hallazgos WHERE hallazgo_id = n+1), '+7 days') AS fecha_inicio,
    -- fecha_compromiso = fecha_inicio + 90 días
    date((SELECT fecha_detectado FROM hallazgos WHERE hallazgo_id = n+1), '+97 days') AS fecha_compromiso,
    -- fecha_cierre: cerramos aproximadamente el 60% de las acciones (n % 5 <> 0)
    CASE WHEN (n % 5) <> 0 THEN date((SELECT fecha_detectado FROM hallazgos WHERE hallazgo_id = n+1), '+120 days') ELSE NULL END AS fecha_cierre,
    CASE (n % 3)
        WHEN 0 THEN 'Planificada'
        WHEN 1 THEN 'En ejecución'
        ELSE 'Cerrada'
    END AS estado,
    'Acción correctiva generada para hallazgo ' || (n+1) || '. Plazo y responsable asignado.' AS comentarios
FROM seq3;


--Modificamos la fecha de las acciones para mas variabilidad:
UPDATE acciones_correctivas
SET 
    -- fecha_inicio = fecha_detectado + 3–12 días
    fecha_inicio = DATE(
        (SELECT fecha_detectado 
         FROM hallazgos h 
         WHERE h.hallazgo_id = acciones_correctivas.hallazgo_id),
        '+' || ((acciones_correctivas.accion_id % 10) + 3) || ' days'
    ),

    -- fecha_compromiso variable según sitio
    fecha_compromiso = DATE(
        (SELECT fecha_detectado 
         FROM hallazgos h 
         WHERE h.hallazgo_id = acciones_correctivas.hallazgo_id),
        CASE (
            SELECT a.sitio_id 
            FROM auditorias a 
            JOIN hallazgos h ON h.auditoria_id = a.auditoria_id
            WHERE h.hallazgo_id = acciones_correctivas.hallazgo_id
        )
            WHEN 1 THEN '+' || (60 + (accion_id % 30)) || ' days'
            WHEN 2 THEN '+' || (80 + (accion_id % 50)) || ' days'
            WHEN 3 THEN '+' || (120 + (accion_id % 80)) || ' days'
            ELSE  '+' || (70 + (accion_id % 90)) || ' days'
        END
    ),

    -- fecha_cierre (algunas NULL)
    fecha_cierre = CASE 
        WHEN (accion_id % 7) IN (0, 1) THEN NULL   -- ~28% abiertas
        WHEN (accion_id % 9) = 0 THEN NULL         -- otro ~10%
        ELSE
            DATE(
                (SELECT fecha_detectado 
                 FROM hallazgos h 
                 WHERE h.hallazgo_id = acciones_correctivas.hallazgo_id),
                '+' || (20 + (accion_id % 180)) || ' days'
            )
    END;

-- FIN DEL SCRIPT DE INSERCIÓN
