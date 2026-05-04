--liquibase formatted sql
--changeset estudiante:5
CREATE TABLE factura (
    id SERIAL PRIMARY KEY,
    numero_factura VARCHAR(20) UNIQUE NOT NULL,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total NUMERIC(12,2) DEFAULT 0,
    persona_id INTEGER NOT NULL,
    usuario_id INTEGER NOT NULL,
    CONSTRAINT fk_factura_persona FOREIGN KEY (persona_id) REFERENCES persona(id),
    CONSTRAINT fk_factura_usuario FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);