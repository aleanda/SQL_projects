/*
Scenario: Dobbiamo pulire il database. Alcuni clienti si sono registrati online senza inserire 
la loro città di residenza.
Richiesta: Scrivi una query che restituisca l'id_cliente e il nome_cognome di tutti i clienti per i quali 
il campo citta è vuoto.
*/

SELECT id_cliente, nome_cognome
FROM CLIENTI
WHERE citta IS NULL;
