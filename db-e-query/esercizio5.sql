SELECT CodLibro, CodUtente, DataFine
FROM Prestiti
WHERE DataFine IS NOT NULL
ORDER BY CodLibro, CodUtente, DataFine