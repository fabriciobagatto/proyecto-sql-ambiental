# Análisis de Cumplimiento Ambiental en la Industria Oil & Gas utilizando SQL (SQLite)

Proyecto desarrollado para demostrar habilidades en modelado de datos, SQL intermedio, análisis exploratorio y generación de métricas operativas aplicadas al ámbito ambiental, con foco en auditorías, normativa, hallazgos y acciones correctivas dentro de instalaciones Oil & Gas.

## 1. Objetivo del proyecto

Este proyecto tiene como finalidad:

- Construir desde cero una **base de datos ambiental completa** basada en un sistema de auditorías ambientales.
- Simular un flujo realista de datos: sitios, auditores, auditorías, normativas, hallazgos y acciones correctivas.
- Ejecutar consultas analíticas que respondan preguntas clave del negocio ambiental.
- Mostrar habilidades de SQL a nivel profesional.
- Permitir reproducir todo el trabajo mediante scripts y base de datos incluida.

## 2. Contexto ambiental

Como **Environmental Data Analyst**, este tipo de análisis permite:

- Identificar instalaciones críticas.
- Detectar brechas de cumplimiento normativo.
- Evaluar la eficacia del sistema de gestión ambiental.
- Priorización de riesgos por criticidad.
- Medir desempeño en cierre de hallazgos y acciones correctivas.

## 3. Estructura del repositorio
```
proyecto-sql-ambiental/
├── README.md
├── data/
│   └── database.sqlite
├── sql/
│   ├── 01_create_tables.sql
│   ├── 02_insert_data.sql
│   └── 03_queries_analisis.sql
├── docs/
│   └── diseño_esquema.md
└── assets/
    └── capturas/
```

## 4. Modelo de datos (DER)

Diagrama Entidad-Relación general del sistema utilizado:
```mermaid
erDiagram
    SITIOS ||--o{ AUDITORIAS : "tiene"
    AUDITORES ||--o{ AUDITORIAS : "realiza"
    AUDITORIAS ||--o{ HALLAZGOS : "genera"
    NORMATIVAS ||--o{ HALLAZGOS : "relaciona"
    HALLAZGOS ||--o{ ACCIONES_CORRECTIVAS : "requiere"
```

### Relaciones principales

- Sitio 1 --- N Auditorías
- Auditor 1 --- N Auditorías
- Auditoría 1 --- N Hallazgos
- Normativa 1 --- N Hallazgos
- Hallazgo 1 --- N Acciones Correctivas

## 5. Scripts incluidos

### 01_create_tables.sql

Crea las 6 tablas del modelo con claves foráneas activadas (`PRAGMA foreign_keys = ON`), índices y comentarios estructurales.

### 02_insert_data.sql

Inserta más de **500 registros generados de forma automática**, incluyendo:

- 20 sitios
- 15 auditores
- 25 normativas
- 105 auditorías
- 200 hallazgos
- 160 acciones correctivas

### **Nota importante sobre la naturaleza de los datos:**

*Todos los datos utilizados en este proyecto son completamente simulados.*

*Aunque la estructura de la base de datos, las tablas, los criterios de auditoría y las relaciones entre entidades fueron diseñadas siguiendo prácticas reales de la industria Oil & Gas y la gestión ambiental, ningún registro corresponde a instalaciones, empresas, personas, auditorías o eventos reales.*

*El propósito del proyecto es meramente demostrar habilidades técnicas en SQL, modelado de datos y análisis ambiental, y no representa información confidencial, propietaria ni vinculada a operaciones reales.*

### 03_queries_analisis.sql

Incluye 8 consultas clave del negocio ambiental:

1. Sitios más auditados
2. Tipos de auditoría más frecuentes y evolución
3. Auditorías con más hallazgos
4. Distribución por criticidad y tipo
5. Tiempo promedio de cierre por sitio y auditor
6. Normativas más incumplidas
7. Sitios con mayor proporción de hallazgos críticos
8. Tasa de cierre anual de hallazgos

## 6. Resultados destacados

A continuación se resumen algunos de los hallazgos más relevantes del análisis SQL realizado:

### 6.1 Sitios con mayor cantidad de auditorías

Los sitios con mayor volumen de auditorías resultaron ser:

- **Planta Río Verde (Chubut)**
- **Pozo San Martín (Neuquén)**
- **Poza El Trebol (La Pampa)**

![Sitios más auditados](assets/capturas/sitios_mas_auditados.jpg)

**Interpretación:**  
Sitios operativamente críticos o con historial relevante, que requieren mayor seguimiento.

### 6.2 Tipos de auditoría más frecuentes y evolución temporal

![Tipos de auditoría](assets/capturas/tipos_de_auditorias.jpg)

Las auditorías de rutina fueron las mas frecuentes

### 6.3 Auditorías con más hallazgos

Las auditorías realizadas en sitios de tratamiento y bombeo fueron las que presentaron mayor cantidad de hallazgos, indicando:

- Procesos más complejos
- Mayor interacción con sustancias peligrosas
- Mayor probabilidad de desvíos

![Auditorías con más hallazgos](assets/capturas/auditorias_con_mas_hallazgos.jpg)

### 6.4 Distribución por criticidad y tipo de hallazgos

![Criticidad de hallazgos](assets/capturas/criticidad_de_hallazgos.jpg)

El análisis de criticidad permite priorizar acciones correctivas según el nivel de riesgo ambiental identificado.

### 6.5 Tiempo promedio de cierre de acciones correctivas

Los promedios por sitio varían ampliamente:

- Sitios con promedios cercanos a **30-45 días** → buena capacidad operativa
- Sitios con cierres > **90 días** → backlog o dificultad técnica/administrativa

#### Por sitio:
![Tiempo de cierre por sitio](assets/capturas/tiempo_cierre_acciones_por_sitio.jpg)

#### Por auditor:
![Tiempo de cierre por auditor](assets/capturas/tiempo_cierre_acciones_por_auditor.jpg)

---

### 6.6 Normativas más incumplidas

Las normas con más hallazgos asociados fueron:

- **Decreto 45/2010 - Emisiones Atmosféricas**
- **Res. 12/2012 - Efluentes Industriales**

![Normativas más incumplidas](assets/capturas/normativa_mas_incumplida.jpg)

**Interpretación:**  
Problemas comunes en la industria Oil & Gas y focos típicos de auditoría.

---

### 6.7 Sitios con mayor proporción de hallazgos críticos

Se identificaron sitios donde más del **20%** de los hallazgos son de criticidad **Alta**, lo cual indica un riesgo elevado que requiere priorización en inspecciones y cierre de acciones.

![Sitios con más hallazgos críticos](assets/capturas/sitios_con_mas_hallazgos.jpg)

---

### 6.8 Tasa de cierre anual de hallazgos

![Tasa de cierre de hallazgos](assets/capturas/tasa_cierre_hallazgos.jpg)

Este indicador permite evaluar la eficiencia del sistema de gestión ambiental en la resolución de no conformidades a lo largo del tiempo.

## 7. Reproducción del proyecto

### Requisitos

- **DB Browser for SQLite**
- **SQLite3**
- (Opcional) Power BI para dashboards

### Pasos

1. Clonar el proyecto
2. Abrir `database.sqlite` desde `/data`
3. Si se desea recrear desde cero:  
   Ejecutar secuencialmente `01_create_tables.sql` → `02_insert_data.sql`
4. Explorar análisis desde los scripts
