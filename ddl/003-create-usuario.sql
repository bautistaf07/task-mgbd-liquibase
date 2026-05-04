--liquibase formatted sql
--changeset estudiante:3
CREATE TABLE usuario (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    activo BOOLEAN DEFAULT TRUE,
    persona_id INTEGER NOT NULL,
    rol_id INTEGER NOT NULL,
    CONSTRAINT fk_usuario_persona FOREIGN KEY (persona_id) REFERENCES persona(id) ON DELETE RESTRICT,
    CONSTRAINT fk_usuario_rol FOREIGN KEY (rol_id) REFERENCES rol(id) ON DELETE RESTRICT
);