-- Esercizio 15
-- Trovare il titolo del libro (o dei libri, in caso di parità) con il maggior
-- numero di autori.
-- Ordinare il risultato per Titolo (crescente).
--
-- Si raggruppa per CodLibro (e non solo per Titolo) perché due libri diversi
-- potrebbero avere lo stesso titolo.

SELECT l.Titolo
FROM Libri l
     JOIN Scrittura s ON s.CodLibro = l.CodLibro
GROUP BY l.CodLibro, l.Titolo
HAVING COUNT(*) = (
    SELECT MAX(NumAutori)
    FROM (
        SELECT COUNT(*) AS NumAutori
        FROM Scrittura
        GROUP BY CodLibro
    ) AS T
)
ORDER BY l.Titolo;
