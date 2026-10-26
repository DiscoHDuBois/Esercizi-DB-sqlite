SELECT u.CodUtente
FROM Utenti u
WHERE NOT EXISTS(SELECT l.Genere
                FROM Libri l
                WHERE Genere = 'Saggio'
                AND NOT EXISTS(
                    SELECT *
                    FROM Prestiti p
                    WHERE p.CodLibro = l.CodLibro
                    AND p.CodUtente = u.CodUtente
                ))
ORDER BY u.CodUtente