CREATE DATABASE `entity-join`;
Go;

CREATE TABLE `entity-join`.person (
	id INT PRIMARY KEY auto_increment,
	name varchar(10) NOT NULL,
	ageId INT NOT NULL
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;
Go;

CREATE TABLE `entity-join`.age (
	id INT PRIMARY KEY auto_increment,
	edad INT NOT NULL
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;
Go;
