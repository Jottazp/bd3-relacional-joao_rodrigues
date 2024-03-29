#CRIAÇÃO DO BANCO DE DADOS
CREATE DATABASE centro_cirurgico_bd;

#SELECIONA O BANCO DE DADOS
USE centro_cirurgico_bd;

#CRIAÇÃO DA TABELA ESPECIALIDADE
CREATE TABLE tbl_especialidade(
cod_especialidade INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nome_especialidade VARCHAR(100) NOT NULL
);

#CRIAÇÃO DA TABELA PACIENTE
CREATE TABLE tbl_paciente(
cod_paciente INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nome_paciente VARCHAR(500) NOT NULL,
telefone_paciente VARCHAR(10),
celular_paciente VARCHAR(11) NOT NULL,
email_paciente VARCHAR(100) NOT NULL,
nome_responsavel VARCHAR(500) NOT NULL,
telefone_responsavel VARCHAR(11) NOT NULL
);

CREATE TABLE tbl_paciente_bkp(
cod_paciente INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nome_paciente VARCHAR(500) NOT NULL,
telefone_paciente VARCHAR(10),
celular_paciente VARCHAR(11) NOT NULL,
email_paciente VARCHAR(100) NOT NULL,
nome_responsavel VARCHAR(500) NOT NULL,
telefone_responsavel VARCHAR(11) NOT NULL,
date_delete datetime
);

#CRIAÇÃO DA TABELA MÉDICO
CREATE TABLE tbl_medico(
cod_medico INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
cod_especialidade INT UNSIGNED NOT NULL,
nome_medico VARCHAR(500) NOT NULL,
telefone_medico VARCHAR(10),
celular_medico VARCHAR(11) NOT NULL,
email_medico VARCHAR(100) NOT NULL
);

#CRIAÇÃO DA TABELA INSUMOS
CREATE TABLE tbl_insumos(
cod_insumos INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
cod_paciente INT UNSIGNED NOT NULL,
nome_insumo VARCHAR(100) NOT NULL,
quantidade_insumo DECIMAL(10,2)
);

#CRIAÇÃO DA TABELA SALA
CREATE TABLE tbl_sala(
cod_sala INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
cod_especialidade INT UNSIGNED NOT NULL,
nro_sala VARCHAR(10) NOT NULL
);

#CRIAÇÃO DA TABELA AGENDA
CREATE TABLE tbl_agenda(
cod_agenda INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
cod_sala INT UNSIGNED NOT NULL,
cod_medico INT UNSIGNED NOT NULL,
cod_paciente INT UNSIGNED NOT NULL,
data_cirurgia VARCHAR(10) NOT NULL,
status_cirurgia ENUM('AGENDADO', 'CONCLUÍDO', 'CANCELADO')
);