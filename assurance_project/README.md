# 🛡️ Insurance Data Analytics - SQL Portfolio Project

## 📌 Project Overview
This project simulates a relational database for a fictitious insurance company. It was designed to demonstrate practical SQL querying skills applied to real-world business scenarios, such as customer portfolio management, claim analysis, and financial reporting.

## 🏗️ Database Architecture
The database (`assurance_db`) is built on a simple yet robust schema consisting of three main tables with established foreign key relationships:
*   **CLIENTI (Customers):** Stores demographic data and registration dates.
*   **POLIZZE (Policies):** Contains policy details, annual premiums, and links to the customer.
*   **SINISTRI (Claims):** Tracks insurance claims, requested damage amounts, and current claim status.

## 🚀 Key SQL Competencies Demonstrated
The `assurance_project.sql` script includes both the DDL/DML setup and a series of business-driven queries that showcase the following skills:
*   **Database Design:** `AUTO_INCREMENT` primary keys, relational integrity (`FOREIGN KEY`), and `NOT NULL` constraints.
*   **Data Manipulation:** Bulk data insertion simulating edge cases (inactive customers, policies with zero claims, missing geographic data).
*   **Advanced Querying:**
    *   **Multi-table JOINs:** Navigating the schema using `INNER JOIN` and `LEFT JOIN`.
    *   **Conditional Aggregations:** Utilizing `SUM(CASE WHEN...)` to build financial summary dashboards without losing the underlying data granularity.
    *   **Set Differences (Anti-Join):** Identifying inactive segments (e.g., registered users with no active policies) using `IS NULL` filtering on joined tables.
    *   **Data Grouping & Filtering:** Mastering `GROUP BY` and `HAVING` clauses for aggregate reporting.

## 🛠️ How to Use
1. Clone the repository.
2. Open `assurance_project.sql` in MySQL Workbench (or any MySQL-compatible IDE).
3. Execute the entire script to generate the schema, populate the mock data, and run the analytical queries.

# 🛡️ Insurance Data Analytics - Progetto SQL

## 📌 Panoramica del Progetto
Questo progetto simula il database relazionale di una compagnia assicurativa fittizia. È stato sviluppato per dimostrare competenze pratiche nell'interrogazione SQL applicate a scenari di business reali, come la gestione del portafoglio clienti, l'analisi dei sinistri e la reportistica finanziaria.

## 🏗️ Architettura del Database
Il database (`assurance_db`) è costruito su uno schema solido composto da tre tabelle principali, collegate tra loro tramite vincoli di integrità relazionale:
*   **CLIENTI:** Contiene i dati anagrafici e le date di registrazione.
*   **POLIZZE:** Archivia i dettagli delle coperture, i premi annui e i collegamenti ai clienti.
*   **SINISTRI:** Traccia gli incidenti dichiarati, gli importi richiesti e lo stato di lavorazione della pratica.

## 🚀 Competenze Tecniche Dimostrate
Lo script `assurance_project.sql` include la creazione strutturale (DDL), il popolamento dei dati (DML) e una serie di query orientate al business che mettono in luce le seguenti capacità:
*   **Database Design:** Utilizzo di chiavi primarie in `AUTO_INCREMENT`, vincoli `NOT NULL` e `FOREIGN KEY`.
*   **Manipolazione Dati:** Inserimento di dataset massivi comprensivi di "casi limite" (es. clienti inattivi, campi nulli geografici, polizze a zero sinistri).
*   **Data Analysis & SQL Avanzato:**
    *   **JOIN Complesse:** Navigazione tra le entità utilizzando `INNER JOIN` e `LEFT JOIN`.
    *   **Aggregazioni Condizionali:** Utilizzo del costrutto `SUM(CASE WHEN...)` per costruire cruscotti finanziari senza perdere la granularità dei dati di partenza.
    *   **Anti-Join:** Identificazione di segmenti specifici (es. utenti registrati senza polizze attive) sfruttando il filtraggio `IS NULL` sulle unioni.
    *   **Filtri e Raggruppamenti:** Padronanza delle clausole `GROUP BY` e `HAVING` per la reportistica aggregata.

## 🛠️ Come Utilizzare il Progetto
1. Clona questo repository.
2. Apri il file `assurance_project.sql` in MySQL Workbench (o in qualsiasi IDE compatibile).
3. Esegui l'intero script per generare lo schema, caricare i dati fittizi e testare le query di analisi.
