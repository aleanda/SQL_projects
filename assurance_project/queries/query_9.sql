/*
Vogliamo identificare le polizze "a rischio", ovvero quelle in cui i danni richiesti superano i premi versati.
Richiesta: Trova gli id_polizza in cui la somma totale degli importo_danno (di qualsiasi stato) 
per quella singola polizza è maggiore del suo premio_annuo.
*/

SELECT P.id_polizza
FROM POLIZZE P
JOIN SINISTRI S ON P.id_polizza = S.id_polizza 
GROUP BY P.id_polizza, P.premio_annuo
HAVING SUM(S.importo_danno) > P.premio_annuo;
