CREATE DATABASE EnergyBD;

USE EnergyBD;


-- TABLA TIPO_USUARIO

CREATE TABLE Tipo_usuario (
    id_tipoUsuario INT IDENTITY(1,1) NOT NULL,
    nombre_tipoUsuario VARCHAR(50) NOT NULL,

    CONSTRAINT PK_Tipo_usuario PRIMARY KEY (id_tipoUsuario),

    CONSTRAINT UQ_Tipo_usuario_nombre UNIQUE (nombre_tipoUsuario)
);

-- TABLA USUARIO

CREATE TABLE Usuario (
    id_usuario INT IDENTITY(1,1) NOT NULL,
    nombre_usuario VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL,
    contrasenia VARCHAR(100) NOT NULL,
    activo INT NOT NULL,
    id_tipoUsuario INT NOT NULL,

    CONSTRAINT PK_Usuario PRIMARY KEY (id_usuario),

    CONSTRAINT UQ_Usuario_correo UNIQUE (correo),

    CONSTRAINT CK_Usuario_activo CHECK (activo IN (0,1)),

    CONSTRAINT FK_Usuario_TipoUsuario FOREIGN KEY (id_tipoUsuario) REFERENCES Tipo_usuario(id_tipoUsuario)
);

ALTER TABLE Usuario
ADD CONSTRAINT DF_Usuario_activo DEFAULT 1 FOR activo;

-- TABLA TELEFONO

CREATE TABLE Telefono (
    id_telefono INT IDENTITY(1,1) NOT NULL,
    nro_telefono VARCHAR(20) NOT NULL,
    id_usuario INT NOT NULL,

    CONSTRAINT PK_Telefono PRIMARY KEY (id_telefono),

    CONSTRAINT UQ_Telefono_numero UNIQUE (nro_telefono),

    CONSTRAINT FK_Telefono_Usuario FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);
-- TABLA MENSAJE

CREATE TABLE Mensaje (
    id_mensaje INT IDENTITY(1,1) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL,
    asunto VARCHAR(100) NOT NULL,
    contenido VARCHAR(1000) NOT NULL,
    leido INT NOT NULL,
    fecha_envio DATETIME NOT NULL,
    telefono VARCHAR(20) NULL,
    id_usuario INT NULL,

    CONSTRAINT PK_Mensaje PRIMARY KEY (id_mensaje),

    CONSTRAINT CK_Mensaje_leido CHECK (leido IN (0,1)),

    CONSTRAINT FK_Mensaje_Usuario FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);


ALTER TABLE Mensaje
ADD CONSTRAINT DF_Mensaje_leido DEFAULT 0 FOR leido;

