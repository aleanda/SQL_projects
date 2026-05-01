/*
Scenario: Dobbiamo comunicare al reparto legale i nomi dei clienti a cui abbiamo rifiutato un risarcimento.
Richiesta: Scrivi una query che mostri il nome_cognome del cliente e l'importo_danno richiesto. 
Considera solo i sinistri che hanno come stato_sinistro = 'Respinto'.
*/

SELECT C.nome_cognome, S.importo_danno, S.stato_sinistro
FROM CLIENTI C
JOIN POLIZZE P ON C.id_cliente = P.id_cliente
LEFT JOIN SINISTRI S ON P.id_polizza = S.id_polizza
WHERE S.stato_sinistro = 'Respinto';
