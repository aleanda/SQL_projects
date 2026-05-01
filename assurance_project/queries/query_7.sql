/*
Richiesta: Lavorando solo sulla tabella Sinistri, crea una query che mostri l'id_sinistro, 
l'importo_danno e una nuova colonna chiamata azione_riserva.
Se lo stato è 'Aperto' o 'In Valutazione', scrivi 'Accantonare fondi'.
Se lo stato è 'Pagato' o 'Respinto', scrivi 'Nessuna azione'.
*/

SELECT id_sinistro, importo_danno,
	CASE
		WHEN stato_sinistro = 'Aperto' 
OR stato_sinistro = 'In Valutazione'
			THEN 'Accantonare fondi'
		ELSE 'Nessuna azione'
	END AS azione_riserva
FROM SINISTRI;
