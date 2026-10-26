SELECT l.CodLibro, count(p.CodLibro) as PrestitiAperti
FROM Libri l LEFT JOIN Prestiti p ON l.CodLibro = p.CodLibro
AND p.DataFine IS NULL
GROUP BY l.CodLibro
ORDER BY l.CodLibro