# Investigación sobre Liquibase

## ¿Qué es Liquibase?
Liquibase es una herramienta de código abierto para el control de versiones de bases de datos. Permite definir cambios en la estructura (DDL) y los datos (DML) mediante scripts versionados.

## Conceptos clave
- **Changelog**: Archivo maestro que enumera todos los cambiosets.
- **Changeset**: Cada cambio atómico (crear tabla, insertar datos). Se identifica por autor e id.
- **Rollback**: Permite deshacer cambios aplicados.
- **DDL**: Lenguaje de definición de datos (CREATE, ALTER, DROP).
- **DML**: Lenguaje de manipulación de datos (INSERT, UPDATE, DELETE).

## Integración con Docker
En este proyecto se usa Docker Compose para levantar PostgreSQL y un contenedor de Liquibase que aplica las migraciones automáticamente.

## Ventajas
- Reproducibilidad del esquema en cualquier entorno.
- Historial de cambios.
- Separación clara entre estructura y datos.