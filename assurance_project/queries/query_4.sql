/*
Scenario: Il responsabile della liquidazione vuole capire il carico di lavoro del suo ufficio.
Richiesta: Utilizzando la tabella Sinistri, mostra ogni stato_sinistro e il numero totale di sinistri 
che si trovano attualmente in quello stato.
*/

SELECT stato_sinistro, COUNT(*) AS totale_sinistri
FROM SINISTRI
GROUP BY stato_sinistro;
