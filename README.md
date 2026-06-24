# Repositorio sobre curso SQL

Author: Juan Francisco Martorello.

Pre-entrega Módulo 1: esquema base del proyecto retail (clientes, productos, ventas)

## Consideraciones

Se usó DBeaver con PostgreSQL.

## Ejecución

1. Crear la base de datos:
```sql
   CREATE DATABASE retail_project;
```
2. Conectarse a `retail_project` y ejecutar el script `modulo_1.sql` completo,
   que incluye:
   - DDL: creación de tablas con PK, FK y restricciones CHECK.
   - DML: carga inicial dentro de una transacción (BEGIN ... COMMIT).
   - Operaciones UPDATE y DELETE con cláusula WHERE.