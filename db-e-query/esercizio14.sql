-- Esercizio 14
-- Trovare il CodUtente (o i CodUtente, in caso di parità) degli utenti con il
-- maggior numero di prestiti ancora aperti.
-- Ordinare il risultato per CodUtente (crescente).

SELECT CodUtente
FROM Prestiti
WHERE DataFine IS NULL
GROUP BY CodUtente
HAVING COUNT(*) = (
    SELECT MAX(NumAperti)
    FROM (
        SELECT COUNT(*) AS NumAperti
        FROM Prestiti
        WHERE DataFine IS NULL
        GROUP BY CodUtente
    ) AS T
)
ORDER BY CodUtente;
