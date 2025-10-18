-- Ciudad
CREATE TABLE Ciudad (
    id_ciudad INT PRIMARY KEY,
    nombre VARCHAR(100),
    cod_postal VARCHAR(100)
);

-- Usuario
CREATE TABLE Usuario (
    id_usuario INT PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    id_ciudad INT,
    departamento VARCHAR(100),
    cargo VARCHAR(100),
    tipo_usuario INT,
    FOREIGN KEY(id_ciudad) REFERENCES Ciudad(id_ciudad)
);

-- Servicio
CREATE TABLE Servicio (
    id_servicio INT PRIMARY KEY,
    nombre VARCHAR(100),
    estado VARCHAR(100),
    descripcion VARCHAR(255)
);

-- Medio
CREATE TABLE Medio (
    medio_id INT PRIMARY KEY,
    tipo VARCHAR(100)
);

-- Turno
CREATE TABLE Turno (
    id_turno INT PRIMARY KEY,
    fecha DATE,
    hora_fin TIME,
    hora_ini TIME,
    estado VARCHAR(100),
    id_usuario INT,
    id_servicio INT,
    id_empleado INT,
    FOREIGN KEY(id_usuario) REFERENCES Usuario(id_usuario),
    FOREIGN KEY(id_servicio) REFERENCES Servicio(id_servicio),
    FOREIGN KEY(id_empleado) REFERENCES Usuario(id_usuario)
);

-- Notificacion
CREATE TABLE Notificacion (
    id_notificacion INT PRIMARY KEY,
    fecha_envio DATE,
    estado VARCHAR(100),
    medio_id INT,
    id_usuario INT,
    FOREIGN KEY(medio_id) REFERENCES Medio(medio_id),
    FOREIGN KEY(id_usuario) REFERENCES Usuario(id_usuario)
);

-- Condicion
CREATE TABLE Condicion (
    id_condicion INT PRIMARY KEY,
    tipo_condicion VARCHAR(100),
    id_usuario INT,
    FOREIGN KEY(id_usuario) REFERENCES Usuario(id_usuario)
);
