Ejercicio "LiMar" Base de Datos

Este repositorio contiene las implementaciones de DDL y DML en sql del ejercicio práctico del parcial 1 de Bases de Datos 2025-2 G01.

**Por: Yoel Steven Montoya 2416571-3743
Docente: Jerfferson Peña
Cursso: Bases de datos**

**Sobre la creación y despliegue de base de datos:**

1. Crear el contenedor de PostgreSQL
   _docker run -d --name postgres_ulimar 
       -e POSTGRES_USER=ulimar 
       -e POSTGRES_PASSWORD=ex4men_db 
       -p 5432:5432 
       postgres:14_


2. **Crear el contenedor de pgAdmin**
   _docker run -d --name pgadmin_ulimar \
       -e PGADMIN_DEFAULT_EMAIL=usuario@servilimar.com \
       -e PGADMIN_DEFAULT_PASSWORD=limar#123 \
       -p 5050:80 \
       dpage/pgadmin4_

3. **Acceder a pgAdmin**
   * URL: http://localhost:5050
   * Usuario: usuario@servilimar.com
   * Contraseña: limar#123

4. **Conectarse al servidor**
   * Host: `localhost`
   * Puerto: `5432`
   * Usuario: `ulimar`
   * Contraseña: `ex4men_db`
