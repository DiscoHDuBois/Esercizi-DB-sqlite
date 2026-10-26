SELECT CodUtente
FROM Prestiti
WHERE DataFine IS NULL
GROUP BY CodUtente
HAVING count(*) = (
    SELECT MAX(counter)
    FROM(SELECT count(*) as counter
        FROM Prestiti
        WHERE DataFine IS NULL
        GROUP BY CodUtente) as T
)
ORDER BY CodUtente