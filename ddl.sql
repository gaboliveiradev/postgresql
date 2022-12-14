CREATE DATABASE pgsql_teste;

CREATE SEQUENCE email_seq
	INCREMENT 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1;
	
CREATE SEQUENCE funcionario_seq
	INCREMENT 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1;

CREATE TABLE Email (
	id int NOT NULL DEFAULT nextval('email_seq'),
	descricao varchar(100) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE Funcionario (
	id int NOT NULL DEFAULT nextval('funcionario_seq'),
	nome varchar(100) NOT NULL,
	id_email int NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (id_email) REFERENCES Email (id)
);
