# task-mgbd-liquibase
task-mgbd-liquibase

# Tarea MGBD - Liquibase

Repositorio para el taller investigativo de migraciones de base de datos con Liquibase, Docker y PostgreSQL.

## Estructura del proyecto

- `ddl/`: scripts de creación de tablas.
- `dml/`: inserción, actualización y eliminación de datos.
- `queries/`: consultas de validación.
- `db/changelog/`: changelog maestro de Liquibase.
- `docker-compose.yml`: orquestación de PostgreSQL y Liquibase.
- `liquibase.properties`: configuración de conexión.