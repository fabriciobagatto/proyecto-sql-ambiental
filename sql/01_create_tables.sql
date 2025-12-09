-- ================================================
--   CREACIÓN DE BASE DE DATOS - PROYECTO SQL AMBIENTAL (OIL & GAS)
--   Autor: Fabricio
--   Descripción: Esquema completo de tablas para auditorías ambientales
--   Motor: SQLite
-- ================================================

-- Asegurar que las claves foráneas estén habilitadas
PRAGMA foreign_keys = ON;

---------------------------------------------------
-- TABLA: sitios
-- Descripción: catálogo de sitios/instalaciones
---------------------------------------------------
CREATE TABLE sitios (
    sitio_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    region TEXT,
    tipo_sitio TEXT,
    lat REAL,
    lon REAL,
    operador TEXT,
    estado TEXT    -- e.g., "Operativo", "En mantenimiento"
);

---------------------------------------------------
-- TABLA: auditores
-- Descripción: personas o equipos que realizan auditorías
---------------------------------------------------
CREATE TABLE auditores (
    auditor_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    especialidad TEXT,
    organizacion TEXT,
    contacto TEXT
);

---------------------------------------------------
-- TABLA: normativas
-- Descripción: catálogo de normativas aplicables
---------------------------------------------------
CREATE TABLE normativas (
    norma_id INTEGER PRIMARY KEY AUTOINCREMENT,
    codigo TEXT NOT NULL,     -- Ej: "Ley 123/2010"
    titulo TEXT,
    descripcion TEXT,
    nivel TEXT,                -- Nacional / Provincial / Interna
    vigente_desde DATE,
    vigente_hasta DATE
);

---------------------------------------------------
-- TABLA: auditorias
-- Descripción: auditorías realizadas en cada sitio
---------------------------------------------------
CREATE TABLE auditorias (
    auditoria_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sitio_id INTEGER NOT NULL,
    auditor_id INTEGER NOT NULL,
    fecha DATE NOT NULL,
    tipo_auditoria TEXT,       -- Ej: Rutina, Periódica, Incidente
    alcance TEXT,
    resultado_global TEXT,     -- Cumple / Condicional / No cumple
    comentarios TEXT,

    -- Relaciones
    FOREIGN KEY (sitio_id) REFERENCES sitios(sitio_id),
    FOREIGN KEY (auditor_id) REFERENCES auditores(auditor_id)
);

---------------------------------------------------
-- TABLA: hallazgos
-- Descripción: hallazgos / no conformidades detectadas
---------------------------------------------------
CREATE TABLE hallazgos (
    hallazgo_id INTEGER PRIMARY KEY AUTOINCREMENT,
    auditoria_id INTEGER NOT NULL,
    norma_id INTEGER,          -- puede ser NULL si es hallazgo interno
    categoria TEXT NOT NULL,   -- Ej: Gestión de residuos, Emisiones
    tipo TEXT,                 -- No Conformidad / Observación / Mejora
    descripcion TEXT,
    criticidad TEXT,           -- Baja / Media / Alta
    recomendacion TEXT,
    fecha_detectado DATE,
    estado TEXT,               -- Abierto / En progreso / Cerrado

    -- Relaciones
    FOREIGN KEY (auditoria_id) REFERENCES auditorias(auditoria_id),
    FOREIGN KEY (norma_id) REFERENCES normativas(norma_id)
);

---------------------------------------------------
-- TABLA: acciones_correctivas
-- Descripción: acciones derivadas de hallazgos
---------------------------------------------------
CREATE TABLE acciones_correctivas (
    accion_id INTEGER PRIMARY KEY AUTOINCREMENT,
    hallazgo_id INTEGER NOT NULL,
    responsable TEXT,
    fecha_inicio DATE,
    fecha_compromiso DATE,
    fecha_cierre DATE,
    estado TEXT,               -- Planificada / En ejecución / Cerrada
    comentarios TEXT,

    -- Relaciones
    FOREIGN KEY (hallazgo_id) REFERENCES hallazgos(hallazgo_id)
);

---------------------------------------------------
-- ÍNDICES (mejoran performance en consultas analíticas)
---------------------------------------------------

CREATE INDEX idx_auditorias_sitio_fecha
    ON auditorias (sitio_id, fecha);

CREATE INDEX idx_hallazgos_auditoria
    ON hallazgos (auditoria_id);

CREATE INDEX idx_hallazgos_norma
    ON hallazgos (norma_id);

CREATE INDEX idx_acciones_hallazgo
    ON acciones_correctivas (hallazgo_id);
