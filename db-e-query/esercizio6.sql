SELECT DISTINCT l.Titolo
FROM Libri l JOIN Prestiti p ON l.CodLibro = p.CodLibro
WHERE DataFine IS NULL
ORDER BY l.Titolo