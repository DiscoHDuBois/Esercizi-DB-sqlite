-- Esercizio 12
-- Per ogni utente, trovare il numero totale di prestiti effettuati (inclusi
-- quelli già restituiti). Mostrare CodUtente e il conteggio, in una colonna
-- chiamata NumPrestiti. Per semplicità, ignorare gli utenti che non hanno
-- effettuato prestiti.
-- Ordinare il risultato per CodUtente (crescente).

SELECT CodUtente, COUNT(*) AS NumPrestiti
FROM Prestiti
GROUP BY CodUtente
ORDER BY CodUtente;
