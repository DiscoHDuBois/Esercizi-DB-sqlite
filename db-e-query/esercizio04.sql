-- Esercizio 4
-- Trovare CodLibro, CodUtente e DataInizio di tutti i prestiti ancora aperti
-- (DataFine non ancora registrata).
-- Ordinare il risultato per CodLibro e, a parità, per CodUtente (crescenti).

SELECT CodLibro, CodUtente, DataInizio
FROM Prestiti
WHERE DataFine IS NULL
ORDER BY CodLibro, CodUtente;
