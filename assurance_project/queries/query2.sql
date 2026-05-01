/*
Scenario: Stiamo analizzando la distribuzione geografica dei nostri assicurati nelle nostre due sedi principali 
(che, guarda caso, iniziano entrambe con la lettera M).
Richiesta: Lavorando sulla tabella Clienti, trova il nome_cognome e la citta di tutti i clienti la cui città inizia 
con la lettera 'M' (es. Messina o Milano).
*/

SELECT nome_cognome, citta
FROM CLIENTI
WHERE citta LIKE 'M%';
