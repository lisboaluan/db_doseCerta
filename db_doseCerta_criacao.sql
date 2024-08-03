
CREATE DATABASE db_DoseCerta;

USE db_DoseCerta;

CREATE TABLE tbl_Anotacao (
id SMALLINT AUTO_INCREMENT PRIMARY KEY,
mensagem VARCHAR (300) NOT NULL
);

CREATE TABLE tbl_Endereco (
id SMALLINT AUTO_INCREMENT PRIMARY KEY,
cep VARCHAR(8) NOT NULL,
estado VARCHAR(50) NOT NULL,
cidade VARCHAR(50) NOT NULL,
bairro VARCHAR(50) NOT NULL,
rua VARCHAR(50) NOT NULL,
numero VARCHAR(10) NOT NULL,
complemento VARCHAR(20),
id_usuario FOREIGN KEY /* ainda não criado */
);

/* ainda não criado */

CREATE TABLE tbl_Usuario (
id SMALLINT AUTO_INCREMENT PRIMARY KEY,
login VARCHAR(15) NOT NULL,
senha VARCHAR(20) NOT NULL, /* verificar tipo de dado */
nome VARCHAR(20) NOT NULL,
email VARCHAR(15) NOT NULL,
dataNascimento DATE NOT NULL,
genero CHAR(1) NOT NULL,
);


CREATE TABLE tbl_Medicamento (
id SMALLINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(25) NOT NULL,
formato VARCHAR(20) NOT NULL,
medida VARCHAR(5) NOT NULL,
unidMedida VARCHAR(5) NOT NULL,
quantEstoque VARCHAR(5) NOT NULL,
formatoEstoque VARCHAR(20) NOT NULL
);


/* repensado */

CREATE TABLE tbl_Alerta (
id SMALLINT AUTO_INCREMENT PRIMARY KEY, 
periodicidade VARCHAR (20) NOT NULL,
horarioPrimeiraDose TIME NOT NULL,
diasTratamento VARCHAR (20) NOT NULL,
dosagem VARCHAR(20) NOT NULL,
notificar BOOLEAN NOT NULL,
id_usuario FOREIGN KEY,
id_medicamento FOREIGN KEY
);

CREATE TABLE tbl_Agenda (
id SMALLINT AUTO_INCREMENT PRIMARY KEY, 
dataHora DATE NOT NULL, 
situacaoIngestao BOOLEAN NOT NULL,
id_alerta FOREIGN KEY,
id_anotacao FOREIGN KEY
);

