SELECT distinct a.Nome
FROM Autori a JOIN Scrittura s ON a.CodAutore = s.CodAutore
            JOIN Prestiti p ON s.CodLibro = p.CodLibro
            JOIN Utenti u ON p.CodUtente = u.CodUtente
WHERE Citta = 'Milano'
ORDER BY a.Nome
