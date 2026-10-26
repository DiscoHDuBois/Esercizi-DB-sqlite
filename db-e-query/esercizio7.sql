SELECT DISTINCT u.Nome
FROM Utenti u JOIN Prestiti p ON u.CodUtente = p.CodUtente
            JOIN Libri l on l.CodLibro = p.CodLibro
WHERE Genere = 'Romanzo'
ORDER BY u.Nome