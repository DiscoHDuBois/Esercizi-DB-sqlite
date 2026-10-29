-- Esercizio 16
-- Trovare, per ogni città, il numero di utenti residenti. Mostrare solo le città
-- con almeno due utenti: Citta e il conteggio, in una colonna chiamata NumUtenti.
-- Ordinare il risultato per Citta (crescente).

SELECT Citta, COUNT(*) AS NumUtenti
FROM Utenti
GROUP BY Citta
HAVING COUNT(*) >= 2
ORDER BY Citta;
