/*
Scenario: Il customer care deve contattare i clienti che hanno stipulato di recente una polizza per dar loro il benvenuto.
Richiesta: Scrivi una query che estragga il nome_cognome del cliente e il tipo_copertura della polizza che ha acquistato. 
Considera solo le polizze stipulate a partire dal 1 Gennaio 2024.
*/

SELECT C.nome_cognome, P.tipo_copertura
FROM CLIENTI C
JOIN POLIZZE P ON C.id_cliente = P.id_cliente
WHERE P.data_stipula >= '2024-01-01';
