/*
Il management vuole sapere quanto stanno costando i sinistri per ogni tipologia di prodotto assicurativo.
Richiesta: Scrivi una query che mostri il tipo_copertura e la somma totale degli importo_danno associati. 
Prendi in considerazione solo i sinistri con stato 'Pagato'.
*/

SELECT P.tipo_copertura, SUM(S.importo_danno) AS totale_richiesto
FROM SINISTRI S
JOIN POLIZZE P ON S.id_polizza = P.id_polizza
WHERE S.stato_sinistro = 'Pagato'
GROUP BY P.tipo_copertura;
