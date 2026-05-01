DROP DATABASE IF EXISTS assurance_db;
CREATE DATABASE assurance_db;
USE assurance_db;

-- Creazione della tabella CLIENTI
CREATE TABLE CLIENTI (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome_cognome VARCHAR(100) NOT NULL,
    citta VARCHAR(50),
    data_registrazione DATE
);

-- Creazione della tabella POLIZZE
CREATE TABLE POLIZZE (
    id_polizza INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    tipo_copertura VARCHAR(50) NOT NULL,
    premio_annuo DECIMAL(10, 2) NOT NULL,
    data_stipula DATE,
    FOREIGN KEY (id_cliente) REFERENCES CLIENTI(id_cliente)
);

-- Creazione della tabella SINISTRI
CREATE TABLE SINISTRI (
    id_sinistro INT AUTO_INCREMENT PRIMARY KEY,
    id_polizza INT,
    importo_danno DECIMAL(10, 2) NOT NULL,
    stato_sinistro VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_polizza) REFERENCES POLIZZE(id_polizza)
);
