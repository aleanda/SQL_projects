/*
Scenario: Vogliamo una tabella riassuntiva che, per ogni tipo di copertura assicurativa, 
ci dica quanti soldi abbiamo incassato e quanti danni abbiamo dovuto pagare.
Richiesta: Scrivi una query che mostri:
	- Il tipo_copertura (dalla tabella Polizze).
	- La somma totale del premio_annuo.
	- La somma totale dell'importo_danno. Considera per questa somma solo i sinistri con stato 'Pagato'.
Raggruppa tutto per tipo_copertura.
*/

SELECT P.tipo_copertura, SUM(P.premio_annuo) AS totale_incassato,
    SUM(
		CASE
			WHEN S.stato_sinistro = 'Pagato'
				THEN S.importo_danno
			ELSE 0
		END
    ) AS totale_danni_pagati
FROM POLIZZE P
LEFT JOIN SINISTRI S ON P.id_polizza = S.id_polizza
GROUP BY P.tipo_copertura;
