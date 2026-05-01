/*
Dobbiamo verificare quali polizze sono potenzialmente molto profittevoli e non hanno mai avuto incidenti.
Richiesta: Scrivi una query che restituisca l'id_polizza e il premio_annuo di tutte le polizze 
che non hanno nessun sinistro associato nella tabella Sinistri.
*/

SELECT P.id_polizza, P.premio_annuo
FROM POLIZZE P
LEFT JOIN SINISTRI S ON P.id_polizza = S.id_polizza
WHERE S.id_sinistro IS NULL;
