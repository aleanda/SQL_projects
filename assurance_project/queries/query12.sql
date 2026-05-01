/*
Scenario: Il marketing vuole lanciare una campagna per chi si è registrato al nostro portale 
ma non ha mai comprato nulla.
Richiesta: Scrivi una query che restituisca l'id_cliente e il nome_cognome di tutti i clienti che non hanno 
stipulato nessuna polizza.
*/

SELECT C.id_cliente, C.nome_cognome
FROM CLIENTI C
LEFT JOIN POLIZZE P ON C.id_cliente = P.id_cliente
WHERE P.id_polizza IS NULL;
