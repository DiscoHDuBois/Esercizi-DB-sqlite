-- Esercizio 5
-- Trovare CodLibro, CodUtente e DataFine dei prestiti già restituiti.
-- Ordinare il risultato per CodLibro, poi per CodUtente, poi per DataFine (crescenti).

SELECT CodLibro, CodUtente, DataFine
FROM Prestiti
WHERE DataFine IS NOT NULL
ORDER BY CodLibro, CodUtente, DataFine;
