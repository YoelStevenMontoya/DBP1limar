-- Ciudades
INSERT INTO Ciudad (id_ciudad, nombre, cod_postal) VALUES
(1, 'Bogotá', '110111'),
(2, 'Medellín', '050022'),
(3, 'Cali', '760001'),
(4, 'Barranquilla', '080001'),
(5, 'Cartagena', '130001'),
(6, 'Pereira', '660001'),
(7, 'Manizales', '170001'),
(8, 'Bucaramanga', '680001'),
(9, 'Santa Marta', '470001'),
(10, 'Villavicencio', '500001');

-- Usuarios
INSERT INTO Usuario (id_usuario, nombre, apellido, id_ciudad, departamento, cargo, tipo_usuario) VALUES
(1, 'Juan', 'Pérez', 1, 'Atención', 'Auxiliar', 1),
(2, 'María', 'Gómez', 2, 'Administración', 'Coordinadora', 1),
(3, 'Carlos', 'Ramírez', 3, 'Soporte', 'Técnico', 2),
(4, 'Sofía', 'Martínez', 4, 'Atención', 'Asistente', 1),
(5, 'Pedro', 'López', 5, 'Gestión', 'Analista', 2),
(6, 'Ana', 'Torres', 6, 'Atención', 'Recepcionista', 3),
(7, 'Luis', 'Rodríguez', 7, 'Operaciones', 'Supervisor', 2),
(8, 'Laura', 'Suárez', 8, 'Soporte', 'Técnico', 1),
(9, 'Andrés', 'Morales', 9, 'Administración', 'Gerente', 3),
(10, 'Camila', 'Díaz', 10, 'Atención', 'Auxiliar', 1);

-- Servicios
INSERT INTO Servicio (id_servicio, nombre, estado, descripcion) VALUES
(1, 'Registro de turno', 'activo', 'Permite registrar nuevos turnos.'),
(2, 'Cancelación de turno', 'activo', 'Permite cancelar turnos existentes.'),
(3, 'Consulta de estado', 'activo', 'Consulta el estado actual de un turno.'),
(4, 'Reasignación de turno', 'activo', 'Permite cambiar el empleado asignado.'),
(5, 'Atención presencial', 'activo', 'Atención directa al cliente en oficina.'),
(6, 'Atención virtual', 'activo', 'Atención al cliente en línea.'),
(7, 'Soporte técnico', 'activo', 'Gestión de soporte de sistema.'),
(8, 'Informes', 'activo', 'Generación de reportes del sistema.'),
(9, 'Seguimiento', 'activo', 'Seguimiento de solicitudes de clientes.'),
(10, 'Actualización de datos', 'activo', 'Permite actualizar información del usuario.');

-- Medios
INSERT INTO Medio (medio_id, tipo) VALUES
(1, 'Correo electrónico'),
(2, 'Teléfono'),
(3, 'SMS'),
(4, 'WhatsApp'),
(5, 'Correo electrónico'),
(6, 'Teléfono'),
(7, 'SMS'),
(8, 'WhatsApp'),
(9, 'Correo electrónico'),
(10, 'Teléfono');

-- Turnos
INSERT INTO Turno (id_turno, fecha, hora_fin, hora_ini, estado, id_usuario, id_servicio, id_empleado) VALUES
(1, '2025-10-17', '09:30:00', '09:00:00', 'programado', 1, 1, 3),
(2, '2025-10-17', '10:00:00', '09:30:00', 'programado', 2, 2, 7),
(3, '2025-10-18', '10:30:00', '10:00:00', 'en curso', 3, 3, 5),
(4, '2025-10-18', '11:00:00', '10:30:00', 'finalizado', 4, 4, 3),
(5, '2025-10-19', '11:30:00', '11:00:00', 'programado', 5, 5, 7),
(6, '2025-10-19', '12:00:00', '11:30:00', 'programado', 6, 6, 5),
(7, '2025-10-20', '12:30:00', '12:00:00', 'cancelado', 7, 7, 3),
(8, '2025-10-20', '13:00:00', '12:30:00', 'programado', 8, 8, 5),
(9, '2025-10-21', '13:30:00', '13:00:00', 'en curso', 9, 9, 7),
(10, '2025-10-21', '14:00:00', '13:30:00', 'programado', 10, 10, 5);

-- Notificaciones
INSERT INTO Notificacion (id_notificacion, fecha_envio, estado, medio_id, id_usuario) VALUES
(1, '2025-10-16', 'enviada', 1, 1),
(2, '2025-10-16', 'fallida', 2, 2),
(3, '2025-10-17', 'enviada', 3, 3),
(4, '2025-10-17', 'enviada', 4, 4),
(5, '2025-10-18', 'pendiente', 5, 5),
(6, '2025-10-18', 'enviada', 6, 6),
(7, '2025-10-19', 'enviada', 7, 7),
(8, '2025-10-19', 'fallida', 8, 8),
(9, '2025-10-20', 'enviada', 9, 9),
(10, '2025-10-20', 'enviada', 10, 10);

-- Condiciones
INSERT INTO Condicion (id_condicion, tipo_condicion, id_usuario) VALUES
(1, 'activo', 1),
(2, 'inactivo', 2),
(3, 'activo', 3),
(4, 'pendiente', 4),
(5, 'activo', 5),
(6, 'activo', 6),
(7, 'inactivo', 7),
(8, 'activo', 8),
(9, 'activo', 9),
(10, 'pendiente', 10);
