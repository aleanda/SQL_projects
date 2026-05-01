/*
Scenario: La direzione vuole sapere quante polizze sono state vendute l'anno scorso e quanto hanno generato.
Richiesta: Lavorando sulla tabella Polizze, scrivi una query che calcoli il numero totale di polizze 
e la somma totale dei premi annui. Filtra i dati in modo da considerare solo le polizze stipulate tra il 
1 Gennaio 2023 e il 31 Dicembre 2023 (compresi).
*/

SELECT COUNT(*) AS numero_polizze, SUM(premio_annuo) AS totale_generato
FROM POLIZZE
WHERE data_stipula >='2023-01-01' AND data_stipula <= '2023-12-31';
