--Restricciones en SQL

-- MySQL

CREATE TABLE empleados (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  dni VARCHAR(9) UNIQUE NOT NULL,
  edad INT CHECK UNSIGNED,
  salario DECIMAL(10, 2) CHECK (salario >= 0),
  fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
  UNIQUE (nombre),
  departamento ENUM('A', 'B', 'C') NOT NULL,
  departamento_id INT,
  FOREIGN KEY (departamento_id) REFERENCES departamentos(id)
);

-- POSTGRESQL
CREATE TABLE empleados (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  dni VARCHAR(9) UNIQUE NOT NULL,
  edad INTEGER CHECK (edad >= 0),
  salario DECIMAL(10, 2) CHECK (salario >= 0),
  fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  UNIQUE (nombre),
  departamento VARCHAR(1) CHECK (departamento IN ('A', 'B', 'C')) NOT NULL,
  departamento_id INT REFERENCES departamentos(id)
);

-- SQL Server
CREATE TABLE empleados (
  id INT PRIMARY KEY IDENTITY(1,1),
  nombre NVARCHAR(100) NOT NULL,
  dni VARCHAR(9) UNIQUE NOT NULL,
  edad INT CHECK (edad >= 0),
  salario DECIMAL(10, 2) CHECK (salario >= 0),
  fecha_creacion DATETIME DEFAULT GETDATE(),
  UNIQUE (nombre),
  departamento CHAR(1) CHECK (departamento IN ('A', 'B', 'C')) NOT NULL,
  departamento_id INT FOREIGN KEY REFERENCES departamentos(id)
);