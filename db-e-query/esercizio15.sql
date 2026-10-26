SELECT l.Titolo
FROM Libri l JOIN Scrittura s ON l.CodLibro = s.CodLibro
            JOIN Autori a ON s.CodAutore = a.CodAutore
GROUP BY l.Titolo
HAVING count(*) = (
    SELECT MAX(counter)
    FROM(SELECT count(*) AS counter
        FROM Libri l JOIN Scrittura s ON l.CodLibro = s.CodLibro
                    JOIN Autori a ON s.CodAutore = a.CodAutore
                    GROUP BY l.Titolo) AS T
)
ORDER BY l.Titolo