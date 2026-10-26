SELECT CodLibro, CodUtente, DataInizio
FROM Prestiti
WHERE DataFine is NULL
ORDER BY CodLibro, CodUtente
